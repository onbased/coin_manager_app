// import 'package:json_annotation/json_annotation.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:ui';

import 'package:http/http.dart';

part 'money.g.dart';

// @JsonSerializable()
class Currency {
  final String code;
  final String symbol;
  final DateTime date;

  Money get zero => Money(0, this);

  Currency(this.code, {this.symbol, DateTime dateTime})
      : date = _truncateToDate(dateTime);

  @override
  String toString() => code;

  @override
  bool operator ==(dynamic other) => code == other.code && date == other.date;

  @override
  int get hashCode => hashValues(code, date);

  /// Exchange rates

  double getExchangeRate(Currency target) {
    if (this == target) return 1;

    return _getBestBaseExchangeRate(target) / _getBestBaseExchangeRate(this);
  }

  static Completer<void> _exchangeRatesCompleter;
  static Future<void> get exchangeRatesLoaded async {
    if (!areExchangeRatesLoaded) return initExchangeRates();
  }

  static bool get areExchangeRatesLoaded =>
      _exchangeRatesCompleter?.isCompleted ?? false;

  static List<String> _reversedDates = [];
  static List<String> _getExchangeRateHistoryDatesDesc() {
    if (_reversedDates.length == historicalExchangeRates.length)
      return _reversedDates;

    return _reversedDates = historicalExchangeRates.keys.toList()
      ..sort((d1, d2) => -1 * d1.compareTo(d2));
  }

  static double _getBestBaseExchangeRate(Currency currency) {
    if (currency.code == _baseCurrency) return 1;

    DateTime dateTime = currency.date ?? DateTime.now().toUtc();
    Map<String, double> rates =
        historicalExchangeRates[_toHistoryKey(dateTime)];
    if (rates == null) {
      initExchangeRates();
      rates = historicalExchangeRates[_getExchangeRateHistoryDatesDesc().first];
    }

    return rates[currency.code];
  }

  static const String _baseCurrency = 'EUR';
  // Future<void> _scheduledInit;
  // DateTime _lastInit;
  static Future<void> initExchangeRates() async {
    if (_exchangeRatesCompleter != null &&
        !_exchangeRatesCompleter.isCompleted) // in progress
      return _exchangeRatesCompleter.future;

    DateTime now = DateTime.now();

    // if (_lastInit != null && )

    _exchangeRatesCompleter = Completer<void>();
    try {
      String lastHistoricalDate = _getExchangeRateHistoryDatesDesc().first;
      Client httpClient = Client();
      Response response = await httpClient.get(
          'https://api.exchangeratesapi.io/history?start_at=$lastHistoricalDate&end_at=${_toHistoryKey(now)}');

      Map<String, dynamic> responseJson =
          jsonDecode(response.body) as Map<String, dynamic>;
      (responseJson['rates'] as Map<String, dynamic>)
          .forEach((date, dynamic rates) {
        historicalExchangeRates[date] = (rates as Map<String, dynamic>).map(
            (currency, dynamic rate) =>
                MapEntry(currency, (rate as num).toDouble()));
      });

      _exchangeRatesCompleter.complete();
    } on Exception catch (e, st) {
      _exchangeRatesCompleter.completeError(e, st);
    }

    return _exchangeRatesCompleter.future;
  }

  /// DateTime helpers

  static DateTime _truncateToDate(DateTime dateTime) {
    if (dateTime == null) return null;

    DateTime utcDate = dateTime.toUtc();
    return DateTime(utcDate.year, utcDate.month, utcDate.day).toUtc();
  }

  static String _toHistoryKey(DateTime dateTime) =>
      '${dateTime.year}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}';

  /// Serialization

  // factory Currency.fromJson(Map<String, dynamic> json) =>
  //     _$CurrencyFromJson(json);
  // Map<String, dynamic> toJson() => _$CurrencyToJson(this);
}

// @JsonSerializable()
class Money {
  Currency currency;
  double amount;

  Money(this.amount, this.currency);

  double convertAmountTo(Currency target) =>
      currency.getExchangeRate(target) * amount;
  Money convertTo(Currency target) => Money(convertAmountTo(target), target);

  Money asFixed(int digits) =>
      Money(double.parse(amount.toStringAsFixed(digits)), currency);
  Money round() => Money(amount.roundToDouble(), currency);
  Money truncate() => Money(amount.truncateToDouble(), currency);

  Money operator +(Money other) =>
      Money(amount + other.convertAmountTo(currency), currency);
  Money operator -(Money other) =>
      Money(amount - other.convertAmountTo(currency), currency);

  Money operator *(num value) => Money(amount * value, currency);
  Money operator /(num value) => Money(amount / value, currency);

  bool operator <(Money other) => amount < other.convertAmountTo(currency);
  bool operator <=(Money other) => amount <= other.convertAmountTo(currency);
  bool operator >(Money other) => amount > other.convertAmountTo(currency);
  bool operator >=(Money other) => amount >= other.convertAmountTo(currency);

  @override
  bool operator ==(covariant Money other) =>
      currency == other.currency && amount == other.amount;

  @override
  int get hashCode => currency.hashCode & amount.hashCode;

  @override
  String toString() => "$amount ${currency.symbol ?? currency.code}";

  // factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);
  // Map<String, dynamic> toJson() => _$MoneyToJson(this);
}

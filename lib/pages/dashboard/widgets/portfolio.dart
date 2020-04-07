import 'dart:async';

import 'package:coin_manager/api/api.dart';
import 'package:coin_manager/imports.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

class PortfolioWidget extends StatefulWidget {
  PortfolioWidget({Key key}) : super(key: key);

  @override
  _PortfolioWidgetController createState() => _PortfolioWidgetController();
}

class Portfolio {
  List<TradeList> details = [];

  Money get totalValue => details.fold(
      Currency('USD').zero, (sum, list) => sum + list.total.totalValue);
  // int get tradeCount => details.fold(
  //     0, (sum, list) => sum + list.trades.length + 1); // +1 for total
}

class TradeList {
  Portfolio portfolio;
  TradeList(this.portfolio);

  Trade total;
  List<Trade> trades = [];
}

class Trade {
  TradeList tradeList;
  bool get isTotal => identical(tradeList.total, this);
  Trade(this.tradeList);

  DateTime at;
  Money coin;
  Money unitPrice;
  Money fee;
  Money get profit => isTotal
      ? tradeList.trades
          .fold(Currency('USD').zero, (sum, trade) => sum + trade.profit)
      : Money(
          tradeList.total.unitPrice.amount * coin.amount -
              unitPrice.amount * coin.amount -
              fee.amount,
          tradeList.total.unitPrice.currency);

  double get profitPercent => isTotal
      ? tradeList.trades
              .fold<double>(0, (sum, trade) => sum + trade.profitPercent) /
          tradeList.trades.length
      : profit.amount / totalValue.amount;
  Money get totalValue => unitPrice * coin.amount;
  double get totalPercent =>
      totalValue.amount / tradeList.portfolio.totalValue.amount;
}

class _PortfolioWidgetController extends State<PortfolioWidget> {
  Future<Portfolio> portfolio;

  @override
  void initState() {
    super.initState();

    portfolio =
        Future.wait([TradeApi().openTrades(-4)]).then(mergeAccountOrders);
  }

  Future<Portfolio> mergeAccountOrders(
      List<AccountOrders> accountOrders) async {
    Portfolio portfolio = Portfolio();
    Map<String, TradeList> pDetails = {};

    for (AccountOrders accountOrder in accountOrders) {
      // balances: sum amount of coins
      accountOrder.balances.forEach((code, amount) {
        pDetails[code] ??= TradeList(portfolio);
        pDetails[code].total ??= Trade(pDetails[code]);
        pDetails[code].total.coin ??= Currency(code).zero;

        pDetails[code].total.coin.amount += amount;
      });

      // prices: use the first price for each coin type
      accountOrder.prices.forEach((code, value) {
        pDetails[code] ??= TradeList(portfolio);
        pDetails[code].total ??= Trade(pDetails[code]);
        pDetails[code].total.unitPrice ??=
            Money(value.toDouble(), Currency('USD'));
      });

      // collect trades
      accountOrder.trades.forEach((code, orders) {
        pDetails[code] ??= TradeList(portfolio);

        for (Order order in orders) {
          Trade trade = Trade(pDetails[code])
            ..at = DateTime.fromMillisecondsSinceEpoch(order.at * 1000,
                isUtc: true)
            ..coin = Money(order.amount.toDouble(), Currency(code));
          trade
            ..unitPrice = Money(order.price[order.price.keys.first].toDouble(),
                Currency(order.price.keys.first, dateTime: trade.at))
            ..fee = Money(order.fees[2].toDouble(), trade.unitPrice.currency);

          pDetails[code].trades.add(trade);
        }

        pDetails[code].trades.sort((t1, t2) => t1.at.compareTo(t2.at));
      });
    }

    portfolio.details = pDetails.values.toList()
      ..sort((tl1, tl2) =>
          tl1.total.coin.currency.code.compareTo(tl2.total.coin.currency.code));
    return portfolio;
  }

  @override
  Widget build(BuildContext context) => _PortfolioWidgetView(this);
}

class _PortfolioWidgetView
    extends StatefulView<PortfolioWidget, _PortfolioWidgetController> {
  _PortfolioWidgetView(_PortfolioWidgetController state) : super(state);

  static String _toShortNumber(num number, [String suffix = '']) {
    if (!number.isFinite) return '';

    String result;
    String sign = number < 0 ? '-' : '';
    num absValue = number.abs();

    if (absValue < 1)
      result = absValue.toStringAsFixed(2);
    else if (absValue < 1000)
      result = absValue.round().toString();
    else if (absValue < 1000000)
      result = "${(absValue / 1000).toStringAsFixed(2)}K";
    else
      result = "${(absValue / 1000000).toStringAsFixed(2)}M";

    return sign + result + suffix;
  }

  static String _amountToString(double amount) => _toShortNumber(amount);
  static String _moneyToString(Money money) {
    String number = _toShortNumber(money.amount);
    return '$number${money.currency.symbol ?? '\$'}';
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: state.portfolio,
        builder: (context, snapshot) {
          Portfolio data = snapshot.data as Portfolio;

          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Text('Something went wrong');

            case ConnectionState.waiting:
            case ConnectionState.active:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              return Column(
                children: <Widget>[
                  // SfCartesianChart(
                  //   series: [1, 2],
                  // ),
                  DataTable(columns: [
                    DataColumn(label: Text("Currency")),
                    DataColumn(label: Text("Amount")),
                    DataColumn(label: Text("Price")),
                    DataColumn(label: Text("Profit")),
                    DataColumn(label: Text("Sum")),
                  ], rows: [
                    for (Trade trade in data.details
                        .expand((list) => [list.total] + list.trades))
                      DataRow(cells: [
                        DataCell(Text(trade.coin.currency.code)),
                        DataCell(Text(_amountToString(trade.coin.amount))),
                        DataCell(Text(_moneyToString(trade.unitPrice))),
                        DataCell(Row(
                          children: <Widget>[
                            Text(_moneyToString(trade.profit)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(_toShortNumber(trade.profitPercent, '%')),
                          ],
                        )),
                        DataCell(Row(
                          children: <Widget>[
                            Text(_moneyToString(trade.totalValue)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(_toShortNumber(trade.totalPercent, '%')),
                          ],
                        )),
                      ])
                  ]),
                ],
              );
          }

          return null;
        });
  }
}

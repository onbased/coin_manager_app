// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_orders.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AccountOrders> _$accountOrdersSerializer =
    new _$AccountOrdersSerializer();

class _$AccountOrdersSerializer implements StructuredSerializer<AccountOrders> {
  @override
  final Iterable<Type> types = const [AccountOrders, _$AccountOrders];
  @override
  final String wireName = 'AccountOrders';

  @override
  Iterable<Object> serialize(Serializers serializers, AccountOrders object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.balances != null) {
      result
        ..add('balances')
        ..add(serializers.serialize(object.balances,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(num)])));
    }
    if (object.prices != null) {
      result
        ..add('prices')
        ..add(serializers.serialize(object.prices,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(num)])));
    }
    if (object.trades != null) {
      result
        ..add('trades')
        ..add(serializers.serialize(object.trades,
            specifiedType: const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [const FullType(Order)])
            ])));
    }
    if (object.marginTrades != null) {
      result
        ..add('marginTrades')
        ..add(serializers.serialize(object.marginTrades,
            specifiedType: const FullType(BuiltMap, const [
              const FullType(String),
              const FullType(BuiltList, const [const FullType(Order)])
            ])));
    }
    if (object.fundSum != null) {
      result
        ..add('fundSum')
        ..add(serializers.serialize(object.fundSum,
            specifiedType: const FullType(num)));
    }
    if (object.msgs != null) {
      result
        ..add('msgs')
        ..add(serializers.serialize(object.msgs,
            specifiedType: const FullType(Messages)));
    }
    return result;
  }

  @override
  AccountOrders deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountOrdersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'balances':
          result.balances.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(num)])));
          break;
        case 'prices':
          result.prices.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(num)])));
          break;
        case 'trades':
          result.trades.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(BuiltList, const [const FullType(Order)])
              ])));
          break;
        case 'marginTrades':
          result.marginTrades.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(BuiltList, const [const FullType(Order)])
              ])));
          break;
        case 'fundSum':
          result.fundSum = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'msgs':
          result.msgs.replace(serializers.deserialize(value,
              specifiedType: const FullType(Messages)) as Messages);
          break;
      }
    }

    return result.build();
  }
}

class _$AccountOrders extends AccountOrders {
  @override
  final BuiltMap<String, num> balances;
  @override
  final BuiltMap<String, num> prices;
  @override
  final BuiltMap<String, BuiltList<Order>> trades;
  @override
  final BuiltMap<String, BuiltList<Order>> marginTrades;
  @override
  final num fundSum;
  @override
  final Messages msgs;

  factory _$AccountOrders([void Function(AccountOrdersBuilder) updates]) =>
      (new AccountOrdersBuilder()..update(updates)).build();

  _$AccountOrders._(
      {this.balances,
      this.prices,
      this.trades,
      this.marginTrades,
      this.fundSum,
      this.msgs})
      : super._();

  @override
  AccountOrders rebuild(void Function(AccountOrdersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountOrdersBuilder toBuilder() => new AccountOrdersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountOrders &&
        balances == other.balances &&
        prices == other.prices &&
        trades == other.trades &&
        marginTrades == other.marginTrades &&
        fundSum == other.fundSum &&
        msgs == other.msgs;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, balances.hashCode), prices.hashCode),
                    trades.hashCode),
                marginTrades.hashCode),
            fundSum.hashCode),
        msgs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountOrders')
          ..add('balances', balances)
          ..add('prices', prices)
          ..add('trades', trades)
          ..add('marginTrades', marginTrades)
          ..add('fundSum', fundSum)
          ..add('msgs', msgs))
        .toString();
  }
}

class AccountOrdersBuilder
    implements Builder<AccountOrders, AccountOrdersBuilder> {
  _$AccountOrders _$v;

  MapBuilder<String, num> _balances;
  MapBuilder<String, num> get balances =>
      _$this._balances ??= new MapBuilder<String, num>();
  set balances(MapBuilder<String, num> balances) => _$this._balances = balances;

  MapBuilder<String, num> _prices;
  MapBuilder<String, num> get prices =>
      _$this._prices ??= new MapBuilder<String, num>();
  set prices(MapBuilder<String, num> prices) => _$this._prices = prices;

  MapBuilder<String, BuiltList<Order>> _trades;
  MapBuilder<String, BuiltList<Order>> get trades =>
      _$this._trades ??= new MapBuilder<String, BuiltList<Order>>();
  set trades(MapBuilder<String, BuiltList<Order>> trades) =>
      _$this._trades = trades;

  MapBuilder<String, BuiltList<Order>> _marginTrades;
  MapBuilder<String, BuiltList<Order>> get marginTrades =>
      _$this._marginTrades ??= new MapBuilder<String, BuiltList<Order>>();
  set marginTrades(MapBuilder<String, BuiltList<Order>> marginTrades) =>
      _$this._marginTrades = marginTrades;

  num _fundSum;
  num get fundSum => _$this._fundSum;
  set fundSum(num fundSum) => _$this._fundSum = fundSum;

  MessagesBuilder _msgs;
  MessagesBuilder get msgs => _$this._msgs ??= new MessagesBuilder();
  set msgs(MessagesBuilder msgs) => _$this._msgs = msgs;

  AccountOrdersBuilder();

  AccountOrdersBuilder get _$this {
    if (_$v != null) {
      _balances = _$v.balances?.toBuilder();
      _prices = _$v.prices?.toBuilder();
      _trades = _$v.trades?.toBuilder();
      _marginTrades = _$v.marginTrades?.toBuilder();
      _fundSum = _$v.fundSum;
      _msgs = _$v.msgs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountOrders other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AccountOrders;
  }

  @override
  void update(void Function(AccountOrdersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountOrders build() {
    _$AccountOrders _$result;
    try {
      _$result = _$v ??
          new _$AccountOrders._(
              balances: _balances?.build(),
              prices: _prices?.build(),
              trades: _trades?.build(),
              marginTrades: _marginTrades?.build(),
              fundSum: fundSum,
              msgs: _msgs?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'balances';
        _balances?.build();
        _$failedField = 'prices';
        _prices?.build();
        _$failedField = 'trades';
        _trades?.build();
        _$failedField = 'marginTrades';
        _marginTrades?.build();

        _$failedField = 'msgs';
        _msgs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AccountOrders', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

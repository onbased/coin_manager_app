// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Order> _$orderSerializer = new _$OrderSerializer();

class _$OrderSerializer implements StructuredSerializer<Order> {
  @override
  final Iterable<Type> types = const [Order, _$Order];
  @override
  final String wireName = 'Order';

  @override
  Iterable<Object> serialize(Serializers serializers, Order object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.at != null) {
      result
        ..add('at')
        ..add(serializers.serialize(object.at,
            specifiedType: const FullType(int)));
    }
    if (object.amount != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(object.amount,
            specifiedType: const FullType(num)));
    }
    if (object.fees != null) {
      result
        ..add('fees')
        ..add(serializers.serialize(object.fees,
            specifiedType:
                const FullType(BuiltList, const [const FullType(num)])));
    }
    if (object.price != null) {
      result
        ..add('price')
        ..add(serializers.serialize(object.price,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(num)])));
    }
    return result;
  }

  @override
  Order deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'at':
          result.at = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'fees':
          result.fees.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(num)]))
              as BuiltList<Object>);
          break;
        case 'price':
          result.price.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(num)])));
          break;
      }
    }

    return result.build();
  }
}

class _$Order extends Order {
  @override
  final int at;
  @override
  final num amount;
  @override
  final BuiltList<num> fees;
  @override
  final BuiltMap<String, num> price;

  factory _$Order([void Function(OrderBuilder) updates]) =>
      (new OrderBuilder()..update(updates)).build();

  _$Order._({this.at, this.amount, this.fees, this.price}) : super._();

  @override
  Order rebuild(void Function(OrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderBuilder toBuilder() => new OrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
        at == other.at &&
        amount == other.amount &&
        fees == other.fees &&
        price == other.price;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, at.hashCode), amount.hashCode), fees.hashCode),
        price.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Order')
          ..add('at', at)
          ..add('amount', amount)
          ..add('fees', fees)
          ..add('price', price))
        .toString();
  }
}

class OrderBuilder implements Builder<Order, OrderBuilder> {
  _$Order _$v;

  int _at;
  int get at => _$this._at;
  set at(int at) => _$this._at = at;

  num _amount;
  num get amount => _$this._amount;
  set amount(num amount) => _$this._amount = amount;

  ListBuilder<num> _fees;
  ListBuilder<num> get fees => _$this._fees ??= new ListBuilder<num>();
  set fees(ListBuilder<num> fees) => _$this._fees = fees;

  MapBuilder<String, num> _price;
  MapBuilder<String, num> get price =>
      _$this._price ??= new MapBuilder<String, num>();
  set price(MapBuilder<String, num> price) => _$this._price = price;

  OrderBuilder();

  OrderBuilder get _$this {
    if (_$v != null) {
      _at = _$v.at;
      _amount = _$v.amount;
      _fees = _$v.fees?.toBuilder();
      _price = _$v.price?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Order other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Order;
  }

  @override
  void update(void Function(OrderBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Order build() {
    _$Order _$result;
    try {
      _$result = _$v ??
          new _$Order._(
              at: at,
              amount: amount,
              fees: _fees?.build(),
              price: _price?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'fees';
        _fees?.build();
        _$failedField = 'price';
        _price?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Order', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

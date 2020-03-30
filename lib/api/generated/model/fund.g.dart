// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fund.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Fund> _$fundSerializer = new _$FundSerializer();

class _$FundSerializer implements StructuredSerializer<Fund> {
  @override
  final Iterable<Type> types = const [Fund, _$Fund];
  @override
  final String wireName = 'Fund';

  @override
  Iterable<Object> serialize(Serializers serializers, Fund object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.accId != null) {
      result
        ..add('accId')
        ..add(serializers.serialize(object.accId,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.asset != null) {
      result
        ..add('asset')
        ..add(serializers.serialize(object.asset,
            specifiedType: const FullType(String)));
    }
    if (object.amount != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(object.amount,
            specifiedType: const FullType(num)));
    }
    if (object.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(num)));
    }
    if (object.at != null) {
      result
        ..add('at')
        ..add(serializers.serialize(object.at,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Fund deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FundBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'accId':
          result.accId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'asset':
          result.asset = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'at':
          result.at = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$Fund extends Fund {
  @override
  final int accId;
  @override
  final int id;
  @override
  final String asset;
  @override
  final num amount;
  @override
  final num value;
  @override
  final int at;

  factory _$Fund([void Function(FundBuilder) updates]) =>
      (new FundBuilder()..update(updates)).build();

  _$Fund._({this.accId, this.id, this.asset, this.amount, this.value, this.at})
      : super._();

  @override
  Fund rebuild(void Function(FundBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FundBuilder toBuilder() => new FundBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Fund &&
        accId == other.accId &&
        id == other.id &&
        asset == other.asset &&
        amount == other.amount &&
        value == other.value &&
        at == other.at;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, accId.hashCode), id.hashCode), asset.hashCode),
                amount.hashCode),
            value.hashCode),
        at.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Fund')
          ..add('accId', accId)
          ..add('id', id)
          ..add('asset', asset)
          ..add('amount', amount)
          ..add('value', value)
          ..add('at', at))
        .toString();
  }
}

class FundBuilder implements Builder<Fund, FundBuilder> {
  _$Fund _$v;

  int _accId;
  int get accId => _$this._accId;
  set accId(int accId) => _$this._accId = accId;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _asset;
  String get asset => _$this._asset;
  set asset(String asset) => _$this._asset = asset;

  num _amount;
  num get amount => _$this._amount;
  set amount(num amount) => _$this._amount = amount;

  num _value;
  num get value => _$this._value;
  set value(num value) => _$this._value = value;

  int _at;
  int get at => _$this._at;
  set at(int at) => _$this._at = at;

  FundBuilder();

  FundBuilder get _$this {
    if (_$v != null) {
      _accId = _$v.accId;
      _id = _$v.id;
      _asset = _$v.asset;
      _amount = _$v.amount;
      _value = _$v.value;
      _at = _$v.at;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Fund other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Fund;
  }

  @override
  void update(void Function(FundBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Fund build() {
    final _$result = _$v ??
        new _$Fund._(
            accId: accId,
            id: id,
            asset: asset,
            amount: amount,
            value: value,
            at: at);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

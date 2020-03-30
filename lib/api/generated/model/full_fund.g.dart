// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'full_fund.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FullFund> _$fullFundSerializer = new _$FullFundSerializer();

class _$FullFundSerializer implements StructuredSerializer<FullFund> {
  @override
  final Iterable<Type> types = const [FullFund, _$FullFund];
  @override
  final String wireName = 'FullFund';

  @override
  Iterable<Object> serialize(Serializers serializers, FullFund object,
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
    if (object.typ != null) {
      result
        ..add('typ')
        ..add(serializers.serialize(object.typ,
            specifiedType: const FullType(String)));
    }
    if (object.st != null) {
      result
        ..add('st')
        ..add(serializers.serialize(object.st,
            specifiedType: const FullType(String)));
    }
    if (object.fee != null) {
      result
        ..add('fee')
        ..add(serializers.serialize(object.fee,
            specifiedType: const FullType(num)));
    }
    if (object.ooid != null) {
      result
        ..add('ooid')
        ..add(serializers.serialize(object.ooid,
            specifiedType: const FullType(num)));
    }
    return result;
  }

  @override
  FullFund deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FullFundBuilder();

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
        case 'typ':
          result.typ = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'st':
          result.st = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fee':
          result.fee = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'ooid':
          result.ooid = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
      }
    }

    return result.build();
  }
}

class _$FullFund extends FullFund {
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
  @override
  final String typ;
  @override
  final String st;
  @override
  final num fee;
  @override
  final num ooid;

  factory _$FullFund([void Function(FullFundBuilder) updates]) =>
      (new FullFundBuilder()..update(updates)).build();

  _$FullFund._(
      {this.accId,
      this.id,
      this.asset,
      this.amount,
      this.value,
      this.at,
      this.typ,
      this.st,
      this.fee,
      this.ooid})
      : super._();

  @override
  FullFund rebuild(void Function(FullFundBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FullFundBuilder toBuilder() => new FullFundBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FullFund &&
        accId == other.accId &&
        id == other.id &&
        asset == other.asset &&
        amount == other.amount &&
        value == other.value &&
        at == other.at &&
        typ == other.typ &&
        st == other.st &&
        fee == other.fee &&
        ooid == other.ooid;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, accId.hashCode), id.hashCode),
                                    asset.hashCode),
                                amount.hashCode),
                            value.hashCode),
                        at.hashCode),
                    typ.hashCode),
                st.hashCode),
            fee.hashCode),
        ooid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FullFund')
          ..add('accId', accId)
          ..add('id', id)
          ..add('asset', asset)
          ..add('amount', amount)
          ..add('value', value)
          ..add('at', at)
          ..add('typ', typ)
          ..add('st', st)
          ..add('fee', fee)
          ..add('ooid', ooid))
        .toString();
  }
}

class FullFundBuilder implements Builder<FullFund, FullFundBuilder> {
  _$FullFund _$v;

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

  String _typ;
  String get typ => _$this._typ;
  set typ(String typ) => _$this._typ = typ;

  String _st;
  String get st => _$this._st;
  set st(String st) => _$this._st = st;

  num _fee;
  num get fee => _$this._fee;
  set fee(num fee) => _$this._fee = fee;

  num _ooid;
  num get ooid => _$this._ooid;
  set ooid(num ooid) => _$this._ooid = ooid;

  FullFundBuilder();

  FullFundBuilder get _$this {
    if (_$v != null) {
      _accId = _$v.accId;
      _id = _$v.id;
      _asset = _$v.asset;
      _amount = _$v.amount;
      _value = _$v.value;
      _at = _$v.at;
      _typ = _$v.typ;
      _st = _$v.st;
      _fee = _$v.fee;
      _ooid = _$v.ooid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FullFund other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FullFund;
  }

  @override
  void update(void Function(FullFundBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FullFund build() {
    final _$result = _$v ??
        new _$FullFund._(
            accId: accId,
            id: id,
            asset: asset,
            amount: amount,
            value: value,
            at: at,
            typ: typ,
            st: st,
            fee: fee,
            ooid: ooid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

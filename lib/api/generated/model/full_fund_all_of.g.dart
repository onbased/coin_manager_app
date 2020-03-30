// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'full_fund_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FullFundAllOf> _$fullFundAllOfSerializer =
    new _$FullFundAllOfSerializer();

class _$FullFundAllOfSerializer implements StructuredSerializer<FullFundAllOf> {
  @override
  final Iterable<Type> types = const [FullFundAllOf, _$FullFundAllOf];
  @override
  final String wireName = 'FullFundAllOf';

  @override
  Iterable<Object> serialize(Serializers serializers, FullFundAllOf object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
  FullFundAllOf deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FullFundAllOfBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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

class _$FullFundAllOf extends FullFundAllOf {
  @override
  final String typ;
  @override
  final String st;
  @override
  final num fee;
  @override
  final num ooid;

  factory _$FullFundAllOf([void Function(FullFundAllOfBuilder) updates]) =>
      (new FullFundAllOfBuilder()..update(updates)).build();

  _$FullFundAllOf._({this.typ, this.st, this.fee, this.ooid}) : super._();

  @override
  FullFundAllOf rebuild(void Function(FullFundAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FullFundAllOfBuilder toBuilder() => new FullFundAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FullFundAllOf &&
        typ == other.typ &&
        st == other.st &&
        fee == other.fee &&
        ooid == other.ooid;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, typ.hashCode), st.hashCode), fee.hashCode),
        ooid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FullFundAllOf')
          ..add('typ', typ)
          ..add('st', st)
          ..add('fee', fee)
          ..add('ooid', ooid))
        .toString();
  }
}

class FullFundAllOfBuilder
    implements Builder<FullFundAllOf, FullFundAllOfBuilder> {
  _$FullFundAllOf _$v;

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

  FullFundAllOfBuilder();

  FullFundAllOfBuilder get _$this {
    if (_$v != null) {
      _typ = _$v.typ;
      _st = _$v.st;
      _fee = _$v.fee;
      _ooid = _$v.ooid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FullFundAllOf other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FullFundAllOf;
  }

  @override
  void update(void Function(FullFundAllOfBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FullFundAllOf build() {
    final _$result =
        _$v ?? new _$FullFundAllOf._(typ: typ, st: st, fee: fee, ooid: ooid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

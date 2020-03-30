// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pwd_field_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PwdFieldAllOf> _$pwdFieldAllOfSerializer =
    new _$PwdFieldAllOfSerializer();

class _$PwdFieldAllOfSerializer implements StructuredSerializer<PwdFieldAllOf> {
  @override
  final Iterable<Type> types = const [PwdFieldAllOf, _$PwdFieldAllOf];
  @override
  final String wireName = 'PwdFieldAllOf';

  @override
  Iterable<Object> serialize(Serializers serializers, PwdFieldAllOf object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.specChars != null) {
      result
        ..add('specChars')
        ..add(serializers.serialize(object.specChars,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PwdFieldAllOf deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PwdFieldAllOfBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'specChars':
          result.specChars = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PwdFieldAllOf extends PwdFieldAllOf {
  @override
  final String specChars;

  factory _$PwdFieldAllOf([void Function(PwdFieldAllOfBuilder) updates]) =>
      (new PwdFieldAllOfBuilder()..update(updates)).build();

  _$PwdFieldAllOf._({this.specChars}) : super._();

  @override
  PwdFieldAllOf rebuild(void Function(PwdFieldAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PwdFieldAllOfBuilder toBuilder() => new PwdFieldAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PwdFieldAllOf && specChars == other.specChars;
  }

  @override
  int get hashCode {
    return $jf($jc(0, specChars.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PwdFieldAllOf')
          ..add('specChars', specChars))
        .toString();
  }
}

class PwdFieldAllOfBuilder
    implements Builder<PwdFieldAllOf, PwdFieldAllOfBuilder> {
  _$PwdFieldAllOf _$v;

  String _specChars;
  String get specChars => _$this._specChars;
  set specChars(String specChars) => _$this._specChars = specChars;

  PwdFieldAllOfBuilder();

  PwdFieldAllOfBuilder get _$this {
    if (_$v != null) {
      _specChars = _$v.specChars;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PwdFieldAllOf other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PwdFieldAllOf;
  }

  @override
  void update(void Function(PwdFieldAllOfBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PwdFieldAllOf build() {
    final _$result = _$v ?? new _$PwdFieldAllOf._(specChars: specChars);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

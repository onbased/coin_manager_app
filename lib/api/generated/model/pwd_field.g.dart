// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pwd_field.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PwdField> _$pwdFieldSerializer = new _$PwdFieldSerializer();

class _$PwdFieldSerializer implements StructuredSerializer<PwdField> {
  @override
  final Iterable<Type> types = const [PwdField, _$PwdField];
  @override
  final String wireName = 'PwdField';

  @override
  Iterable<Object> serialize(Serializers serializers, PwdField object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.minLen != null) {
      result
        ..add('minLen')
        ..add(serializers.serialize(object.minLen,
            specifiedType: const FullType(int)));
    }
    if (object.maxLen != null) {
      result
        ..add('maxLen')
        ..add(serializers.serialize(object.maxLen,
            specifiedType: const FullType(int)));
    }
    if (object.specChars != null) {
      result
        ..add('specChars')
        ..add(serializers.serialize(object.specChars,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PwdField deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PwdFieldBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'minLen':
          result.minLen = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'maxLen':
          result.maxLen = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'specChars':
          result.specChars = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PwdField extends PwdField {
  @override
  final int minLen;
  @override
  final int maxLen;
  @override
  final String specChars;

  factory _$PwdField([void Function(PwdFieldBuilder) updates]) =>
      (new PwdFieldBuilder()..update(updates)).build();

  _$PwdField._({this.minLen, this.maxLen, this.specChars}) : super._();

  @override
  PwdField rebuild(void Function(PwdFieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PwdFieldBuilder toBuilder() => new PwdFieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PwdField &&
        minLen == other.minLen &&
        maxLen == other.maxLen &&
        specChars == other.specChars;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, minLen.hashCode), maxLen.hashCode), specChars.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PwdField')
          ..add('minLen', minLen)
          ..add('maxLen', maxLen)
          ..add('specChars', specChars))
        .toString();
  }
}

class PwdFieldBuilder implements Builder<PwdField, PwdFieldBuilder> {
  _$PwdField _$v;

  int _minLen;
  int get minLen => _$this._minLen;
  set minLen(int minLen) => _$this._minLen = minLen;

  int _maxLen;
  int get maxLen => _$this._maxLen;
  set maxLen(int maxLen) => _$this._maxLen = maxLen;

  String _specChars;
  String get specChars => _$this._specChars;
  set specChars(String specChars) => _$this._specChars = specChars;

  PwdFieldBuilder();

  PwdFieldBuilder get _$this {
    if (_$v != null) {
      _minLen = _$v.minLen;
      _maxLen = _$v.maxLen;
      _specChars = _$v.specChars;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PwdField other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PwdField;
  }

  @override
  void update(void Function(PwdFieldBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PwdField build() {
    final _$result = _$v ??
        new _$PwdField._(minLen: minLen, maxLen: maxLen, specChars: specChars);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

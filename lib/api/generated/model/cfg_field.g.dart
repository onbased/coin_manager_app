// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cfg_field.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CfgField> _$cfgFieldSerializer = new _$CfgFieldSerializer();

class _$CfgFieldSerializer implements StructuredSerializer<CfgField> {
  @override
  final Iterable<Type> types = const [CfgField, _$CfgField];
  @override
  final String wireName = 'CfgField';

  @override
  Iterable<Object> serialize(Serializers serializers, CfgField object,
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
    return result;
  }

  @override
  CfgField deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CfgFieldBuilder();

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
      }
    }

    return result.build();
  }
}

class _$CfgField extends CfgField {
  @override
  final int minLen;
  @override
  final int maxLen;

  factory _$CfgField([void Function(CfgFieldBuilder) updates]) =>
      (new CfgFieldBuilder()..update(updates)).build();

  _$CfgField._({this.minLen, this.maxLen}) : super._();

  @override
  CfgField rebuild(void Function(CfgFieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CfgFieldBuilder toBuilder() => new CfgFieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CfgField &&
        minLen == other.minLen &&
        maxLen == other.maxLen;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, minLen.hashCode), maxLen.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CfgField')
          ..add('minLen', minLen)
          ..add('maxLen', maxLen))
        .toString();
  }
}

class CfgFieldBuilder implements Builder<CfgField, CfgFieldBuilder> {
  _$CfgField _$v;

  int _minLen;
  int get minLen => _$this._minLen;
  set minLen(int minLen) => _$this._minLen = minLen;

  int _maxLen;
  int get maxLen => _$this._maxLen;
  set maxLen(int maxLen) => _$this._maxLen = maxLen;

  CfgFieldBuilder();

  CfgFieldBuilder get _$this {
    if (_$v != null) {
      _minLen = _$v.minLen;
      _maxLen = _$v.maxLen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CfgField other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CfgField;
  }

  @override
  void update(void Function(CfgFieldBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CfgField build() {
    final _$result = _$v ?? new _$CfgField._(minLen: minLen, maxLen: maxLen);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

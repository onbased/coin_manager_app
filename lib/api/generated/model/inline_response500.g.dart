// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inline_response500.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse500> _$inlineResponse500Serializer =
    new _$InlineResponse500Serializer();

class _$InlineResponse500Serializer
    implements StructuredSerializer<InlineResponse500> {
  @override
  final Iterable<Type> types = const [InlineResponse500, _$InlineResponse500];
  @override
  final String wireName = 'InlineResponse500';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse500 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineResponse500 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse500Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse500 extends InlineResponse500 {
  @override
  final String id;

  factory _$InlineResponse500(
          [void Function(InlineResponse500Builder) updates]) =>
      (new InlineResponse500Builder()..update(updates)).build();

  _$InlineResponse500._({this.id}) : super._();

  @override
  InlineResponse500 rebuild(void Function(InlineResponse500Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse500Builder toBuilder() =>
      new InlineResponse500Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse500 && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse500')..add('id', id))
        .toString();
  }
}

class InlineResponse500Builder
    implements Builder<InlineResponse500, InlineResponse500Builder> {
  _$InlineResponse500 _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  InlineResponse500Builder();

  InlineResponse500Builder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse500 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse500;
  }

  @override
  void update(void Function(InlineResponse500Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse500 build() {
    final _$result = _$v ?? new _$InlineResponse500._(id: id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

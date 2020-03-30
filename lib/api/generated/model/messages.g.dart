// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Messages> _$messagesSerializer = new _$MessagesSerializer();

class _$MessagesSerializer implements StructuredSerializer<Messages> {
  @override
  final Iterable<Type> types = const [Messages, _$Messages];
  @override
  final String wireName = 'Messages';

  @override
  Iterable<Object> serialize(Serializers serializers, Messages object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.info != null) {
      result
        ..add('info')
        ..add(serializers.serialize(object.info,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.warn != null) {
      result
        ..add('warn')
        ..add(serializers.serialize(object.warn,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  Messages deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessagesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'info':
          result.info.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'warn':
          result.warn.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Messages extends Messages {
  @override
  final BuiltList<String> info;
  @override
  final BuiltList<String> warn;

  factory _$Messages([void Function(MessagesBuilder) updates]) =>
      (new MessagesBuilder()..update(updates)).build();

  _$Messages._({this.info, this.warn}) : super._();

  @override
  Messages rebuild(void Function(MessagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessagesBuilder toBuilder() => new MessagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Messages && info == other.info && warn == other.warn;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, info.hashCode), warn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Messages')
          ..add('info', info)
          ..add('warn', warn))
        .toString();
  }
}

class MessagesBuilder implements Builder<Messages, MessagesBuilder> {
  _$Messages _$v;

  ListBuilder<String> _info;
  ListBuilder<String> get info => _$this._info ??= new ListBuilder<String>();
  set info(ListBuilder<String> info) => _$this._info = info;

  ListBuilder<String> _warn;
  ListBuilder<String> get warn => _$this._warn ??= new ListBuilder<String>();
  set warn(ListBuilder<String> warn) => _$this._warn = warn;

  MessagesBuilder();

  MessagesBuilder get _$this {
    if (_$v != null) {
      _info = _$v.info?.toBuilder();
      _warn = _$v.warn?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Messages other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Messages;
  }

  @override
  void update(void Function(MessagesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Messages build() {
    _$Messages _$result;
    try {
      _$result =
          _$v ?? new _$Messages._(info: _info?.build(), warn: _warn?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'info';
        _info?.build();
        _$failedField = 'warn';
        _warn?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Messages', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Session> _$sessionSerializer = new _$SessionSerializer();

class _$SessionSerializer implements StructuredSerializer<Session> {
  @override
  final Iterable<Type> types = const [Session, _$Session];
  @override
  final String wireName = 'Session';

  @override
  Iterable<Object> serialize(Serializers serializers, Session object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.uid != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(object.uid,
            specifiedType: const FullType(int)));
    }
    if (object.tz != null) {
      result
        ..add('tz')
        ..add(serializers.serialize(object.tz,
            specifiedType: const FullType(int)));
    }
    if (object.base != null) {
      result
        ..add('base')
        ..add(serializers.serialize(object.base,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Session deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SessionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tz':
          result.tz = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'base':
          result.base = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Session extends Session {
  @override
  final int uid;
  @override
  final int tz;
  @override
  final String base;

  factory _$Session([void Function(SessionBuilder) updates]) =>
      (new SessionBuilder()..update(updates)).build();

  _$Session._({this.uid, this.tz, this.base}) : super._();

  @override
  Session rebuild(void Function(SessionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionBuilder toBuilder() => new SessionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Session &&
        uid == other.uid &&
        tz == other.tz &&
        base == other.base;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, uid.hashCode), tz.hashCode), base.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Session')
          ..add('uid', uid)
          ..add('tz', tz)
          ..add('base', base))
        .toString();
  }
}

class SessionBuilder implements Builder<Session, SessionBuilder> {
  _$Session _$v;

  int _uid;
  int get uid => _$this._uid;
  set uid(int uid) => _$this._uid = uid;

  int _tz;
  int get tz => _$this._tz;
  set tz(int tz) => _$this._tz = tz;

  String _base;
  String get base => _$this._base;
  set base(String base) => _$this._base = base;

  SessionBuilder();

  SessionBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _tz = _$v.tz;
      _base = _$v.base;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Session other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Session;
  }

  @override
  void update(void Function(SessionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Session build() {
    final _$result = _$v ?? new _$Session._(uid: uid, tz: tz, base: base);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

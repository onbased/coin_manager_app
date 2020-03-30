// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SessionData> _$sessionDataSerializer = new _$SessionDataSerializer();

class _$SessionDataSerializer implements StructuredSerializer<SessionData> {
  @override
  final Iterable<Type> types = const [SessionData, _$SessionData];
  @override
  final String wireName = 'SessionData';

  @override
  Iterable<Object> serialize(Serializers serializers, SessionData object,
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
    if (object.accounts != null) {
      result
        ..add('accounts')
        ..add(serializers.serialize(object.accounts,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(AccountBase)])));
    }
    if (object.locale != null) {
      result
        ..add('locale')
        ..add(serializers.serialize(object.locale,
            specifiedType: const FullType(String)));
    }
    if (object.uiConfig != null) {
      result
        ..add('uiConfig')
        ..add(serializers.serialize(object.uiConfig,
            specifiedType: const FullType(String)));
    }
    if (object.minDispValue != null) {
      result
        ..add('minDispValue')
        ..add(serializers.serialize(object.minDispValue,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  SessionData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SessionDataBuilder();

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
        case 'accounts':
          result.accounts.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(AccountBase)
              ])));
          break;
        case 'locale':
          result.locale = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uiConfig':
          result.uiConfig = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'minDispValue':
          result.minDispValue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$SessionData extends SessionData {
  @override
  final int uid;
  @override
  final int tz;
  @override
  final String base;
  @override
  final BuiltMap<String, AccountBase> accounts;
  @override
  final String locale;
  @override
  final String uiConfig;
  @override
  final double minDispValue;

  factory _$SessionData([void Function(SessionDataBuilder) updates]) =>
      (new SessionDataBuilder()..update(updates)).build();

  _$SessionData._(
      {this.uid,
      this.tz,
      this.base,
      this.accounts,
      this.locale,
      this.uiConfig,
      this.minDispValue})
      : super._();

  @override
  SessionData rebuild(void Function(SessionDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionDataBuilder toBuilder() => new SessionDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionData &&
        uid == other.uid &&
        tz == other.tz &&
        base == other.base &&
        accounts == other.accounts &&
        locale == other.locale &&
        uiConfig == other.uiConfig &&
        minDispValue == other.minDispValue;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, uid.hashCode), tz.hashCode), base.hashCode),
                    accounts.hashCode),
                locale.hashCode),
            uiConfig.hashCode),
        minDispValue.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SessionData')
          ..add('uid', uid)
          ..add('tz', tz)
          ..add('base', base)
          ..add('accounts', accounts)
          ..add('locale', locale)
          ..add('uiConfig', uiConfig)
          ..add('minDispValue', minDispValue))
        .toString();
  }
}

class SessionDataBuilder implements Builder<SessionData, SessionDataBuilder> {
  _$SessionData _$v;

  int _uid;
  int get uid => _$this._uid;
  set uid(int uid) => _$this._uid = uid;

  int _tz;
  int get tz => _$this._tz;
  set tz(int tz) => _$this._tz = tz;

  String _base;
  String get base => _$this._base;
  set base(String base) => _$this._base = base;

  MapBuilder<String, AccountBase> _accounts;
  MapBuilder<String, AccountBase> get accounts =>
      _$this._accounts ??= new MapBuilder<String, AccountBase>();
  set accounts(MapBuilder<String, AccountBase> accounts) =>
      _$this._accounts = accounts;

  String _locale;
  String get locale => _$this._locale;
  set locale(String locale) => _$this._locale = locale;

  String _uiConfig;
  String get uiConfig => _$this._uiConfig;
  set uiConfig(String uiConfig) => _$this._uiConfig = uiConfig;

  double _minDispValue;
  double get minDispValue => _$this._minDispValue;
  set minDispValue(double minDispValue) => _$this._minDispValue = minDispValue;

  SessionDataBuilder();

  SessionDataBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _tz = _$v.tz;
      _base = _$v.base;
      _accounts = _$v.accounts?.toBuilder();
      _locale = _$v.locale;
      _uiConfig = _$v.uiConfig;
      _minDispValue = _$v.minDispValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SessionData;
  }

  @override
  void update(void Function(SessionDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SessionData build() {
    _$SessionData _$result;
    try {
      _$result = _$v ??
          new _$SessionData._(
              uid: uid,
              tz: tz,
              base: base,
              accounts: _accounts?.build(),
              locale: locale,
              uiConfig: uiConfig,
              minDispValue: minDispValue);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'accounts';
        _accounts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SessionData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_data_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SessionDataAllOf> _$sessionDataAllOfSerializer =
    new _$SessionDataAllOfSerializer();

class _$SessionDataAllOfSerializer
    implements StructuredSerializer<SessionDataAllOf> {
  @override
  final Iterable<Type> types = const [SessionDataAllOf, _$SessionDataAllOf];
  @override
  final String wireName = 'SessionDataAllOf';

  @override
  Iterable<Object> serialize(Serializers serializers, SessionDataAllOf object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
  SessionDataAllOf deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SessionDataAllOfBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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

class _$SessionDataAllOf extends SessionDataAllOf {
  @override
  final BuiltMap<String, AccountBase> accounts;
  @override
  final String locale;
  @override
  final String uiConfig;
  @override
  final double minDispValue;

  factory _$SessionDataAllOf(
          [void Function(SessionDataAllOfBuilder) updates]) =>
      (new SessionDataAllOfBuilder()..update(updates)).build();

  _$SessionDataAllOf._(
      {this.accounts, this.locale, this.uiConfig, this.minDispValue})
      : super._();

  @override
  SessionDataAllOf rebuild(void Function(SessionDataAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionDataAllOfBuilder toBuilder() =>
      new SessionDataAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionDataAllOf &&
        accounts == other.accounts &&
        locale == other.locale &&
        uiConfig == other.uiConfig &&
        minDispValue == other.minDispValue;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, accounts.hashCode), locale.hashCode), uiConfig.hashCode),
        minDispValue.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SessionDataAllOf')
          ..add('accounts', accounts)
          ..add('locale', locale)
          ..add('uiConfig', uiConfig)
          ..add('minDispValue', minDispValue))
        .toString();
  }
}

class SessionDataAllOfBuilder
    implements Builder<SessionDataAllOf, SessionDataAllOfBuilder> {
  _$SessionDataAllOf _$v;

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

  SessionDataAllOfBuilder();

  SessionDataAllOfBuilder get _$this {
    if (_$v != null) {
      _accounts = _$v.accounts?.toBuilder();
      _locale = _$v.locale;
      _uiConfig = _$v.uiConfig;
      _minDispValue = _$v.minDispValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionDataAllOf other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SessionDataAllOf;
  }

  @override
  void update(void Function(SessionDataAllOfBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SessionDataAllOf build() {
    _$SessionDataAllOf _$result;
    try {
      _$result = _$v ??
          new _$SessionDataAllOf._(
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
            'SessionDataAllOf', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

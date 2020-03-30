// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Config> _$configSerializer = new _$ConfigSerializer();

class _$ConfigSerializer implements StructuredSerializer<Config> {
  @override
  final Iterable<Type> types = const [Config, _$Config];
  @override
  final String wireName = 'Config';

  @override
  Iterable<Object> serialize(Serializers serializers, Config object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(CfgField)));
    }
    if (object.loginid != null) {
      result
        ..add('loginid')
        ..add(serializers.serialize(object.loginid,
            specifiedType: const FullType(CfgField)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(CfgField)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(PwdField)));
    }
    if (object.displayCurrencies != null) {
      result
        ..add('displayCurrencies')
        ..add(serializers.serialize(object.displayCurrencies,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  Config deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConfigBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name.replace(serializers.deserialize(value,
              specifiedType: const FullType(CfgField)) as CfgField);
          break;
        case 'loginid':
          result.loginid.replace(serializers.deserialize(value,
              specifiedType: const FullType(CfgField)) as CfgField);
          break;
        case 'email':
          result.email.replace(serializers.deserialize(value,
              specifiedType: const FullType(CfgField)) as CfgField);
          break;
        case 'password':
          result.password.replace(serializers.deserialize(value,
              specifiedType: const FullType(PwdField)) as PwdField);
          break;
        case 'displayCurrencies':
          result.displayCurrencies.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Config extends Config {
  @override
  final CfgField name;
  @override
  final CfgField loginid;
  @override
  final CfgField email;
  @override
  final PwdField password;
  @override
  final BuiltList<String> displayCurrencies;

  factory _$Config([void Function(ConfigBuilder) updates]) =>
      (new ConfigBuilder()..update(updates)).build();

  _$Config._(
      {this.name,
      this.loginid,
      this.email,
      this.password,
      this.displayCurrencies})
      : super._();

  @override
  Config rebuild(void Function(ConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfigBuilder toBuilder() => new ConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Config &&
        name == other.name &&
        loginid == other.loginid &&
        email == other.email &&
        password == other.password &&
        displayCurrencies == other.displayCurrencies;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), loginid.hashCode), email.hashCode),
            password.hashCode),
        displayCurrencies.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Config')
          ..add('name', name)
          ..add('loginid', loginid)
          ..add('email', email)
          ..add('password', password)
          ..add('displayCurrencies', displayCurrencies))
        .toString();
  }
}

class ConfigBuilder implements Builder<Config, ConfigBuilder> {
  _$Config _$v;

  CfgFieldBuilder _name;
  CfgFieldBuilder get name => _$this._name ??= new CfgFieldBuilder();
  set name(CfgFieldBuilder name) => _$this._name = name;

  CfgFieldBuilder _loginid;
  CfgFieldBuilder get loginid => _$this._loginid ??= new CfgFieldBuilder();
  set loginid(CfgFieldBuilder loginid) => _$this._loginid = loginid;

  CfgFieldBuilder _email;
  CfgFieldBuilder get email => _$this._email ??= new CfgFieldBuilder();
  set email(CfgFieldBuilder email) => _$this._email = email;

  PwdFieldBuilder _password;
  PwdFieldBuilder get password => _$this._password ??= new PwdFieldBuilder();
  set password(PwdFieldBuilder password) => _$this._password = password;

  ListBuilder<String> _displayCurrencies;
  ListBuilder<String> get displayCurrencies =>
      _$this._displayCurrencies ??= new ListBuilder<String>();
  set displayCurrencies(ListBuilder<String> displayCurrencies) =>
      _$this._displayCurrencies = displayCurrencies;

  ConfigBuilder();

  ConfigBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name?.toBuilder();
      _loginid = _$v.loginid?.toBuilder();
      _email = _$v.email?.toBuilder();
      _password = _$v.password?.toBuilder();
      _displayCurrencies = _$v.displayCurrencies?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Config other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Config;
  }

  @override
  void update(void Function(ConfigBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Config build() {
    _$Config _$result;
    try {
      _$result = _$v ??
          new _$Config._(
              name: _name?.build(),
              loginid: _loginid?.build(),
              email: _email?.build(),
              password: _password?.build(),
              displayCurrencies: _displayCurrencies?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'name';
        _name?.build();
        _$failedField = 'loginid';
        _loginid?.build();
        _$failedField = 'email';
        _email?.build();
        _$failedField = 'password';
        _password?.build();
        _$failedField = 'displayCurrencies';
        _displayCurrencies?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Config', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

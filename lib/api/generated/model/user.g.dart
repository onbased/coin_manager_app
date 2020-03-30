// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable<Object> serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.pwd != null) {
      result
        ..add('pwd')
        ..add(serializers.serialize(object.pwd,
            specifiedType: const FullType(String)));
    }
    if (object.loginid != null) {
      result
        ..add('loginid')
        ..add(serializers.serialize(object.loginid,
            specifiedType: const FullType(String)));
    }
    if (object.baseCurrency != null) {
      result
        ..add('baseCurrency')
        ..add(serializers.serialize(object.baseCurrency,
            specifiedType: const FullType(String)));
    }
    if (object.minDispVal != null) {
      result
        ..add('minDispVal')
        ..add(serializers.serialize(object.minDispVal,
            specifiedType: const FullType(num)));
    }
    if (object.tz != null) {
      result
        ..add('tz')
        ..add(serializers.serialize(object.tz,
            specifiedType: const FullType(String)));
    }
    if (object.locale != null) {
      result
        ..add('locale')
        ..add(serializers.serialize(object.locale,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pwd':
          result.pwd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'loginid':
          result.loginid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'baseCurrency':
          result.baseCurrency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'minDispVal':
          result.minDispVal = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num;
          break;
        case 'tz':
          result.tz = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'locale':
          result.locale = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final String email;
  @override
  final String name;
  @override
  final String pwd;
  @override
  final String loginid;
  @override
  final String baseCurrency;
  @override
  final num minDispVal;
  @override
  final String tz;
  @override
  final String locale;

  factory _$User([void Function(UserBuilder) updates]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._(
      {this.email,
      this.name,
      this.pwd,
      this.loginid,
      this.baseCurrency,
      this.minDispVal,
      this.tz,
      this.locale})
      : super._();

  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        email == other.email &&
        name == other.name &&
        pwd == other.pwd &&
        loginid == other.loginid &&
        baseCurrency == other.baseCurrency &&
        minDispVal == other.minDispVal &&
        tz == other.tz &&
        locale == other.locale;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, email.hashCode), name.hashCode),
                            pwd.hashCode),
                        loginid.hashCode),
                    baseCurrency.hashCode),
                minDispVal.hashCode),
            tz.hashCode),
        locale.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('email', email)
          ..add('name', name)
          ..add('pwd', pwd)
          ..add('loginid', loginid)
          ..add('baseCurrency', baseCurrency)
          ..add('minDispVal', minDispVal)
          ..add('tz', tz)
          ..add('locale', locale))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _pwd;
  String get pwd => _$this._pwd;
  set pwd(String pwd) => _$this._pwd = pwd;

  String _loginid;
  String get loginid => _$this._loginid;
  set loginid(String loginid) => _$this._loginid = loginid;

  String _baseCurrency;
  String get baseCurrency => _$this._baseCurrency;
  set baseCurrency(String baseCurrency) => _$this._baseCurrency = baseCurrency;

  num _minDispVal;
  num get minDispVal => _$this._minDispVal;
  set minDispVal(num minDispVal) => _$this._minDispVal = minDispVal;

  String _tz;
  String get tz => _$this._tz;
  set tz(String tz) => _$this._tz = tz;

  String _locale;
  String get locale => _$this._locale;
  set locale(String locale) => _$this._locale = locale;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _name = _$v.name;
      _pwd = _$v.pwd;
      _loginid = _$v.loginid;
      _baseCurrency = _$v.baseCurrency;
      _minDispVal = _$v.minDispVal;
      _tz = _$v.tz;
      _locale = _$v.locale;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    final _$result = _$v ??
        new _$User._(
            email: email,
            name: name,
            pwd: pwd,
            loginid: loginid,
            baseCurrency: baseCurrency,
            minDispVal: minDispVal,
            tz: tz,
            locale: locale);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

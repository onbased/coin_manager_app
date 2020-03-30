// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserError> _$userErrorSerializer = new _$UserErrorSerializer();

class _$UserErrorSerializer implements StructuredSerializer<UserError> {
  @override
  final Iterable<Type> types = const [UserError, _$UserError];
  @override
  final String wireName = 'UserError';

  @override
  Iterable<Object> serialize(Serializers serializers, UserError object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(FieldError)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(FieldError)));
    }
    if (object.pwd != null) {
      result
        ..add('pwd')
        ..add(serializers.serialize(object.pwd,
            specifiedType: const FullType(FieldError)));
    }
    if (object.loginid != null) {
      result
        ..add('loginid')
        ..add(serializers.serialize(object.loginid,
            specifiedType: const FullType(FieldError)));
    }
    if (object.baseCurrency != null) {
      result
        ..add('baseCurrency')
        ..add(serializers.serialize(object.baseCurrency,
            specifiedType: const FullType(FieldError)));
    }
    if (object.minDispVal != null) {
      result
        ..add('minDispVal')
        ..add(serializers.serialize(object.minDispVal,
            specifiedType: const FullType(FieldError)));
    }
    if (object.tz != null) {
      result
        ..add('tz')
        ..add(serializers.serialize(object.tz,
            specifiedType: const FullType(FieldError)));
    }
    if (object.locale != null) {
      result
        ..add('locale')
        ..add(serializers.serialize(object.locale,
            specifiedType: const FullType(FieldError)));
    }
    return result;
  }

  @override
  UserError deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserErrorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(FieldError)) as FieldError;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(FieldError)) as FieldError;
          break;
        case 'pwd':
          result.pwd = serializers.deserialize(value,
              specifiedType: const FullType(FieldError)) as FieldError;
          break;
        case 'loginid':
          result.loginid = serializers.deserialize(value,
              specifiedType: const FullType(FieldError)) as FieldError;
          break;
        case 'baseCurrency':
          result.baseCurrency = serializers.deserialize(value,
              specifiedType: const FullType(FieldError)) as FieldError;
          break;
        case 'minDispVal':
          result.minDispVal = serializers.deserialize(value,
              specifiedType: const FullType(FieldError)) as FieldError;
          break;
        case 'tz':
          result.tz = serializers.deserialize(value,
              specifiedType: const FullType(FieldError)) as FieldError;
          break;
        case 'locale':
          result.locale = serializers.deserialize(value,
              specifiedType: const FullType(FieldError)) as FieldError;
          break;
      }
    }

    return result.build();
  }
}

class _$UserError extends UserError {
  @override
  final FieldError email;
  @override
  final FieldError name;
  @override
  final FieldError pwd;
  @override
  final FieldError loginid;
  @override
  final FieldError baseCurrency;
  @override
  final FieldError minDispVal;
  @override
  final FieldError tz;
  @override
  final FieldError locale;

  factory _$UserError([void Function(UserErrorBuilder) updates]) =>
      (new UserErrorBuilder()..update(updates)).build();

  _$UserError._(
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
  UserError rebuild(void Function(UserErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserErrorBuilder toBuilder() => new UserErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserError &&
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
    return (newBuiltValueToStringHelper('UserError')
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

class UserErrorBuilder implements Builder<UserError, UserErrorBuilder> {
  _$UserError _$v;

  FieldError _email;
  FieldError get email => _$this._email;
  set email(FieldError email) => _$this._email = email;

  FieldError _name;
  FieldError get name => _$this._name;
  set name(FieldError name) => _$this._name = name;

  FieldError _pwd;
  FieldError get pwd => _$this._pwd;
  set pwd(FieldError pwd) => _$this._pwd = pwd;

  FieldError _loginid;
  FieldError get loginid => _$this._loginid;
  set loginid(FieldError loginid) => _$this._loginid = loginid;

  FieldError _baseCurrency;
  FieldError get baseCurrency => _$this._baseCurrency;
  set baseCurrency(FieldError baseCurrency) =>
      _$this._baseCurrency = baseCurrency;

  FieldError _minDispVal;
  FieldError get minDispVal => _$this._minDispVal;
  set minDispVal(FieldError minDispVal) => _$this._minDispVal = minDispVal;

  FieldError _tz;
  FieldError get tz => _$this._tz;
  set tz(FieldError tz) => _$this._tz = tz;

  FieldError _locale;
  FieldError get locale => _$this._locale;
  set locale(FieldError locale) => _$this._locale = locale;

  UserErrorBuilder();

  UserErrorBuilder get _$this {
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
  void replace(UserError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserError;
  }

  @override
  void update(void Function(UserErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserError build() {
    final _$result = _$v ??
        new _$UserError._(
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

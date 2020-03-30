// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginError> _$loginErrorSerializer = new _$LoginErrorSerializer();

class _$LoginErrorSerializer implements StructuredSerializer<LoginError> {
  @override
  final Iterable<Type> types = const [LoginError, _$LoginError];
  @override
  final String wireName = 'LoginError';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginError object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(FieldError)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(FieldError)));
    }
    return result;
  }

  @override
  LoginError deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginErrorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(FieldError)) as FieldError;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(FieldError)) as FieldError;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginError extends LoginError {
  @override
  final FieldError user;
  @override
  final FieldError password;

  factory _$LoginError([void Function(LoginErrorBuilder) updates]) =>
      (new LoginErrorBuilder()..update(updates)).build();

  _$LoginError._({this.user, this.password}) : super._();

  @override
  LoginError rebuild(void Function(LoginErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginErrorBuilder toBuilder() => new LoginErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginError &&
        user == other.user &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginError')
          ..add('user', user)
          ..add('password', password))
        .toString();
  }
}

class LoginErrorBuilder implements Builder<LoginError, LoginErrorBuilder> {
  _$LoginError _$v;

  FieldError _user;
  FieldError get user => _$this._user;
  set user(FieldError user) => _$this._user = user;

  FieldError _password;
  FieldError get password => _$this._password;
  set password(FieldError password) => _$this._password = password;

  LoginErrorBuilder();

  LoginErrorBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginError;
  }

  @override
  void update(void Function(LoginErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginError build() {
    final _$result = _$v ?? new _$LoginError._(user: user, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_req.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginReq> _$loginReqSerializer = new _$LoginReqSerializer();

class _$LoginReqSerializer implements StructuredSerializer<LoginReq> {
  @override
  final Iterable<Type> types = const [LoginReq, _$LoginReq];
  @override
  final String wireName = 'LoginReq';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LoginReq deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginReq extends LoginReq {
  @override
  final String user;
  @override
  final String password;

  factory _$LoginReq([void Function(LoginReqBuilder) updates]) =>
      (new LoginReqBuilder()..update(updates)).build();

  _$LoginReq._({this.user, this.password}) : super._();

  @override
  LoginReq rebuild(void Function(LoginReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginReqBuilder toBuilder() => new LoginReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginReq &&
        user == other.user &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, user.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginReq')
          ..add('user', user)
          ..add('password', password))
        .toString();
  }
}

class LoginReqBuilder implements Builder<LoginReq, LoginReqBuilder> {
  _$LoginReq _$v;

  String _user;
  String get user => _$this._user;
  set user(String user) => _$this._user = user;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  LoginReqBuilder();

  LoginReqBuilder get _$this {
    if (_$v != null) {
      _user = _$v.user;
      _password = _$v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginReq other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginReq;
  }

  @override
  void update(void Function(LoginReqBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginReq build() {
    final _$result = _$v ?? new _$LoginReq._(user: user, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_base.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AccountBase> _$accountBaseSerializer = new _$AccountBaseSerializer();

class _$AccountBaseSerializer implements StructuredSerializer<AccountBase> {
  @override
  final Iterable<Type> types = const [AccountBase, _$AccountBase];
  @override
  final String wireName = 'AccountBase';

  @override
  Iterable<Object> serialize(Serializers serializers, AccountBase object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
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
  AccountBase deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountBaseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$AccountBase extends AccountBase {
  @override
  final String name;
  @override
  final String base;

  factory _$AccountBase([void Function(AccountBaseBuilder) updates]) =>
      (new AccountBaseBuilder()..update(updates)).build();

  _$AccountBase._({this.name, this.base}) : super._();

  @override
  AccountBase rebuild(void Function(AccountBaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountBaseBuilder toBuilder() => new AccountBaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountBase && name == other.name && base == other.base;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), base.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountBase')
          ..add('name', name)
          ..add('base', base))
        .toString();
  }
}

class AccountBaseBuilder implements Builder<AccountBase, AccountBaseBuilder> {
  _$AccountBase _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _base;
  String get base => _$this._base;
  set base(String base) => _$this._base = base;

  AccountBaseBuilder();

  AccountBaseBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _base = _$v.base;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountBase other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AccountBase;
  }

  @override
  void update(void Function(AccountBaseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountBase build() {
    final _$result = _$v ?? new _$AccountBase._(name: name, base: base);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

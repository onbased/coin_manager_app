// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FieldError _$required_ = const FieldError._('required_');
const FieldError _$invalid = const FieldError._('invalid');
const FieldError _$nonUnique = const FieldError._('nonUnique');
const FieldError _$tooShort = const FieldError._('tooShort');
const FieldError _$tooLong = const FieldError._('tooLong');

FieldError _$valueOf(String name) {
  switch (name) {
    case 'required_':
      return _$required_;
    case 'invalid':
      return _$invalid;
    case 'nonUnique':
      return _$nonUnique;
    case 'tooShort':
      return _$tooShort;
    case 'tooLong':
      return _$tooLong;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<FieldError> _$values =
    new BuiltSet<FieldError>(const <FieldError>[
  _$required_,
  _$invalid,
  _$nonUnique,
  _$tooShort,
  _$tooLong,
]);

class _$FieldErrorMeta {
  const _$FieldErrorMeta();
  FieldError get required_ => _$required_;
  FieldError get invalid => _$invalid;
  FieldError get nonUnique => _$nonUnique;
  FieldError get tooShort => _$tooShort;
  FieldError get tooLong => _$tooLong;
  FieldError valueOf(String name) => _$valueOf(name);
  BuiltSet<FieldError> get values => _$values;
}

abstract class _$FieldErrorMixin {
  // ignore: non_constant_identifier_names
  _$FieldErrorMeta get FieldError => const _$FieldErrorMeta();
}

Serializer<FieldError> _$fieldErrorSerializer = new _$FieldErrorSerializer();

class _$FieldErrorSerializer implements PrimitiveSerializer<FieldError> {
  static const Map<String, String> _toWire = const <String, String>{
    'required_': 'required',
    'invalid': 'invalid',
    'nonUnique': 'nonUnique',
    'tooShort': 'tooShort',
    'tooLong': 'tooLong',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'required': 'required_',
    'invalid': 'invalid',
    'nonUnique': 'nonUnique',
    'tooShort': 'tooShort',
    'tooLong': 'tooLong',
  };

  @override
  final Iterable<Type> types = const <Type>[FieldError];
  @override
  final String wireName = 'FieldError';

  @override
  Object serialize(Serializers serializers, FieldError object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FieldError deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FieldError.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

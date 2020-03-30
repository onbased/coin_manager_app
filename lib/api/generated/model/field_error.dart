        import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'field_error.g.dart';

class FieldError extends EnumClass {

  /// api.FieldError
  @BuiltValueEnumConst(wireName: "required")
  static const FieldError required_ = _$required_;
  /// api.FieldError
  @BuiltValueEnumConst(wireName: "invalid")
  static const FieldError invalid = _$invalid;
  /// api.FieldError
  @BuiltValueEnumConst(wireName: "nonUnique")
  static const FieldError nonUnique = _$nonUnique;
  /// api.FieldError
  @BuiltValueEnumConst(wireName: "tooShort")
  static const FieldError tooShort = _$tooShort;
  /// api.FieldError
  @BuiltValueEnumConst(wireName: "tooLong")
  static const FieldError tooLong = _$tooLong;

  static Serializer<FieldError> get serializer => _$fieldErrorSerializer;

  const FieldError._(String name): super(name);

  static BuiltSet<FieldError> get values => _$values;
  static FieldError valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class FieldErrorMixin = Object with _$FieldErrorMixin;


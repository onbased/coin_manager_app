part of openapi.api;

class FieldError {
  /// The underlying value of this enum member.
  final String value;

  const FieldError._internal(this.value);

  /// api.FieldError
  static const FieldError required_ = const FieldError._internal("required");
  /// api.FieldError
  static const FieldError invalid_ = const FieldError._internal("invalid");
  /// api.FieldError
  static const FieldError nonUnique_ = const FieldError._internal("nonUnique");
  /// api.FieldError
  static const FieldError tooShort_ = const FieldError._internal("tooShort");
  /// api.FieldError
  static const FieldError tooLong_ = const FieldError._internal("tooLong");

  static FieldError fromJson(String value) {
    return new FieldErrorTypeTransformer().decode(value);
  }
}

class FieldErrorTypeTransformer {

  dynamic encode(FieldError data) {
    return data.value;
  }

  FieldError decode(dynamic data) {
    switch (data) {
      case "required": return FieldError.required_;
      case "invalid": return FieldError.invalid_;
      case "nonUnique": return FieldError.nonUnique_;
      case "tooShort": return FieldError.tooShort_;
      case "tooLong": return FieldError.tooLong_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}


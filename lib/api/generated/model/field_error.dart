part of swagger.api;

class FieldError {
  /// The underlying value of this enum member.
  String value;

  FieldError._internal(this.value);

  /// api.FieldError
  static FieldError required_ = FieldError._internal("required");
  /// api.FieldError
  static FieldError invalid_ = FieldError._internal("invalid");
  /// api.FieldError
  static FieldError nonUnique_ = FieldError._internal("nonUnique");
  /// api.FieldError
  static FieldError tooShort_ = FieldError._internal("tooShort");
  /// api.FieldError
  static FieldError tooLong_ = FieldError._internal("tooLong");

  FieldError.fromJson(dynamic data) {
    switch (data) {
          case "required": value = data; break;
          case "invalid": value = data; break;
          case "nonUnique": value = data; break;
          case "tooShort": value = data; break;
          case "tooLong": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(FieldError data) {
    return data.value;
  }
}


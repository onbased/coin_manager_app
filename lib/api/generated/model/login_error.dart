            import 'package:coin_manager/api/generated/model/field_error.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_error.g.dart';

abstract class LoginError implements Built<LoginError, LoginErrorBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'user')
    FieldError get user;
        //enum userEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };
    
        @nullable
    @BuiltValueField(wireName: r'password')
    FieldError get password;
        //enum passwordEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };

    // Boilerplate code needed to wire-up generated code
    LoginError._();

    factory LoginError([updates(LoginErrorBuilder b)]) = _$LoginError;
    static Serializer<LoginError> get serializer => _$loginErrorSerializer;

}


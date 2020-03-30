            import 'package:coin_manager/api/generated/model/field_error.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_error.g.dart';

abstract class UserError implements Built<UserError, UserErrorBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'email')
    FieldError get email;
        //enum emailEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };
    
        @nullable
    @BuiltValueField(wireName: r'name')
    FieldError get name;
        //enum nameEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };
    
        @nullable
    @BuiltValueField(wireName: r'pwd')
    FieldError get pwd;
        //enum pwdEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };
    
        @nullable
    @BuiltValueField(wireName: r'loginid')
    FieldError get loginid;
        //enum loginidEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };
    
        @nullable
    @BuiltValueField(wireName: r'baseCurrency')
    FieldError get baseCurrency;
        //enum baseCurrencyEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };
    
        @nullable
    @BuiltValueField(wireName: r'minDispVal')
    FieldError get minDispVal;
        //enum minDispValEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };
    
        @nullable
    @BuiltValueField(wireName: r'tz')
    FieldError get tz;
        //enum tzEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };
    
        @nullable
    @BuiltValueField(wireName: r'locale')
    FieldError get locale;
        //enum localeEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };

    // Boilerplate code needed to wire-up generated code
    UserError._();

    factory UserError([updates(UserErrorBuilder b)]) = _$UserError;
    static Serializer<UserError> get serializer => _$userErrorSerializer;

}


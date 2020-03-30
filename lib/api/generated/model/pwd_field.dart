            import 'package:coin_manager/api/generated/model/pwd_field_all_of.dart';
            import 'package:coin_manager/api/generated/model/cfg_field.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pwd_field.g.dart';

abstract class PwdField implements Built<PwdField, PwdFieldBuilder> {

    /* 0 means the fiel can be empty */
        @nullable
    @BuiltValueField(wireName: r'minLen')
    int get minLen;
    
        @nullable
    @BuiltValueField(wireName: r'maxLen')
    int get maxLen;
    /* the charaters recognized as 'special character'. one of them must be in the password value */
        @nullable
    @BuiltValueField(wireName: r'specChars')
    String get specChars;

    // Boilerplate code needed to wire-up generated code
    PwdField._();

    factory PwdField([updates(PwdFieldBuilder b)]) = _$PwdField;
    static Serializer<PwdField> get serializer => _$pwdFieldSerializer;

}


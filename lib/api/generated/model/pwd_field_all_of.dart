        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pwd_field_all_of.g.dart';

abstract class PwdFieldAllOf implements Built<PwdFieldAllOf, PwdFieldAllOfBuilder> {

    /* the charaters recognized as 'special character'. one of them must be in the password value */
        @nullable
    @BuiltValueField(wireName: r'specChars')
    String get specChars;

    // Boilerplate code needed to wire-up generated code
    PwdFieldAllOf._();

    factory PwdFieldAllOf([updates(PwdFieldAllOfBuilder b)]) = _$PwdFieldAllOf;
    static Serializer<PwdFieldAllOf> get serializer => _$pwdFieldAllOfSerializer;

}


        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'email')
    String get email;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    /* Only expected in POST. Never returned with GET */
        @nullable
    @BuiltValueField(wireName: r'pwd')
    String get pwd;
    
        @nullable
    @BuiltValueField(wireName: r'loginid')
    String get loginid;
    
        @nullable
    @BuiltValueField(wireName: r'baseCurrency')
    String get baseCurrency;
    
        @nullable
    @BuiltValueField(wireName: r'minDispVal')
    num get minDispVal;
    
        @nullable
    @BuiltValueField(wireName: r'tz')
    String get tz;
    
        @nullable
    @BuiltValueField(wireName: r'locale')
    String get locale;

    // Boilerplate code needed to wire-up generated code
    User._();

    factory User([updates(UserBuilder b)]) = _$User;
    static Serializer<User> get serializer => _$userSerializer;

}


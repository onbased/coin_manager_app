        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_req.g.dart';

abstract class LoginReq implements Built<LoginReq, LoginReqBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'user')
    String get user;
    
        @nullable
    @BuiltValueField(wireName: r'password')
    String get password;

    // Boilerplate code needed to wire-up generated code
    LoginReq._();

    factory LoginReq([updates(LoginReqBuilder b)]) = _$LoginReq;
    static Serializer<LoginReq> get serializer => _$loginReqSerializer;

}


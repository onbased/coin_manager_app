            import 'package:built_collection/built_collection.dart';
            import 'package:coin_manager/api/generated/model/cfg_field.dart';
            import 'package:coin_manager/api/generated/model/pwd_field.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'config.g.dart';

abstract class Config implements Built<Config, ConfigBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'name')
    CfgField get name;
    
        @nullable
    @BuiltValueField(wireName: r'loginid')
    CfgField get loginid;
    
        @nullable
    @BuiltValueField(wireName: r'email')
    CfgField get email;
    
        @nullable
    @BuiltValueField(wireName: r'password')
    PwdField get password;
    
        @nullable
    @BuiltValueField(wireName: r'displayCurrencies')
    BuiltList<String> get displayCurrencies;

    // Boilerplate code needed to wire-up generated code
    Config._();

    factory Config([updates(ConfigBuilder b)]) = _$Config;
    static Serializer<Config> get serializer => _$configSerializer;

}


            import 'package:built_collection/built_collection.dart';
            import 'package:coin_manager/api/generated/model/account_base.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_data_all_of.g.dart';

abstract class SessionDataAllOf implements Built<SessionDataAllOf, SessionDataAllOfBuilder> {

    /* <accountid> -> <name> map */
        @nullable
    @BuiltValueField(wireName: r'accounts')
    BuiltMap<String, AccountBase> get accounts;
    
        @nullable
    @BuiltValueField(wireName: r'locale')
    String get locale;
    
        @nullable
    @BuiltValueField(wireName: r'uiConfig')
    String get uiConfig;
    
        @nullable
    @BuiltValueField(wireName: r'minDispValue')
    double get minDispValue;

    // Boilerplate code needed to wire-up generated code
    SessionDataAllOf._();

    factory SessionDataAllOf([updates(SessionDataAllOfBuilder b)]) = _$SessionDataAllOf;
    static Serializer<SessionDataAllOf> get serializer => _$sessionDataAllOfSerializer;

}


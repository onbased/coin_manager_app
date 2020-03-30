            import 'package:coin_manager/api/generated/model/session.dart';
            import 'package:built_collection/built_collection.dart';
            import 'package:coin_manager/api/generated/model/session_data_all_of.dart';
            import 'package:coin_manager/api/generated/model/account_base.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_data.g.dart';

abstract class SessionData implements Built<SessionData, SessionDataBuilder> {

    /* userid */
        @nullable
    @BuiltValueField(wireName: r'uid')
    int get uid;
    /* timezone offset (in minutes) */
        @nullable
    @BuiltValueField(wireName: r'tz')
    int get tz;
    /* base currency */
        @nullable
    @BuiltValueField(wireName: r'base')
    String get base;
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
    SessionData._();

    factory SessionData([updates(SessionDataBuilder b)]) = _$SessionData;
    static Serializer<SessionData> get serializer => _$sessionDataSerializer;

}


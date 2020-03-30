        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session.g.dart';

abstract class Session implements Built<Session, SessionBuilder> {

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

    // Boilerplate code needed to wire-up generated code
    Session._();

    factory Session([updates(SessionBuilder b)]) = _$Session;
    static Serializer<Session> get serializer => _$sessionSerializer;

}


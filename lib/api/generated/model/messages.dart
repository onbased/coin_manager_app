            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'messages.g.dart';

abstract class Messages implements Built<Messages, MessagesBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'info')
    BuiltList<String> get info;
    
        @nullable
    @BuiltValueField(wireName: r'warn')
    BuiltList<String> get warn;

    // Boilerplate code needed to wire-up generated code
    Messages._();

    factory Messages([updates(MessagesBuilder b)]) = _$Messages;
    static Serializer<Messages> get serializer => _$messagesSerializer;

}


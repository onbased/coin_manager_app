        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response500.g.dart';

abstract class InlineResponse500 implements Built<InlineResponse500, InlineResponse500Builder> {

    /* the unique log id of the error in the error log */
        @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    // Boilerplate code needed to wire-up generated code
    InlineResponse500._();

    factory InlineResponse500([updates(InlineResponse500Builder b)]) = _$InlineResponse500;
    static Serializer<InlineResponse500> get serializer => _$inlineResponse500Serializer;

}


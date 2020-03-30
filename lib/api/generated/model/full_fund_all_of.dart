        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'full_fund_all_of.g.dart';

abstract class FullFundAllOf implements Built<FullFundAllOf, FullFundAllOfBuilder> {

    /* Fund type */
        @nullable
    @BuiltValueField(wireName: r'typ')
    String get typ;
        //enum typEnum {  fm,  fs,  f,  };
    /* status */
        @nullable
    @BuiltValueField(wireName: r'st')
    String get st;
        //enum stEnum {  O,  C,  };
    /* the fee in asset */
        @nullable
    @BuiltValueField(wireName: r'fee')
    num get fee;
    /* the id of the matching order from other account */
        @nullable
    @BuiltValueField(wireName: r'ooid')
    num get ooid;

    // Boilerplate code needed to wire-up generated code
    FullFundAllOf._();

    factory FullFundAllOf([updates(FullFundAllOfBuilder b)]) = _$FullFundAllOf;
    static Serializer<FullFundAllOf> get serializer => _$fullFundAllOfSerializer;

}


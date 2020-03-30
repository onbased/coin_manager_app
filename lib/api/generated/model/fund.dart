        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fund.g.dart';

abstract class Fund implements Built<Fund, FundBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'accId')
    int get accId;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'asset')
    String get asset;
    /* < 0 if withdrawal */
        @nullable
    @BuiltValueField(wireName: r'amount')
    num get amount;
    /* The value in the account's base currency */
        @nullable
    @BuiltValueField(wireName: r'value')
    num get value;
    /* timestamp's epoch in the user's timezone */
        @nullable
    @BuiltValueField(wireName: r'at')
    int get at;

    // Boilerplate code needed to wire-up generated code
    Fund._();

    factory Fund([updates(FundBuilder b)]) = _$Fund;
    static Serializer<Fund> get serializer => _$fundSerializer;

}


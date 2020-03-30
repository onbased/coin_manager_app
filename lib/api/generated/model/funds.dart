            import 'package:built_collection/built_collection.dart';
            import 'package:coin_manager/api/generated/model/full_fund.dart';
            import 'package:coin_manager/api/generated/model/messages.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'funds.g.dart';

abstract class Funds implements Built<Funds, FundsBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'funds')
    BuiltList<FullFund> get funds;
    
        @nullable
    @BuiltValueField(wireName: r'msgs')
    Messages get msgs;

    // Boilerplate code needed to wire-up generated code
    Funds._();

    factory Funds([updates(FundsBuilder b)]) = _$Funds;
    static Serializer<Funds> get serializer => _$fundsSerializer;

}


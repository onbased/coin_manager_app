            import 'package:coin_manager/api/generated/model/full_fund_all_of.dart';
            import 'package:coin_manager/api/generated/model/fund.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'full_fund.g.dart';

abstract class FullFund implements Built<FullFund, FullFundBuilder> {

    
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
    FullFund._();

    factory FullFund([updates(FullFundBuilder b)]) = _$FullFund;
    static Serializer<FullFund> get serializer => _$fullFundSerializer;

}


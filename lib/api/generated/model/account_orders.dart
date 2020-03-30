            import 'package:built_collection/built_collection.dart';
            import 'package:coin_manager/api/generated/model/messages.dart';
            import 'package:coin_manager/api/generated/model/order.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_orders.g.dart';

abstract class AccountOrders implements Built<AccountOrders, AccountOrdersBuilder> {

    /* <currency code> -> <price> map */
        @nullable
    @BuiltValueField(wireName: r'balances')
    BuiltMap<String, num> get balances;
    /* <currency code> -> <price> map */
        @nullable
    @BuiltValueField(wireName: r'prices')
    BuiltMap<String, num> get prices;
    /* <asset> -> Orders */
        @nullable
    @BuiltValueField(wireName: r'trades')
    BuiltMap<String, BuiltList<Order>> get trades;
    /* <asset> -> Orders */
        @nullable
    @BuiltValueField(wireName: r'marginTrades')
    BuiltMap<String, BuiltList<Order>> get marginTrades;
    /* The value deposits - withdrawals in the base currency */
        @nullable
    @BuiltValueField(wireName: r'fundSum')
    num get fundSum;
    
        @nullable
    @BuiltValueField(wireName: r'msgs')
    Messages get msgs;

    // Boilerplate code needed to wire-up generated code
    AccountOrders._();

    factory AccountOrders([updates(AccountOrdersBuilder b)]) = _$AccountOrders;
    static Serializer<AccountOrders> get serializer => _$accountOrdersSerializer;

}


            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order.g.dart';

abstract class Order implements Built<Order, OrderBuilder> {

    /* timestamp's epoch seconds in the user's timezone */
        @nullable
    @BuiltValueField(wireName: r'at')
    int get at;
    
        @nullable
    @BuiltValueField(wireName: r'amount')
    num get amount;
    /* fees in base currency open, pos, close */
        @nullable
    @BuiltValueField(wireName: r'fees')
    BuiltList<num> get fees;
    /* <currency code> -> <price> map */
        @nullable
    @BuiltValueField(wireName: r'price')
    BuiltMap<String, num> get price;

    // Boilerplate code needed to wire-up generated code
    Order._();

    factory Order([updates(OrderBuilder b)]) = _$Order;
    static Serializer<Order> get serializer => _$orderSerializer;

}


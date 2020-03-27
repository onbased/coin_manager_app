part of swagger.api;

class Order {
  /* timestamp's epoch seconds in the user's timezone */
  int at = null;
  

  num amount = null;
  
/* fees in base currency open, pos, close */
  List<num> fees = [];
  
/* original price */
  Prices price = null;
  
  Order();

  @override
  String toString() {
    return 'Order[at=$at, amount=$amount, fees=$fees, price=$price, ]';
  }

  Order.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    at =
        json['at']
    ;
    amount =
        json['amount']
    ;
    fees =
        (json['fees'] as List).map((item) => item as num).toList()
    ;
    price =
      
      
      new Prices.fromJson(json['price'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'at': at,
      'amount': amount,
      'fees': fees,
      'price': price
     };
  }

  static List<Order> listFromJson(List<dynamic> json) {
    return json == null ? new List<Order>() : json.map((value) => new Order.fromJson(value)).toList();
  }

  static Map<String, Order> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Order>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Order.fromJson(value));
    }
    return map;
  }
}


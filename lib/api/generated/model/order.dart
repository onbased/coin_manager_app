part of openapi.api;

class Order {
  /* timestamp's epoch seconds in the user's timezone */
  int at = null;
  
  num amount = null;
  /* fees in base currency open, pos, close */
  List<num> fees = [];
  /* <currency code> -> <price> map */
  Map<String, num> price = {};
  Order();

  @override
  String toString() {
    return 'Order[at=$at, amount=$amount, fees=$fees, price=$price, ]';
  }

  Order.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    at = json['at'];
    amount = json['amount'];
    fees = (json['fees'] == null) ?
      null :
      (json['fees'] as List).cast<num>();
    price = (json['price'] == null) ?
      null :
      (json['price'] as Map).cast<String, num>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (at != null)
      json['at'] = at;
    if (amount != null)
      json['amount'] = amount;
    if (fees != null)
      json['fees'] = fees;
    if (price != null)
      json['price'] = price;
    return json;
  }

  static List<Order> listFromJson(List<dynamic> json) {
    return json == null ? List<Order>() : json.map((value) => Order.fromJson(value)).toList();
  }

  static Map<String, Order> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Order>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Order.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Order-objects as value to a dart map
  static Map<String, List<Order>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Order>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Order.listFromJson(value);
       });
     }
     return map;
  }
}


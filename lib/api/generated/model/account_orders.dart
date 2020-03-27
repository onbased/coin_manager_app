part of openapi.api;

class AccountOrders {
  /* <currency code> -> <price> map */
  Map<String, num> balances = {};
  /* <currency code> -> <price> map */
  Map<String, num> prices = {};
  /* <asset> -> Orders */
  Map<String, List<Order>> trades = {};
  /* <asset> -> Orders */
  Map<String, List<Order>> marginTrades = {};
  /* The value deposits - withdrawals in the base currency */
  num fundSum = null;
  
  Messages msgs = null;
  AccountOrders();

  @override
  String toString() {
    return 'AccountOrders[balances=$balances, prices=$prices, trades=$trades, marginTrades=$marginTrades, fundSum=$fundSum, msgs=$msgs, ]';
  }

  AccountOrders.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    balances = (json['balances'] == null) ?
      null :
      (json['balances'] as Map).cast<String, num>();
    prices = (json['prices'] == null) ?
      null :
      (json['prices'] as Map).cast<String, num>();
    trades = (json['trades'] == null) ?
      null :
      Order.mapListFromJson(json['trades']);
    marginTrades = (json['marginTrades'] == null) ?
      null :
      Order.mapListFromJson(json['marginTrades']);
    fundSum = json['fundSum'];
    msgs = (json['msgs'] == null) ?
      null :
      Messages.fromJson(json['msgs']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (balances != null)
      json['balances'] = balances;
    if (prices != null)
      json['prices'] = prices;
    if (trades != null)
      json['trades'] = trades;
    if (marginTrades != null)
      json['marginTrades'] = marginTrades;
    if (fundSum != null)
      json['fundSum'] = fundSum;
    if (msgs != null)
      json['msgs'] = msgs;
    return json;
  }

  static List<AccountOrders> listFromJson(List<dynamic> json) {
    return json == null ? List<AccountOrders>() : json.map((value) => AccountOrders.fromJson(value)).toList();
  }

  static Map<String, AccountOrders> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AccountOrders>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AccountOrders.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AccountOrders-objects as value to a dart map
  static Map<String, List<AccountOrders>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AccountOrders>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AccountOrders.listFromJson(value);
       });
     }
     return map;
  }
}


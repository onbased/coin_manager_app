part of swagger.api;

class AccountOrders {
  
  Prices balances = null;
  

  Prices prices = null;
  

  AssetOrders trades = null;
  

  AssetOrders marginTrades = null;
  
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
    balances =
      
      
      new Prices.fromJson(json['balances'])
;
    prices =
      
      
      new Prices.fromJson(json['prices'])
;
    trades =
      
      
      new AssetOrders.fromJson(json['trades'])
;
    marginTrades =
      
      
      new AssetOrders.fromJson(json['marginTrades'])
;
    fundSum =
        json['fundSum']
    ;
    msgs =
      
      
      new Messages.fromJson(json['msgs'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'balances': balances,
      'prices': prices,
      'trades': trades,
      'marginTrades': marginTrades,
      'fundSum': fundSum,
      'msgs': msgs
     };
  }

  static List<AccountOrders> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountOrders>() : json.map((value) => new AccountOrders.fromJson(value)).toList();
  }

  static Map<String, AccountOrders> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountOrders>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountOrders.fromJson(value));
    }
    return map;
  }
}


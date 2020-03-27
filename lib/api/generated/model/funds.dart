part of swagger.api;

class Funds {
  
  List<FullFund> funds = [];
  

  Messages msgs = null;
  
  Funds();

  @override
  String toString() {
    return 'Funds[funds=$funds, msgs=$msgs, ]';
  }

  Funds.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    funds =
      FullFund.listFromJson(json['funds'])
;
    msgs =
      
      
      new Messages.fromJson(json['msgs'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'funds': funds,
      'msgs': msgs
     };
  }

  static List<Funds> listFromJson(List<dynamic> json) {
    return json == null ? new List<Funds>() : json.map((value) => new Funds.fromJson(value)).toList();
  }

  static Map<String, Funds> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Funds>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Funds.fromJson(value));
    }
    return map;
  }
}


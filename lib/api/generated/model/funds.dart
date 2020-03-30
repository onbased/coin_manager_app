part of openapi.api;

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
    funds = (json['funds'] == null) ?
      null :
      FullFund.listFromJson(json['funds']);
    msgs = (json['msgs'] == null) ?
      null :
      Messages.fromJson(json['msgs']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (funds != null)
      json['funds'] = funds;
    if (msgs != null)
      json['msgs'] = msgs;
    return json;
  }

  static List<Funds> listFromJson(List<dynamic> json) {
    return json == null ? List<Funds>() : json.map((value) => Funds.fromJson(value)).toList();
  }

  static Map<String, Funds> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Funds>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Funds.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Funds-objects as value to a dart map
  static Map<String, List<Funds>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Funds>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Funds.listFromJson(value);
       });
     }
     return map;
  }
}


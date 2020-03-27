part of openapi.api;

class Fund {
  
  int accId = null;
  
  int id = null;
  
  String asset = null;
  /* < 0 if withdrawal */
  num amount = null;
  /* The value in the account's base currency */
  num value = null;
  /* timestamp's epoch in the user's timezone */
  int at = null;
  Fund();

  @override
  String toString() {
    return 'Fund[accId=$accId, id=$id, asset=$asset, amount=$amount, value=$value, at=$at, ]';
  }

  Fund.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accId = json['accId'];
    id = json['id'];
    asset = json['asset'];
    amount = json['amount'];
    value = json['value'];
    at = json['at'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (accId != null)
      json['accId'] = accId;
    if (id != null)
      json['id'] = id;
    if (asset != null)
      json['asset'] = asset;
    if (amount != null)
      json['amount'] = amount;
    if (value != null)
      json['value'] = value;
    if (at != null)
      json['at'] = at;
    return json;
  }

  static List<Fund> listFromJson(List<dynamic> json) {
    return json == null ? List<Fund>() : json.map((value) => Fund.fromJson(value)).toList();
  }

  static Map<String, Fund> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Fund>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Fund.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Fund-objects as value to a dart map
  static Map<String, List<Fund>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Fund>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Fund.listFromJson(value);
       });
     }
     return map;
  }
}


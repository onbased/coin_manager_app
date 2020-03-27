part of swagger.api;

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
    accId =
        json['accId']
    ;
    id =
        json['id']
    ;
    asset =
        json['asset']
    ;
    amount =
        json['amount']
    ;
    value =
        json['value']
    ;
    at =
        json['at']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'accId': accId,
      'id': id,
      'asset': asset,
      'amount': amount,
      'value': value,
      'at': at
     };
  }

  static List<Fund> listFromJson(List<dynamic> json) {
    return json == null ? new List<Fund>() : json.map((value) => new Fund.fromJson(value)).toList();
  }

  static Map<String, Fund> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Fund>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Fund.fromJson(value));
    }
    return map;
  }
}


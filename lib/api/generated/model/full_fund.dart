part of openapi.api;

class FullFund {
  
  int accId = null;
  
  int id = null;
  
  String asset = null;
  /* < 0 if withdrawal */
  num amount = null;
  /* The value in the account's base currency */
  num value = null;
  /* timestamp's epoch in the user's timezone */
  int at = null;
  /* Fund type */
  String typ = null;
  //enum typEnum {  fm,  fs,  f,  };{
  /* status */
  String st = null;
  //enum stEnum {  O,  C,  };{
  /* the fee in asset */
  num fee = null;
  /* the id of the matching order from other account */
  num ooid = null;
  FullFund();

  @override
  String toString() {
    return 'FullFund[accId=$accId, id=$id, asset=$asset, amount=$amount, value=$value, at=$at, typ=$typ, st=$st, fee=$fee, ooid=$ooid, ]';
  }

  FullFund.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accId = json['accId'];
    id = json['id'];
    asset = json['asset'];
    amount = json['amount'];
    value = json['value'];
    at = json['at'];
    typ = json['typ'];
    st = json['st'];
    fee = json['fee'];
    ooid = json['ooid'];
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
    if (typ != null)
      json['typ'] = typ;
    if (st != null)
      json['st'] = st;
    if (fee != null)
      json['fee'] = fee;
    if (ooid != null)
      json['ooid'] = ooid;
    return json;
  }

  static List<FullFund> listFromJson(List<dynamic> json) {
    return json == null ? List<FullFund>() : json.map((value) => FullFund.fromJson(value)).toList();
  }

  static Map<String, FullFund> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FullFund>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FullFund.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FullFund-objects as value to a dart map
  static Map<String, List<FullFund>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<FullFund>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = FullFund.listFromJson(value);
       });
     }
     return map;
  }
}


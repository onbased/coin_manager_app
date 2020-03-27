part of swagger.api;

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
  //enum typEnum {  fm,  fs,  f,  };
/* status */
  String st = null;
  //enum stEnum {  O,  C,  };
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
    typ =
        json['typ']
    ;
    st =
        json['st']
    ;
    fee =
        json['fee']
    ;
    ooid =
        json['ooid']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'accId': accId,
      'id': id,
      'asset': asset,
      'amount': amount,
      'value': value,
      'at': at,
      'typ': typ,
      'st': st,
      'fee': fee,
      'ooid': ooid
     };
  }

  static List<FullFund> listFromJson(List<dynamic> json) {
    return json == null ? new List<FullFund>() : json.map((value) => new FullFund.fromJson(value)).toList();
  }

  static Map<String, FullFund> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FullFund>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FullFund.fromJson(value));
    }
    return map;
  }
}


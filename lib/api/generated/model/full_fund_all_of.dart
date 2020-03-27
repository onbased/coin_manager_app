part of openapi.api;

class FullFundAllOf {
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
  FullFundAllOf();

  @override
  String toString() {
    return 'FullFundAllOf[typ=$typ, st=$st, fee=$fee, ooid=$ooid, ]';
  }

  FullFundAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    typ = json['typ'];
    st = json['st'];
    fee = json['fee'];
    ooid = json['ooid'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
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

  static List<FullFundAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<FullFundAllOf>() : json.map((value) => FullFundAllOf.fromJson(value)).toList();
  }

  static Map<String, FullFundAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FullFundAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FullFundAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FullFundAllOf-objects as value to a dart map
  static Map<String, List<FullFundAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<FullFundAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = FullFundAllOf.listFromJson(value);
       });
     }
     return map;
  }
}


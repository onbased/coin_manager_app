part of openapi.api;

class SessionDataAllOf {
  /* <accountid> -> <name> map */
  Map<String, AccountBase> accounts = {};
  
  String locale = null;
  
  String uiConfig = null;
  
  double minDispValue = null;
  SessionDataAllOf();

  @override
  String toString() {
    return 'SessionDataAllOf[accounts=$accounts, locale=$locale, uiConfig=$uiConfig, minDispValue=$minDispValue, ]';
  }

  SessionDataAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accounts = (json['accounts'] == null) ?
      null :
      AccountBase.mapFromJson(json['accounts']);
    locale = json['locale'];
    uiConfig = json['uiConfig'];
    minDispValue = json['minDispValue'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (accounts != null)
      json['accounts'] = accounts;
    if (locale != null)
      json['locale'] = locale;
    if (uiConfig != null)
      json['uiConfig'] = uiConfig;
    if (minDispValue != null)
      json['minDispValue'] = minDispValue;
    return json;
  }

  static List<SessionDataAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<SessionDataAllOf>() : json.map((value) => SessionDataAllOf.fromJson(value)).toList();
  }

  static Map<String, SessionDataAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SessionDataAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SessionDataAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SessionDataAllOf-objects as value to a dart map
  static Map<String, List<SessionDataAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SessionDataAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SessionDataAllOf.listFromJson(value);
       });
     }
     return map;
  }
}


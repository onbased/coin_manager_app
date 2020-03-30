part of openapi.api;

class SessionData {
  /* userid */
  int uid = null;
  /* timezone offset (in minutes) */
  int tz = null;
  /* base currency */
  String base = null;
  /* <accountid> -> <name> map */
  Map<String, AccountBase> accounts = {};
  
  String locale = null;
  
  String uiConfig = null;
  
  double minDispValue = null;
  SessionData();

  @override
  String toString() {
    return 'SessionData[uid=$uid, tz=$tz, base=$base, accounts=$accounts, locale=$locale, uiConfig=$uiConfig, minDispValue=$minDispValue, ]';
  }

  SessionData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uid = json['uid'];
    tz = json['tz'];
    base = json['base'];
    accounts = (json['accounts'] == null) ?
      null :
      AccountBase.mapFromJson(json['accounts']);
    locale = json['locale'];
    uiConfig = json['uiConfig'];
    minDispValue = json['minDispValue'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (uid != null)
      json['uid'] = uid;
    if (tz != null)
      json['tz'] = tz;
    if (base != null)
      json['base'] = base;
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

  static List<SessionData> listFromJson(List<dynamic> json) {
    return json == null ? List<SessionData>() : json.map((value) => SessionData.fromJson(value)).toList();
  }

  static Map<String, SessionData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SessionData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SessionData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SessionData-objects as value to a dart map
  static Map<String, List<SessionData>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SessionData>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SessionData.listFromJson(value);
       });
     }
     return map;
  }
}


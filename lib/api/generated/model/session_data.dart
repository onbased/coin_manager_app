part of swagger.api;

class SessionData {
  /* userid */
  int uid = null;
  
/* timezone offset (in minutes) */
  int tz = null;
  
/* base currency */
  String base = null;
  

  Accounts accounts = null;
  

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
    uid =
        json['uid']
    ;
    tz =
        json['tz']
    ;
    base =
        json['base']
    ;
    accounts =
      
      
      new Accounts.fromJson(json['accounts'])
;
    locale =
        json['locale']
    ;
    uiConfig =
        json['uiConfig']
    ;
    minDispValue =
        json['minDispValue']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'tz': tz,
      'base': base,
      'accounts': accounts,
      'locale': locale,
      'uiConfig': uiConfig,
      'minDispValue': minDispValue
     };
  }

  static List<SessionData> listFromJson(List<dynamic> json) {
    return json == null ? new List<SessionData>() : json.map((value) => new SessionData.fromJson(value)).toList();
  }

  static Map<String, SessionData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SessionData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SessionData.fromJson(value));
    }
    return map;
  }
}


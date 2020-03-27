part of swagger.api;

class Session {
  /* userid */
  int uid = null;
  
/* timezone offset (in minutes) */
  int tz = null;
  
/* base currency */
  String base = null;
  
  Session();

  @override
  String toString() {
    return 'Session[uid=$uid, tz=$tz, base=$base, ]';
  }

  Session.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'tz': tz,
      'base': base
     };
  }

  static List<Session> listFromJson(List<dynamic> json) {
    return json == null ? new List<Session>() : json.map((value) => new Session.fromJson(value)).toList();
  }

  static Map<String, Session> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Session>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Session.fromJson(value));
    }
    return map;
  }
}


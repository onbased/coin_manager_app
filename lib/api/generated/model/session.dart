part of openapi.api;

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
    uid = json['uid'];
    tz = json['tz'];
    base = json['base'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (uid != null)
      json['uid'] = uid;
    if (tz != null)
      json['tz'] = tz;
    if (base != null)
      json['base'] = base;
    return json;
  }

  static List<Session> listFromJson(List<dynamic> json) {
    return json == null ? List<Session>() : json.map((value) => Session.fromJson(value)).toList();
  }

  static Map<String, Session> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Session>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Session.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Session-objects as value to a dart map
  static Map<String, List<Session>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Session>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Session.listFromJson(value);
       });
     }
     return map;
  }
}


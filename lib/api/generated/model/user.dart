part of openapi.api;

class User {
  
  String email = null;
  
  String name = null;
  /* Only expected in POST. Never returned with GET */
  String pwd = null;
  
  String loginid = null;
  
  String baseCurrency = null;
  
  num minDispVal = null;
  
  String tz = null;
  
  String locale = null;
  User();

  @override
  String toString() {
    return 'User[email=$email, name=$name, pwd=$pwd, loginid=$loginid, baseCurrency=$baseCurrency, minDispVal=$minDispVal, tz=$tz, locale=$locale, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    name = json['name'];
    pwd = json['pwd'];
    loginid = json['loginid'];
    baseCurrency = json['baseCurrency'];
    minDispVal = json['minDispVal'];
    tz = json['tz'];
    locale = json['locale'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (email != null)
      json['email'] = email;
    if (name != null)
      json['name'] = name;
    if (pwd != null)
      json['pwd'] = pwd;
    if (loginid != null)
      json['loginid'] = loginid;
    if (baseCurrency != null)
      json['baseCurrency'] = baseCurrency;
    if (minDispVal != null)
      json['minDispVal'] = minDispVal;
    if (tz != null)
      json['tz'] = tz;
    if (locale != null)
      json['locale'] = locale;
    return json;
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? List<User>() : json.map((value) => User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, User>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<User>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = User.listFromJson(value);
       });
     }
     return map;
  }
}


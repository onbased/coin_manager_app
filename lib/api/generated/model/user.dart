part of swagger.api;

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
    email =
        json['email']
    ;
    name =
        json['name']
    ;
    pwd =
        json['pwd']
    ;
    loginid =
        json['loginid']
    ;
    baseCurrency =
        json['baseCurrency']
    ;
    minDispVal =
        json['minDispVal']
    ;
    tz =
        json['tz']
    ;
    locale =
        json['locale']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'name': name,
      'pwd': pwd,
      'loginid': loginid,
      'baseCurrency': baseCurrency,
      'minDispVal': minDispVal,
      'tz': tz,
      'locale': locale
     };
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? new List<User>() : json.map((value) => new User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, User>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new User.fromJson(value));
    }
    return map;
  }
}


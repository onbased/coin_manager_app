part of swagger.api;

class UserError {
  
  FieldError email = null;
  

  FieldError name = null;
  

  FieldError pwd = null;
  

  FieldError loginid = null;
  

  FieldError baseCurrency = null;
  

  FieldError minDispVal = null;
  

  FieldError tz = null;
  

  FieldError locale = null;
  
  UserError();

  @override
  String toString() {
    return 'UserError[email=$email, name=$name, pwd=$pwd, loginid=$loginid, baseCurrency=$baseCurrency, minDispVal=$minDispVal, tz=$tz, locale=$locale, ]';
  }

  UserError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email =
      
      
      new FieldError.fromJson(json['email'])
;
    name =
      
      
      new FieldError.fromJson(json['name'])
;
    pwd =
      
      
      new FieldError.fromJson(json['pwd'])
;
    loginid =
      
      
      new FieldError.fromJson(json['loginid'])
;
    baseCurrency =
      
      
      new FieldError.fromJson(json['baseCurrency'])
;
    minDispVal =
      
      
      new FieldError.fromJson(json['minDispVal'])
;
    tz =
      
      
      new FieldError.fromJson(json['tz'])
;
    locale =
      
      
      new FieldError.fromJson(json['locale'])
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

  static List<UserError> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserError>() : json.map((value) => new UserError.fromJson(value)).toList();
  }

  static Map<String, UserError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserError.fromJson(value));
    }
    return map;
  }
}


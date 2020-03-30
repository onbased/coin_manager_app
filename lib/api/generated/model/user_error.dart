part of openapi.api;

class UserError {
  
  FieldError email = null;
  //enum emailEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };{
  
  FieldError name = null;
  //enum nameEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };{
  
  FieldError pwd = null;
  //enum pwdEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };{
  
  FieldError loginid = null;
  //enum loginidEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };{
  
  FieldError baseCurrency = null;
  //enum baseCurrencyEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };{
  
  FieldError minDispVal = null;
  //enum minDispValEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };{
  
  FieldError tz = null;
  //enum tzEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };{
  
  FieldError locale = null;
  //enum localeEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };{
  UserError();

  @override
  String toString() {
    return 'UserError[email=$email, name=$name, pwd=$pwd, loginid=$loginid, baseCurrency=$baseCurrency, minDispVal=$minDispVal, tz=$tz, locale=$locale, ]';
  }

  UserError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = (json['email'] == null) ?
      null :
      FieldError.fromJson(json['email']);
    name = (json['name'] == null) ?
      null :
      FieldError.fromJson(json['name']);
    pwd = (json['pwd'] == null) ?
      null :
      FieldError.fromJson(json['pwd']);
    loginid = (json['loginid'] == null) ?
      null :
      FieldError.fromJson(json['loginid']);
    baseCurrency = (json['baseCurrency'] == null) ?
      null :
      FieldError.fromJson(json['baseCurrency']);
    minDispVal = (json['minDispVal'] == null) ?
      null :
      FieldError.fromJson(json['minDispVal']);
    tz = (json['tz'] == null) ?
      null :
      FieldError.fromJson(json['tz']);
    locale = (json['locale'] == null) ?
      null :
      FieldError.fromJson(json['locale']);
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

  static List<UserError> listFromJson(List<dynamic> json) {
    return json == null ? List<UserError>() : json.map((value) => UserError.fromJson(value)).toList();
  }

  static Map<String, UserError> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UserError>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserError.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserError-objects as value to a dart map
  static Map<String, List<UserError>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UserError>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UserError.listFromJson(value);
       });
     }
     return map;
  }
}


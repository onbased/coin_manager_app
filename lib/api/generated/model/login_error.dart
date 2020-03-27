part of openapi.api;

class LoginError {
  
  FieldError user = null;
  //enum userEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };{
  
  FieldError password = null;
  //enum passwordEnum {  required,  invalid,  nonUnique,  tooShort,  tooLong,  };{
  LoginError();

  @override
  String toString() {
    return 'LoginError[user=$user, password=$password, ]';
  }

  LoginError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    user = (json['user'] == null) ?
      null :
      FieldError.fromJson(json['user']);
    password = (json['password'] == null) ?
      null :
      FieldError.fromJson(json['password']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (user != null)
      json['user'] = user;
    if (password != null)
      json['password'] = password;
    return json;
  }

  static List<LoginError> listFromJson(List<dynamic> json) {
    return json == null ? List<LoginError>() : json.map((value) => LoginError.fromJson(value)).toList();
  }

  static Map<String, LoginError> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LoginError>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LoginError.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LoginError-objects as value to a dart map
  static Map<String, List<LoginError>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<LoginError>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = LoginError.listFromJson(value);
       });
     }
     return map;
  }
}


part of swagger.api;

class LoginError {
  
  FieldError user = null;
  

  FieldError password = null;
  
  LoginError();

  @override
  String toString() {
    return 'LoginError[user=$user, password=$password, ]';
  }

  LoginError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    user =
      
      
      new FieldError.fromJson(json['user'])
;
    password =
      
      
      new FieldError.fromJson(json['password'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user,
      'password': password
     };
  }

  static List<LoginError> listFromJson(List<dynamic> json) {
    return json == null ? new List<LoginError>() : json.map((value) => new LoginError.fromJson(value)).toList();
  }

  static Map<String, LoginError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LoginError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LoginError.fromJson(value));
    }
    return map;
  }
}


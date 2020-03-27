part of swagger.api;

class LoginReq {
  
  String user = null;
  

  String password = null;
  
  LoginReq();

  @override
  String toString() {
    return 'LoginReq[user=$user, password=$password, ]';
  }

  LoginReq.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    user =
        json['user']
    ;
    password =
        json['password']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user,
      'password': password
     };
  }

  static List<LoginReq> listFromJson(List<dynamic> json) {
    return json == null ? new List<LoginReq>() : json.map((value) => new LoginReq.fromJson(value)).toList();
  }

  static Map<String, LoginReq> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LoginReq>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LoginReq.fromJson(value));
    }
    return map;
  }
}


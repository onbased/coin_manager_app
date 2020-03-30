part of openapi.api;

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
    user = json['user'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (user != null)
      json['user'] = user;
    if (password != null)
      json['password'] = password;
    return json;
  }

  static List<LoginReq> listFromJson(List<dynamic> json) {
    return json == null ? List<LoginReq>() : json.map((value) => LoginReq.fromJson(value)).toList();
  }

  static Map<String, LoginReq> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LoginReq>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LoginReq.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LoginReq-objects as value to a dart map
  static Map<String, List<LoginReq>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<LoginReq>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = LoginReq.listFromJson(value);
       });
     }
     return map;
  }
}


part of swagger.api;

class Config {
  
  CfgField name = null;
  

  CfgField loginid = null;
  

  CfgField email = null;
  

  PwdField password = null;
  

  List<String> displayCurrencies = [];
  
  Config();

  @override
  String toString() {
    return 'Config[name=$name, loginid=$loginid, email=$email, password=$password, displayCurrencies=$displayCurrencies, ]';
  }

  Config.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
      
      
      new CfgField.fromJson(json['name'])
;
    loginid =
      
      
      new CfgField.fromJson(json['loginid'])
;
    email =
      
      
      new CfgField.fromJson(json['email'])
;
    password =
      
      
      new PwdField.fromJson(json['password'])
;
    displayCurrencies =
        (json['displayCurrencies'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'loginid': loginid,
      'email': email,
      'password': password,
      'displayCurrencies': displayCurrencies
     };
  }

  static List<Config> listFromJson(List<dynamic> json) {
    return json == null ? new List<Config>() : json.map((value) => new Config.fromJson(value)).toList();
  }

  static Map<String, Config> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Config>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Config.fromJson(value));
    }
    return map;
  }
}


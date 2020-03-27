part of openapi.api;

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
    name = (json['name'] == null) ?
      null :
      CfgField.fromJson(json['name']);
    loginid = (json['loginid'] == null) ?
      null :
      CfgField.fromJson(json['loginid']);
    email = (json['email'] == null) ?
      null :
      CfgField.fromJson(json['email']);
    password = (json['password'] == null) ?
      null :
      PwdField.fromJson(json['password']);
    displayCurrencies = (json['displayCurrencies'] == null) ?
      null :
      (json['displayCurrencies'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (loginid != null)
      json['loginid'] = loginid;
    if (email != null)
      json['email'] = email;
    if (password != null)
      json['password'] = password;
    if (displayCurrencies != null)
      json['displayCurrencies'] = displayCurrencies;
    return json;
  }

  static List<Config> listFromJson(List<dynamic> json) {
    return json == null ? List<Config>() : json.map((value) => Config.fromJson(value)).toList();
  }

  static Map<String, Config> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Config>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Config.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Config-objects as value to a dart map
  static Map<String, List<Config>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Config>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Config.listFromJson(value);
       });
     }
     return map;
  }
}


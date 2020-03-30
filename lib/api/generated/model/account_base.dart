part of openapi.api;

class AccountBase {
  
  String name = null;
  /* base asset */
  String base = null;
  AccountBase();

  @override
  String toString() {
    return 'AccountBase[name=$name, base=$base, ]';
  }

  AccountBase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    base = json['base'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (base != null)
      json['base'] = base;
    return json;
  }

  static List<AccountBase> listFromJson(List<dynamic> json) {
    return json == null ? List<AccountBase>() : json.map((value) => AccountBase.fromJson(value)).toList();
  }

  static Map<String, AccountBase> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AccountBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AccountBase.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AccountBase-objects as value to a dart map
  static Map<String, List<AccountBase>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AccountBase>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AccountBase.listFromJson(value);
       });
     }
     return map;
  }
}


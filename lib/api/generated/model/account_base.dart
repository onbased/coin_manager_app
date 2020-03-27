part of swagger.api;

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
    name =
        json['name']
    ;
    base =
        json['base']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'base': base
     };
  }

  static List<AccountBase> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountBase>() : json.map((value) => new AccountBase.fromJson(value)).toList();
  }

  static Map<String, AccountBase> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountBase>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountBase.fromJson(value));
    }
    return map;
  }
}


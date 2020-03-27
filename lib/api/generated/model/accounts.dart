part of swagger.api;

class Accounts {
    Accounts();

  @override
  String toString() {
    return 'Accounts[]';
  }

  Accounts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Accounts> listFromJson(List<dynamic> json) {
    return json == null ? new List<Accounts>() : json.map((value) => new Accounts.fromJson(value)).toList();
  }

  static Map<String, Accounts> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Accounts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Accounts.fromJson(value));
    }
    return map;
  }
}


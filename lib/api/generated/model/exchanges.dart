part of swagger.api;

class Exchanges {
    Exchanges();

  @override
  String toString() {
    return 'Exchanges[]';
  }

  Exchanges.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Exchanges> listFromJson(List<dynamic> json) {
    return json == null ? new List<Exchanges>() : json.map((value) => new Exchanges.fromJson(value)).toList();
  }

  static Map<String, Exchanges> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Exchanges>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Exchanges.fromJson(value));
    }
    return map;
  }
}


part of swagger.api;

class Prices {
    Prices();

  @override
  String toString() {
    return 'Prices[]';
  }

  Prices.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Prices> listFromJson(List<dynamic> json) {
    return json == null ? new List<Prices>() : json.map((value) => new Prices.fromJson(value)).toList();
  }

  static Map<String, Prices> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Prices>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Prices.fromJson(value));
    }
    return map;
  }
}


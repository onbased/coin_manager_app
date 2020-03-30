part of openapi.api;

class PwdFieldAllOf {
  /* the charaters recognized as 'special character'. one of them must be in the password value */
  String specChars = null;
  PwdFieldAllOf();

  @override
  String toString() {
    return 'PwdFieldAllOf[specChars=$specChars, ]';
  }

  PwdFieldAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    specChars = json['specChars'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (specChars != null)
      json['specChars'] = specChars;
    return json;
  }

  static List<PwdFieldAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<PwdFieldAllOf>() : json.map((value) => PwdFieldAllOf.fromJson(value)).toList();
  }

  static Map<String, PwdFieldAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PwdFieldAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PwdFieldAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PwdFieldAllOf-objects as value to a dart map
  static Map<String, List<PwdFieldAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PwdFieldAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PwdFieldAllOf.listFromJson(value);
       });
     }
     return map;
  }
}


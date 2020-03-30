part of openapi.api;

class CfgField {
  /* 0 means the fiel can be empty */
  int minLen = null;
  
  int maxLen = null;
  CfgField();

  @override
  String toString() {
    return 'CfgField[minLen=$minLen, maxLen=$maxLen, ]';
  }

  CfgField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    minLen = json['minLen'];
    maxLen = json['maxLen'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (minLen != null)
      json['minLen'] = minLen;
    if (maxLen != null)
      json['maxLen'] = maxLen;
    return json;
  }

  static List<CfgField> listFromJson(List<dynamic> json) {
    return json == null ? List<CfgField>() : json.map((value) => CfgField.fromJson(value)).toList();
  }

  static Map<String, CfgField> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CfgField>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CfgField.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CfgField-objects as value to a dart map
  static Map<String, List<CfgField>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CfgField>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CfgField.listFromJson(value);
       });
     }
     return map;
  }
}


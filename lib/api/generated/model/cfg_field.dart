part of swagger.api;

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
    minLen =
        json['minLen']
    ;
    maxLen =
        json['maxLen']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'minLen': minLen,
      'maxLen': maxLen
     };
  }

  static List<CfgField> listFromJson(List<dynamic> json) {
    return json == null ? new List<CfgField>() : json.map((value) => new CfgField.fromJson(value)).toList();
  }

  static Map<String, CfgField> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CfgField>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CfgField.fromJson(value));
    }
    return map;
  }
}


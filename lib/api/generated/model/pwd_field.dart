part of swagger.api;

class PwdField {
  /* 0 means the fiel can be empty */
  int minLen = null;
  

  int maxLen = null;
  
/* the charaters recognized as 'special character'. one of them must be in the password value */
  String specChars = null;
  
  PwdField();

  @override
  String toString() {
    return 'PwdField[minLen=$minLen, maxLen=$maxLen, specChars=$specChars, ]';
  }

  PwdField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    minLen =
        json['minLen']
    ;
    maxLen =
        json['maxLen']
    ;
    specChars =
        json['specChars']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'minLen': minLen,
      'maxLen': maxLen,
      'specChars': specChars
     };
  }

  static List<PwdField> listFromJson(List<dynamic> json) {
    return json == null ? new List<PwdField>() : json.map((value) => new PwdField.fromJson(value)).toList();
  }

  static Map<String, PwdField> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PwdField>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PwdField.fromJson(value));
    }
    return map;
  }
}


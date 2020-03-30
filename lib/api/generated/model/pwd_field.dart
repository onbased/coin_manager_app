part of openapi.api;

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
    minLen = json['minLen'];
    maxLen = json['maxLen'];
    specChars = json['specChars'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (minLen != null)
      json['minLen'] = minLen;
    if (maxLen != null)
      json['maxLen'] = maxLen;
    if (specChars != null)
      json['specChars'] = specChars;
    return json;
  }

  static List<PwdField> listFromJson(List<dynamic> json) {
    return json == null ? List<PwdField>() : json.map((value) => PwdField.fromJson(value)).toList();
  }

  static Map<String, PwdField> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PwdField>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PwdField.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PwdField-objects as value to a dart map
  static Map<String, List<PwdField>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PwdField>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PwdField.listFromJson(value);
       });
     }
     return map;
  }
}


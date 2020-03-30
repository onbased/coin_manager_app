part of openapi.api;

class InlineResponse500 {
  /* the unique log id of the error in the error log */
  String id = null;
  InlineResponse500();

  @override
  String toString() {
    return 'InlineResponse500[id=$id, ]';
  }

  InlineResponse500.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<InlineResponse500> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineResponse500>() : json.map((value) => InlineResponse500.fromJson(value)).toList();
  }

  static Map<String, InlineResponse500> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineResponse500>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineResponse500.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineResponse500-objects as value to a dart map
  static Map<String, List<InlineResponse500>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineResponse500>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineResponse500.listFromJson(value);
       });
     }
     return map;
  }
}


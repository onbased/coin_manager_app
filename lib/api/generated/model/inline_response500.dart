part of swagger.api;

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
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id
     };
  }

  static List<InlineResponse500> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse500>() : json.map((value) => new InlineResponse500.fromJson(value)).toList();
  }

  static Map<String, InlineResponse500> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse500>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse500.fromJson(value));
    }
    return map;
  }
}


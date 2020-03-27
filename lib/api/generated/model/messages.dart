part of openapi.api;

class Messages {
  
  List<String> info = [];
  
  List<String> warn = [];
  Messages();

  @override
  String toString() {
    return 'Messages[info=$info, warn=$warn, ]';
  }

  Messages.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    info = (json['info'] == null) ?
      null :
      (json['info'] as List).cast<String>();
    warn = (json['warn'] == null) ?
      null :
      (json['warn'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (info != null)
      json['info'] = info;
    if (warn != null)
      json['warn'] = warn;
    return json;
  }

  static List<Messages> listFromJson(List<dynamic> json) {
    return json == null ? List<Messages>() : json.map((value) => Messages.fromJson(value)).toList();
  }

  static Map<String, Messages> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Messages>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Messages.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Messages-objects as value to a dart map
  static Map<String, List<Messages>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Messages>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Messages.listFromJson(value);
       });
     }
     return map;
  }
}


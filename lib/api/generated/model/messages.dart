part of swagger.api;

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
    info =
        (json['info'] as List).map((item) => item as String).toList()
    ;
    warn =
        (json['warn'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'info': info,
      'warn': warn
     };
  }

  static List<Messages> listFromJson(List<dynamic> json) {
    return json == null ? new List<Messages>() : json.map((value) => new Messages.fromJson(value)).toList();
  }

  static Map<String, Messages> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Messages>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Messages.fromJson(value));
    }
    return map;
  }
}


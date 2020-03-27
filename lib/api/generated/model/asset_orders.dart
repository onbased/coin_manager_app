part of swagger.api;

class AssetOrders {
    AssetOrders();

  @override
  String toString() {
    return 'AssetOrders[]';
  }

  AssetOrders.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<AssetOrders> listFromJson(List<dynamic> json) {
    return json == null ? new List<AssetOrders>() : json.map((value) => new AssetOrders.fromJson(value)).toList();
  }

  static Map<String, AssetOrders> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AssetOrders>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AssetOrders.fromJson(value));
    }
    return map;
  }
}


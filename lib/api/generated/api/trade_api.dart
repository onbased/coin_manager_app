part of swagger.api;



class TradeApi {
  final ApiClient apiClient;

  TradeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get open orders + their actual prices
  ///
  /// 
  Future<AccountOrders> openTrades(int a) async {
    Object postBody = null;

    // verify required params are set
    if(a == null) {
     throw new ApiException(400, "Missing required param: a");
    }

    // create path and map variables
    String path = "/trades".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "a", a));
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["private"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'AccountOrders') as AccountOrders ;
    } else {
      return null;
    }
  }
}

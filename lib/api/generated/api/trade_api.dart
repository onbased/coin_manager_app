part of openapi.api;



class TradeApi {
  final ApiClient apiClient;

  TradeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get open orders + their actual prices with HTTP info returned
  ///
  /// 
  Future<Response> openTradesWithHttpInfo(int a) async {
    Object postBody;

    // verify required params are set
    if(a == null) {
     throw ApiException(400, "Missing required param: a");
    }

    // create path and map variables
    String path = "/trades".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "a", a));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["private"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
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
    return response;
  }

  /// Get open orders + their actual prices
  ///
  /// 
  Future<AccountOrders> openTrades(int a) async {
    Response response = await openTradesWithHttpInfo(a);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'AccountOrders') as AccountOrders;
    } else {
      return null;
    }
  }

}

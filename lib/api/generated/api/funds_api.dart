part of swagger.api;



class FundsApi {
  final ApiClient apiClient;

  FundsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get funds
  ///
  /// 
  Future<Funds> funds({ int a, String t }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/funds".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(a != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "a", a));
    }
    if(t != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "t", t));
    }
    
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
          apiClient.deserialize(response.body, 'Funds') as Funds ;
    } else {
      return null;
    }
  }
}

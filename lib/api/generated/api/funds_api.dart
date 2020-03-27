part of openapi.api;



class FundsApi {
  final ApiClient apiClient;

  FundsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get funds with HTTP info returned
  ///
  /// 
  Future<Response> fundsWithHttpInfo({ int a, String t }) async {
    Object postBody;

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

  /// Get funds
  ///
  /// 
  Future<Funds> funds({ int a, String t }) async {
    Response response = await fundsWithHttpInfo( a: a, t: t );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Funds') as Funds;
    } else {
      return null;
    }
  }

}

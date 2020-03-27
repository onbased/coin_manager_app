part of openapi.api;



class ConfigApi {
  final ApiClient apiClient;

  ConfigApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// The common server + client configuration required by the signup / profile page with HTTP info returned
  ///
  /// The server uses the same for parameters validation from &#x60;conf/common-config.json&#x60; See &#x60;Global.commonConfig&#x60;
  Future<Response> configGetWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/config".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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

  /// The common server + client configuration required by the signup / profile page
  ///
  /// The server uses the same for parameters validation from &#x60;conf/common-config.json&#x60; See &#x60;Global.commonConfig&#x60;
  Future<Config> configGet() async {
    Response response = await configGetWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Config') as Config;
    } else {
      return null;
    }
  }

}

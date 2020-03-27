part of swagger.api;



class ConfigApi {
  final ApiClient apiClient;

  ConfigApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// The common server + client configuration required by the signup / profile page
  ///
  /// The server uses the same for parameters validation from &#x60;conf/common-config.json&#x60; See &#x60;Global.commonConfig&#x60;
  Future<Config> configGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/config".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
          apiClient.deserialize(response.body, 'Config') as Config ;
    } else {
      return null;
    }
  }
}

library api;

import 'dart:async';
import 'package:http/http.dart';

import 'generated/api.dart' as gen;
export 'generated/api.dart' hide ApiClient;

void initSessionHandling() => gen.defaultApiClient = ApiClient();

class ApiClient extends gen.ApiClient {
  static const List<String> httpMethodsWithBody = ['POST', 'PUT', 'PATCH'];
  final String sessionCookieName;
  String _sessionCookie;

  ApiClient(
      {String basePath: "https://coinmanager.net/api",
      this.sessionCookieName: 'PLAY_SESSION'})
      : super(basePath: basePath);

  @override
  Future<Response> invokeAPI(
      String path,
      String method,
      Iterable<gen.QueryParam> queryParams,
      Object body,
      Map<String, String> headerParams,
      Map<String, String> formParams,
      String contentType,
      List<String> authNames) async {
    headerParams =
        _setSessionCookieToRequestHeaders(headerParams, _sessionCookie);

    if (!httpMethodsWithBody.contains(method))
      contentType = 'application/octet-stream';

    Response response = await super.invokeAPI(path, method, queryParams, body,
        headerParams, formParams, contentType, authNames);

    _sessionCookie = _getSessionCookieFromResponseHeaders(response.headers);
    return response;
  }

  String _getSessionCookieFromResponseHeaders(Map<String, String> headers) {
    for (MapEntry<String, String> entry in headers.entries) {
      if (entry.key.trim().toLowerCase() == 'set-cookie') {
        int kvIndex = entry.value.indexOf('=');
        String cookieName = entry.value.substring(0, kvIndex);
        String cookieValue = entry.value.substring(kvIndex + 1);

        if (cookieName.trim().toLowerCase() == sessionCookieName.toLowerCase())
          return cookieValue.split(';').first;
      }
    }

    return null;
  }

  Map<String, String> _setSessionCookieToRequestHeaders(
      Map<String, String> headers, String sessionCookie) {
    headers ??= {};

    String cookieHeaderName = 'Cookie';
    String cookieHeaderValues =
        sessionCookie != null ? '$sessionCookieName=$sessionCookie' : '';

    for (MapEntry<String, String> entry in headers.entries) {
      if (entry.key.trim().toLowerCase() == 'cookie') {
        cookieHeaderName = entry.key;
        String existingSessionCookieName;
        List<String> cookies = [];

        for (String cookie in entry.value.split(';')) {
          int kvIndex = cookie.indexOf('=');
          String cookieName = cookie.substring(0, kvIndex);
          String cookieValue = cookie.substring(kvIndex + 1);

          if (cookieName.trim().toLowerCase() ==
              sessionCookieName.toLowerCase())
            existingSessionCookieName = cookieName;
          else
            cookies.add("$cookieName=$cookieValue");
        }

        if (sessionCookie != null && sessionCookie.isNotEmpty)
          cookies.add(
              "${existingSessionCookieName ?? sessionCookieName}=$sessionCookie");

        cookieHeaderValues = cookies.join(';');
      }
    }

    if (cookieHeaderValues.isNotEmpty)
      headers[cookieHeaderName] = cookieHeaderValues;

    return headers;
  }
}

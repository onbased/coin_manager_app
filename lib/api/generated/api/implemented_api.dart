import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:coin_manager/api/generated/model/user_error.dart';
import 'package:coin_manager/api/generated/model/inline_response500.dart';
import 'package:coin_manager/api/generated/model/config.dart';
import 'package:coin_manager/api/generated/model/user.dart';

class ImplementedApi {
    final Dio _dio;
    Serializers _serializers;

    ImplementedApi(this._dio, this._serializers);

        /// The common server + client configuration required by the signup / profile page
        ///
        /// The server uses the same for parameters validation from &#x60;conf/common-config.json&#x60; See &#x60;Global.commonConfig&#x60;
        Future<Response<Config>>configGet({ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/config";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = [];



            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'get'.toUpperCase(),
            headers: headerParams,
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            ).then((response) {

        var serializer = _serializers.serializerForType(Config);
        var data = _serializers.deserializeWith<Config>(serializer, response.data);

            return Response<Config>(
                data: data,
                headers: response.headers,
                request: response.request,
                redirects: response.redirects,
                statusCode: response.statusCode,
                statusMessage: response.statusMessage,
                extra: response.extra,
            );
            });
            }
        /// Update the user on the actual session
        ///
        /// 
        Future<Response>mePost({ User u,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/me";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(u);
            var jsonu = json.encode(serializedBody);
            bodyData = jsonu;

            return _dio.request(
            _path,
            queryParameters: queryParams,
            data: bodyData,
            options: Options(
            method: 'post'.toUpperCase(),
            headers: headerParams,
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        }

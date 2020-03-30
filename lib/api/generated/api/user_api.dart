import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:coin_manager/api/generated/model/session_data.dart';
import 'package:coin_manager/api/generated/model/login_req.dart';
import 'package:coin_manager/api/generated/model/login_error.dart';
import 'package:coin_manager/api/generated/model/user_error.dart';
import 'package:coin_manager/api/generated/model/inline_response500.dart';
import 'package:coin_manager/api/generated/model/user.dart';

class UserApi {
    final Dio _dio;
    Serializers _serializers;

    UserApi(this._dio, this._serializers);

        /// Authenticate user and create session
        ///
        /// 
        Future<Response<SessionData>>loginPost({ LoginReq loginReq,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/login";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

        queryParams.removeWhere((key, value) => value == null);
        headerParams.removeWhere((key, value) => value == null);

        List<String> contentTypes = ["application/json"];


            var serializedBody = _serializers.serialize(loginReq);
            var jsonloginReq = json.encode(serializedBody);
            bodyData = jsonloginReq;

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
            ).then((response) {

        var serializer = _serializers.serializerForType(SessionData);
        var data = _serializers.deserializeWith<SessionData>(serializer, response.data);

            return Response<SessionData>(
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
        /// Info about the user of the actual session
        ///
        /// 
        Future<Response>meGet({ CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/me";

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
            );
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
        /// Create a new user
        ///
        /// 
        Future<Response>signupPut({ User u,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/signup";

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
            method: 'put'.toUpperCase(),
            headers: headerParams,
            contentType: contentTypes.isNotEmpty ? contentTypes[0] : "application/json",
            ),
            cancelToken: cancelToken,
            );
            }
        }

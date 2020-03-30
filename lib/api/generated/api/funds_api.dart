import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'package:coin_manager/api/generated/model/inline_response500.dart';
import 'package:coin_manager/api/generated/model/funds.dart';
import 'package:coin_manager/api/generated/model/field_error.dart';

class FundsApi {
    final Dio _dio;
    Serializers _serializers;

    FundsApi(this._dio, this._serializers);

        /// Get funds
        ///
        /// 
        Future<Response<Funds>>funds({ int a,String t,CancelToken cancelToken, Map<String, String> headers,}) async {

        String _path = "/funds";

        Map<String, dynamic> queryParams = {};
        Map<String, String> headerParams = Map.from(headers ?? {});
        dynamic bodyData;

                queryParams[r'a'] = a;
                queryParams[r't'] = t;
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

        var serializer = _serializers.serializerForType(Funds);
        var data = _serializers.deserializeWith<Funds>(serializer, response.data);

            return Response<Funds>(
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
        }

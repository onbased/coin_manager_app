library coin_manager.api;

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:coin_manager/api/generated/serializers.dart';
import 'package:coin_manager/api/generated/api/config_api.dart';
import 'package:coin_manager/api/generated/api/funds_api.dart';
import 'package:coin_manager/api/generated/api/implemented_api.dart';
import 'package:coin_manager/api/generated/api/trade_api.dart';
import 'package:coin_manager/api/generated/api/user_api.dart';

class CoinManagerApiGenerated {
  Dio dio;
  Serializers serializers;
  String basePath = "/https://coinmanager.net/api";
  // String basePath = "/https%3A%2F%2Fcoinmanager.net%2Fapi";

  CoinManagerApiGenerated({this.dio, Serializers serializers}) {
    if (dio == null) {
      BaseOptions options = new BaseOptions(
        baseUrl: basePath,
        connectTimeout: 5000,
        receiveTimeout: 3000,
      );
      this.dio = new Dio(options);
    }

    this.serializers = serializers ?? standardSerializers;
  }

  /**
    * Get ConfigApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ConfigApi getConfigApi() {
    return ConfigApi(dio, serializers);
  }

  /**
    * Get FundsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  FundsApi getFundsApi() {
    return FundsApi(dio, serializers);
  }

  /**
    * Get ImplementedApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  ImplementedApi getImplementedApi() {
    return ImplementedApi(dio, serializers);
  }

  /**
    * Get TradeApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  TradeApi getTradeApi() {
    return TradeApi(dio, serializers);
  }

  /**
    * Get UserApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
  UserApi getUserApi() {
    return UserApi(dio, serializers);
  }
}

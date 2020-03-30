library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/config_api.dart';
part 'api/funds_api.dart';
part 'api/implemented_api.dart';
part 'api/trade_api.dart';
part 'api/user_api.dart';

part 'model/account_base.dart';
part 'model/account_orders.dart';
part 'model/cfg_field.dart';
part 'model/config.dart';
part 'model/field_error.dart';
part 'model/full_fund.dart';
part 'model/full_fund_all_of.dart';
part 'model/fund.dart';
part 'model/funds.dart';
part 'model/inline_response500.dart';
part 'model/login_error.dart';
part 'model/login_req.dart';
part 'model/messages.dart';
part 'model/order.dart';
part 'model/pwd_field.dart';
part 'model/pwd_field_all_of.dart';
part 'model/session.dart';
part 'model/session_data.dart';
part 'model/session_data_all_of.dart';
part 'model/user.dart';
part 'model/user_error.dart';


ApiClient defaultApiClient = ApiClient();

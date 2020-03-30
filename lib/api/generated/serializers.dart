library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:coin_manager/api/generated/model/account_base.dart';
import 'package:coin_manager/api/generated/model/account_orders.dart';
import 'package:coin_manager/api/generated/model/cfg_field.dart';
import 'package:coin_manager/api/generated/model/config.dart';
import 'package:coin_manager/api/generated/model/field_error.dart';
import 'package:coin_manager/api/generated/model/full_fund.dart';
import 'package:coin_manager/api/generated/model/full_fund_all_of.dart';
import 'package:coin_manager/api/generated/model/fund.dart';
import 'package:coin_manager/api/generated/model/funds.dart';
import 'package:coin_manager/api/generated/model/inline_response500.dart';
import 'package:coin_manager/api/generated/model/login_error.dart';
import 'package:coin_manager/api/generated/model/login_req.dart';
import 'package:coin_manager/api/generated/model/messages.dart';
import 'package:coin_manager/api/generated/model/order.dart';
import 'package:coin_manager/api/generated/model/pwd_field.dart';
import 'package:coin_manager/api/generated/model/pwd_field_all_of.dart';
import 'package:coin_manager/api/generated/model/session.dart';
import 'package:coin_manager/api/generated/model/session_data.dart';
import 'package:coin_manager/api/generated/model/session_data_all_of.dart';
import 'package:coin_manager/api/generated/model/user.dart';
import 'package:coin_manager/api/generated/model/user_error.dart';


part 'serializers.g.dart';

@SerializersFor(const [
AccountBase,
AccountOrders,
CfgField,
Config,
FieldError,
FullFund,
FullFundAllOf,
Fund,
Funds,
InlineResponse500,
LoginError,
LoginReq,
Messages,
Order,
PwdField,
PwdFieldAllOf,
Session,
SessionData,
SessionDataAllOf,
User,
UserError,

])

//allow all models to be serialized within a list
Serializers serializers = (_$serializers.toBuilder()
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AccountBase)]),
() => new ListBuilder<AccountBase>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AccountOrders)]),
() => new ListBuilder<AccountOrders>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CfgField)]),
() => new ListBuilder<CfgField>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Config)]),
() => new ListBuilder<Config>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(FieldError)]),
() => new ListBuilder<FieldError>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(FullFund)]),
() => new ListBuilder<FullFund>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(FullFundAllOf)]),
() => new ListBuilder<FullFundAllOf>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Fund)]),
() => new ListBuilder<Fund>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Funds)]),
() => new ListBuilder<Funds>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(InlineResponse500)]),
() => new ListBuilder<InlineResponse500>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(LoginError)]),
() => new ListBuilder<LoginError>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(LoginReq)]),
() => new ListBuilder<LoginReq>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Messages)]),
() => new ListBuilder<Messages>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Order)]),
() => new ListBuilder<Order>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PwdField)]),
() => new ListBuilder<PwdField>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PwdFieldAllOf)]),
() => new ListBuilder<PwdFieldAllOf>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(Session)]),
() => new ListBuilder<Session>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SessionData)]),
() => new ListBuilder<SessionData>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SessionDataAllOf)]),
() => new ListBuilder<SessionDataAllOf>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(User)]),
() => new ListBuilder<User>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(UserError)]),
() => new ListBuilder<UserError>())

).build();

Serializers standardSerializers =
(serializers.toBuilder()
..addPlugin(StandardJsonPlugin())).build();

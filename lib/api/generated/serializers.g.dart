// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AccountBase.serializer)
      ..add(AccountOrders.serializer)
      ..add(CfgField.serializer)
      ..add(Config.serializer)
      ..add(FieldError.serializer)
      ..add(FullFund.serializer)
      ..add(FullFundAllOf.serializer)
      ..add(Fund.serializer)
      ..add(Funds.serializer)
      ..add(InlineResponse500.serializer)
      ..add(LoginError.serializer)
      ..add(LoginReq.serializer)
      ..add(Messages.serializer)
      ..add(Order.serializer)
      ..add(PwdField.serializer)
      ..add(PwdFieldAllOf.serializer)
      ..add(Session.serializer)
      ..add(SessionData.serializer)
      ..add(SessionDataAllOf.serializer)
      ..add(User.serializer)
      ..add(UserError.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FullFund)]),
          () => new ListBuilder<FullFund>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(num)]),
          () => new ListBuilder<num>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(num)]),
          () => new MapBuilder<String, num>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(AccountBase)]),
          () => new MapBuilder<String, AccountBase>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(AccountBase)]),
          () => new MapBuilder<String, AccountBase>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(num)]),
          () => new MapBuilder<String, num>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(num)]),
          () => new MapBuilder<String, num>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList, const [const FullType(Order)])
          ]),
          () => new MapBuilder<String, BuiltList<Order>>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList, const [const FullType(Order)])
          ]),
          () => new MapBuilder<String, BuiltList<Order>>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

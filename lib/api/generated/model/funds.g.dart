// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'funds.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Funds> _$fundsSerializer = new _$FundsSerializer();

class _$FundsSerializer implements StructuredSerializer<Funds> {
  @override
  final Iterable<Type> types = const [Funds, _$Funds];
  @override
  final String wireName = 'Funds';

  @override
  Iterable<Object> serialize(Serializers serializers, Funds object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.funds != null) {
      result
        ..add('funds')
        ..add(serializers.serialize(object.funds,
            specifiedType:
                const FullType(BuiltList, const [const FullType(FullFund)])));
    }
    if (object.msgs != null) {
      result
        ..add('msgs')
        ..add(serializers.serialize(object.msgs,
            specifiedType: const FullType(Messages)));
    }
    return result;
  }

  @override
  Funds deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FundsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'funds':
          result.funds.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FullFund)]))
              as BuiltList<Object>);
          break;
        case 'msgs':
          result.msgs.replace(serializers.deserialize(value,
              specifiedType: const FullType(Messages)) as Messages);
          break;
      }
    }

    return result.build();
  }
}

class _$Funds extends Funds {
  @override
  final BuiltList<FullFund> funds;
  @override
  final Messages msgs;

  factory _$Funds([void Function(FundsBuilder) updates]) =>
      (new FundsBuilder()..update(updates)).build();

  _$Funds._({this.funds, this.msgs}) : super._();

  @override
  Funds rebuild(void Function(FundsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FundsBuilder toBuilder() => new FundsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Funds && funds == other.funds && msgs == other.msgs;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, funds.hashCode), msgs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Funds')
          ..add('funds', funds)
          ..add('msgs', msgs))
        .toString();
  }
}

class FundsBuilder implements Builder<Funds, FundsBuilder> {
  _$Funds _$v;

  ListBuilder<FullFund> _funds;
  ListBuilder<FullFund> get funds =>
      _$this._funds ??= new ListBuilder<FullFund>();
  set funds(ListBuilder<FullFund> funds) => _$this._funds = funds;

  MessagesBuilder _msgs;
  MessagesBuilder get msgs => _$this._msgs ??= new MessagesBuilder();
  set msgs(MessagesBuilder msgs) => _$this._msgs = msgs;

  FundsBuilder();

  FundsBuilder get _$this {
    if (_$v != null) {
      _funds = _$v.funds?.toBuilder();
      _msgs = _$v.msgs?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Funds other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Funds;
  }

  @override
  void update(void Function(FundsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Funds build() {
    _$Funds _$result;
    try {
      _$result =
          _$v ?? new _$Funds._(funds: _funds?.build(), msgs: _msgs?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'funds';
        _funds?.build();
        _$failedField = 'msgs';
        _msgs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Funds', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_base.g.dart';

abstract class AccountBase implements Built<AccountBase, AccountBaseBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;
    /* base asset */
        @nullable
    @BuiltValueField(wireName: r'base')
    String get base;

    // Boilerplate code needed to wire-up generated code
    AccountBase._();

    factory AccountBase([updates(AccountBaseBuilder b)]) = _$AccountBase;
    static Serializer<AccountBase> get serializer => _$accountBaseSerializer;

}


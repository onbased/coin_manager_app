        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cfg_field.g.dart';

abstract class CfgField implements Built<CfgField, CfgFieldBuilder> {

    /* 0 means the fiel can be empty */
        @nullable
    @BuiltValueField(wireName: r'minLen')
    int get minLen;
    
        @nullable
    @BuiltValueField(wireName: r'maxLen')
    int get maxLen;

    // Boilerplate code needed to wire-up generated code
    CfgField._();

    factory CfgField([updates(CfgFieldBuilder b)]) = _$CfgField;
    static Serializer<CfgField> get serializer => _$cfgFieldSerializer;

}


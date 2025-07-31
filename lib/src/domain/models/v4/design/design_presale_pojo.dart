import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_table_pojo.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/divisions_margin_table_with_type_pojo.dart';

part 'design_presale_pojo.g.dart';

part 'design_presale_pojo.freezed.dart';

@freezed
class DesignPresalePojo with _$DesignPresalePojo {
  const factory DesignPresalePojo({
    required InputDataDesign inputDataDesign,
    @Default({}) Map<String, DivisionResourceTableWithTypePojo> resource,
    @Default({}) Map<String, DivisionsMarginTableWithTypePojo> divisions,
  }) = _DesignPresalePojo;

  factory DesignPresalePojo.fromJson(Map<String, dynamic> json) =>
      _$DesignPresalePojoFromJson(json);
}

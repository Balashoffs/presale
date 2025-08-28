import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v3/design/commercial_offer/commercial_offer.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_table_pojo.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/divisions_margin_table_with_type_pojo.dart';

part 'design_presale_pojo.g.dart';

part 'design_presale_pojo.freezed.dart';

@freezed
abstract class DesignPresalePojo with _$DesignPresalePojo {
  const factory DesignPresalePojo({
    required InputDataDesign inputDataDesign,
    DivisionResourceTableWithTypePojo? resource,
    DivisionsMarginTableWithTypePojo? divisions,
    CommercialOfferResult? offers,
  }) = _DesignPresalePojo;

  factory DesignPresalePojo.fromJson(Map<String, dynamic> json) =>
      _$DesignPresalePojoFromJson(json);
}

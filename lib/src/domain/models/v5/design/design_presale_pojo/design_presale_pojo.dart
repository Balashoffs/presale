import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v5/design/design_presale_pojo/division_resource_table_pojo/division_resource_table_pojo.dart';
import 'package:presale/src/domain/models/v5/design/design_presale_pojo/divisions_margin_table_with_type_pojo/divisions_margin_table_with_type_pojo.dart';
import 'package:presale/src/domain/models/v5/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v5/design/offer/commercial_offer/commercial_offer.dart';

part 'design_presale_pojo.g.dart';

part 'design_presale_pojo.freezed.dart';

@freezed
class DesignPresale with _$DesignPresalePojo {
  const factory DesignPresale({
    required InputDataDesign inputDataDesign,
    DivisionResourceTableWithTypePojo? resource,
    DivisionsMarginTableWithTypePojo? divisions,
    CommercialOfferResult? offers,
  }) = _DesignPresalePojo;

  factory DesignPresale.fromJson(Map<String, dynamic> json) =>
      _$DesignPresalePojoFromJson(json);
}

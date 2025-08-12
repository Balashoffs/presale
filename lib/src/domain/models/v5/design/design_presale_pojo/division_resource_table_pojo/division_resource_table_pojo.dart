import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v5/design/design_presale_pojo/divisions_margin_table_with_type_pojo/division_resource_row_pojo/division_resource_row_pojo.dart';
import 'package:presale/src/domain/models/v5/design/division_type/division_type.dart';

part 'division_resource_table_pojo.freezed.dart';
part 'division_resource_table_pojo.g.dart';


@freezed
class DivisionResourceTableWithTypePojo with _$DivisionResourceTableWithTypePojo {
  const factory DivisionResourceTableWithTypePojo({
    required DivisionType divisionType,
    required List<DivisionResourceRowPojo> rows,
  }) = _DivisionResourceTableWithTypePojo;

  factory DivisionResourceTableWithTypePojo.fromJson(Map<String, dynamic> json) =>
      _$DivisionResourceTableWithTypePojoFromJson(json);
}

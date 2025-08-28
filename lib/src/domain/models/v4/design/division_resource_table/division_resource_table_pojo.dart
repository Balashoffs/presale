import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v3/design/division_type/division_type.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_row_pojo.dart';

part 'division_resource_table_pojo.freezed.dart';
part 'division_resource_table_pojo.g.dart';


@freezed
abstract class DivisionResourceTableWithTypePojo with _$DivisionResourceTableWithTypePojo {
  const factory DivisionResourceTableWithTypePojo({
    required DivisionType divisionType,
    required List<DivisionResourceRowPojo> rows,
  }) = _DivisionResourceTableWithTypePojo;

  factory DivisionResourceTableWithTypePojo.fromJson(Map<String, dynamic> json) =>
      _$DivisionResourceTableWithTypePojoFromJson(json);
}

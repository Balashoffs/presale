import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/divisions_margin_row_pojo.dart';

part 'divisions_margin_table_with_type_pojo.g.dart';

part 'divisions_margin_table_with_type_pojo.freezed.dart';

@freezed
class DivisionsMarginTableWithTypePojo with _$DivisionsMarginTableWithTypePojo {
  const factory DivisionsMarginTableWithTypePojo({
    required String divisionType,
    required List<DivisionsMarginRowPojo> rows,
}) = _DivisionsMarginTableWithTypePojo;

  factory DivisionsMarginTableWithTypePojo.fromJson(
      Map<String, dynamic> json) =>
      _$DivisionsMarginTableWithTypePojoFromJson(json);
}

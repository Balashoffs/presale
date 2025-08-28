import 'package:freezed_annotation/freezed_annotation.dart';

part 'divisions_margin_row_pojo.freezed.dart';
part 'divisions_margin_row_pojo.g.dart';

@freezed
abstract class DivisionsMarginRowPojo with _$DivisionsMarginRowPojo {
  const factory DivisionsMarginRowPojo({
    required int id,
    required String divisionName,
    required String divisionShortName,
    required double divisionSummaryCost,
    required double overPrice,
    required double margin,
    required double client,
    required double summaryCostWithMargin,
    required double summaryCostWithTax,
}) = _DivisionsMarginRowPojo;

  factory DivisionsMarginRowPojo.fromJson(Map<String, dynamic> json) =>
      _$DivisionsMarginRowPojoFromJson(json);
}

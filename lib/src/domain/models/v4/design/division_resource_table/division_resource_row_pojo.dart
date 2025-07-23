import 'package:freezed_annotation/freezed_annotation.dart';

part 'division_resource_row_pojo.g.dart';

part 'division_resource_row_pojo.freezed.dart';

@freezed
class DivisionResourceRowPojo with _$DivisionResourceRowPojo {
  const factory DivisionResourceRowPojo({
    required String divisionName,
    required String divisionShortName,
    required String resourceName,
    required int resourceQnt,
    required int workDays,
    required double complexFactor,
    required double squareFactor,
    required double resourceUsingFactor,
    required double divisionPerResourceRowCost,
    required double resourceCostPerDay,
  }) = _DivisionResourceRowPojo;

  factory DivisionResourceRowPojo.fromJson(Map<String, dynamic> json) =>
      _$DivisionResourceRowPojoFromJson(json);
}

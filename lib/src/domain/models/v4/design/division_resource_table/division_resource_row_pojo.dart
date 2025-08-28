import 'package:freezed_annotation/freezed_annotation.dart';

part 'division_resource_row_pojo.g.dart';

part 'division_resource_row_pojo.freezed.dart';

@freezed
abstract class DivisionResourceRowPojo with _$DivisionResourceRowPojo {
  const factory DivisionResourceRowPojo({
    required String divisionName,
    required String divisionShortName,
    required String divisionDescription,
    required String resourceName,
    required int resourceQnt,
    required int workDays,
    required double complexFactor,
    required double squareFactor,
    required double resourceUsingFactor,
    required double resourceRowCost,
    required double resourceCostPerDay,
    @Default(0.0) double overPriceFactor,
    @Default(0.0) double marginFactor,
    required double resourceSummaryCost,
  }) = _DivisionResourceRowPojo;

  factory DivisionResourceRowPojo.fromJson(Map<String, dynamic> json) =>
      _$DivisionResourceRowPojoFromJson(json);
}

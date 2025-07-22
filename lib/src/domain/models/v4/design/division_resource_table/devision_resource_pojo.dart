import 'package:freezed_annotation/freezed_annotation.dart';

part 'devision_resource_pojo.freezed.dart';

part 'devision_resource_pojo.g.dart';

@freezed
class DivisionResource with _$DivisionResource {
  const factory DivisionResource({
    required String divisionName,
    required String divisionShortName,
    required String resourceName,
    required int resourceQnt,
    required int workDays,
    required double complexFactor,
    required double squareFactor,
    required double resourceUsingFactor,
    required double divisionPerResourceRowCost,
    required double divisionSummaryCost,
    required double resourceCostPerDay,
    required double resourceCostPerMonth,
  }) = _DivisionResource;

  factory DivisionResource.fromJson(Map<String, dynamic> json) =>
      _$DivisionResourceFromJson(json);
}

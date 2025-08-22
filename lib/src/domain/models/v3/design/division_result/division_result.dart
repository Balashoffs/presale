import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v3/design/divison/division.dart';

part 'division_result.freezed.dart';
part 'division_result.g.dart';


@freezed
class DivisionResult with _$DivisionResult {
  const factory DivisionResult({
    required final int id,
    required final String divisionShortName,
    required final String divisionName,
    required final double divisionSummaryWithTax,
    required final double divisionSummaryWithMargin,
  }) = _DivisionResult;

  factory DivisionResult.fromJson(Map<String, dynamic> json) =>
      _$DivisionResultFromJson(json);
}

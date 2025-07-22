import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_result.freezed.dart';

part 'input_result.g.dart';

@freezed
class InputResult with _$InputResult {
  const factory InputResult({
    required String id,
    @Default('') String objectName,
    @Default('') String estateCostType,
    @Default('') String estateClassType,
    @Default(0.0) double totalFactor,
    @Default(0.0) double totalPlannedCost,
    @Default(0.0) double plannedSquare,
    @Default(0.0) double averageMeterPerSquare,
  }) = _InputResult;

  factory InputResult.fromJson(Map<String, dynamic> json) =>
      _$InputResultFromJson(json);
}

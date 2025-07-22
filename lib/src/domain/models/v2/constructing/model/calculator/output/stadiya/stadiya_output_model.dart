import 'package:freezed_annotation/freezed_annotation.dart';

part 'stadiya_output_model.freezed.dart';

@freezed
class StadiyaOutputModel with _$StadiyaOutputModel {
  const factory StadiyaOutputModel({
    required String element,
    required double cost,
    @Default(1.0) double quantity,
    @Default(0.0) double total,
    // @Default([]) List<CostStructModel> costStructs,
  }) = _StadiyaOutputModel;
}

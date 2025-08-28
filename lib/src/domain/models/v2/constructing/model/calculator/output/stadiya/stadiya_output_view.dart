
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stadiya_output_view.freezed.dart';

@freezed
abstract class StadiyaOutputView with _$StadiyaOutputView {
  const factory StadiyaOutputView({
    required String element,
    required String clarification,
    required String costRange,
    required String um,
    @Default(1000.0) double costFactor ,
    // @Default([]) List<CostStructView> costStructs,
  }) = _StadiyaOutputView;
}

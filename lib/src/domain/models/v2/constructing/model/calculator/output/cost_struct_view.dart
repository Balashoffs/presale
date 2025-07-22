import 'package:freezed_annotation/freezed_annotation.dart';

part 'cost_struct_view.freezed.dart';

@freezed
class CostStructView with _$CostStructView {
  const factory CostStructView({
    required int pos,
    required double factor,
    required String name,
  }) = _CostStructView;
}

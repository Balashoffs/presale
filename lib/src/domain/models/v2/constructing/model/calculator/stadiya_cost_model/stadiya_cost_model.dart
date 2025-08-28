import 'package:freezed_annotation/freezed_annotation.dart';

part 'stadiya_cost_model.freezed.dart';

@freezed
abstract class StadiyaCostModel with _$StadiyaCostModel {
  const factory StadiyaCostModel({
    required String name,
    required String factorRange,
    required double factor,
    @Default(0.0) double moneyValue,
  }) = _StadiyaCostModel;
}



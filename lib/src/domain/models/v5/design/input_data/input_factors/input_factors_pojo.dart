import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_factors_pojo.g.dart';

part 'input_factors_pojo.freezed.dart';

@freezed
class InputFactors with _$InputFactorsPojo {
  const factory InputFactors({
    // Коэфициент за издержки
    required double overPriceFactor,
    // Коэфициент для заказчика
    required double customerFactor,
    // Коэфициент нормы прибыли
    required double marginFactor,
    // Коэфициент за срочность
    required double speedFactor,
    // Коэфициент за высотность
    required double heightFactor,
    // Коэфициент за удаленность
    required double remotingFactor,
    // Коэфициент за сложность
    required double complexityFactor,
    // Коэфициент площади
    required double squareFactor,
}) = _InputFactorsPojo;

  factory InputFactors.fromJson(Map<String, dynamic> json) =>
      _$InputFactorsPojoFromJson(json);
}

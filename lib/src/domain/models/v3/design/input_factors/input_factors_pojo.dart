import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_factors_pojo.g.dart';

part 'input_factors_pojo.freezed.dart';

@freezed
abstract class InputFactorsPojo with _$InputFactorsPojo {
  const factory InputFactorsPojo({
    // Коэфициент за срочность
    required double speedFactor,
    // Коэфициент за высотность
    required double heightFactor,
    // Коэфициент за издержки
    required double overPriceFactor,
    // Коэфициент за удаленность
    required double remotingFactor,
    // Коэфициент за сложность
    required double complexityFactor,
    // Коэфициент для заказчика
    required double customerFactor,
    // Коэфициент нормы прибыли
    required double marginFactor,
    // Коэфициент площади
    required double squareFactor,
}) = _InputFactorsPojo;

  factory InputFactorsPojo.fromJson(Map<String, dynamic> json) =>
      _$InputFactorsPojoFromJson(json);
}

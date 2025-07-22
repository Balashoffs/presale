import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v3/design/division_type/division_type.dart';

import 'object_data_design.dart';

part 'input_data_design.freezed.dart';
part 'input_data_design.g.dart';


@freezed
class InputDataDesign with _$InputDataDesign {
  const factory InputDataDesign({
    // Дата и время создание КП
    required DateTime? created,
    // Данные об объекте
     required ObjectDataDesign objectData,
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
     required double consumerFactor,
    // Коэфициент нормы прибыли
     required double rateReturnFactor,
    // Коэфициент площади
     required double squareFactor,
    // Тип проектной документации на выходе
    @Default(DivisionType.project) DivisionType divisionType,
  }) = _InputDataDesign;

  factory InputDataDesign.fromJson(Map<String, dynamic> json) =>
      _$InputDataDesignFromJson(json);
}



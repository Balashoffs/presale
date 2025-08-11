import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v3/design/division_type/division_type.dart';
import 'package:presale/src/domain/models/v3/design/input_factors/input_factors_pojo.dart';

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
    required InputFactorsPojo inputFactors,
    // Тип проектной документации на выходе
    required DivisionType divisionType,
  }) = _InputDataDesign;

  factory InputDataDesign.fromJson(Map<String, dynamic> json) =>
      _$InputDataDesignFromJson(json);
}



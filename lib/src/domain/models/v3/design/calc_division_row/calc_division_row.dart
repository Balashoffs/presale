import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v3/design/divison/division.dart';

part 'calc_division_row.freezed.dart';

/*

 */
@freezed
class CalcDivisionRow with _$CalcDivisionRow {
  const factory CalcDivisionRow({
    // Информация о разделе
    required Division division,
    // Время выполнения раздела (заполняется при калькуляции)
    @Default(0.0) double duration,
    // Коэфициент за сложность раздела
    @Default(1.0) double complexityFactor,
    // Коэфициент за объем работ
    @Default(1.0) double bySquareFactor,
    // Коэфициент за загруженность специалиста
    @Default(1.0) double byEmployeeUsedFactor,
    // Коэфициент за накладные расходы
    @Default(0.0) overheadsValue,
    // Коэфициент за маржу
    @Default(0.0) marginValue,
  }) = _CalcDivisonRow;

}

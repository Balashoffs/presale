import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v3/design/division_type/division_type.dart';
import 'package:presale/src/domain/models/v3/design/employee_cost/employee_cost.dart';

part 'division.freezed.dart';

part 'division.g.dart';

@freezed
abstract class Division with _$Division {
  const factory Division({
    // Виды проектирования - Испольнительная, Рабочая, Обе
    DivisionType? type,
    // Полное имя раздела
    required String name,
    // Аббвеатура раздела
    required String shortName,
    // Порядковый номер
    required int id,
    // Данные о специалисте
    required EmployeeCost employee,
  }) = _Division;

  factory Division.fromJson(Map<String, dynamic> json) =>
      _$DivisionFromJson(json);
}

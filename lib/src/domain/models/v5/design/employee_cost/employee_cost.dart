import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_cost.freezed.dart';
part 'employee_cost.g.dart';

/*
Example
'BIM инженер', workingRatePerDay: 1056.78, correctionFactor: 1.0
 */
@freezed
class EmployeeCost with _$EmployeeCost {
  const EmployeeCost._();

  const factory EmployeeCost({
    // Порядковый номер, смотри в файле
    required int id,
    // Название специальности
    required String name,
    // Стоимость работы специалиста за 1 день
    required double workingRatePerDay,
    // Коэфициент корректировки
    @Default(1.0) double correctionFactor,
  }) = _EmployeeCost;

  factory EmployeeCost.fromJson(Map<String, dynamic> json) =>
      _$EmployeeCostFromJson(json);

  double getRate(){
    return correctionFactor * workingRatePerDay;
  }
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';

part 'employee.g.dart';

@freezed
abstract class Employee with _$Employee {
  const Employee._();

  const factory Employee({
    required String uuid,
    required String name,
    required double salary,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);

  String get salaryText {
    String tmp = salary.toStringAsFixed(2);
    return tmp;
  }

  String get salaryInDayText {
    String tmp = salaryInDay.toStringAsFixed(2);
    return tmp;
  }

  String get salaryInHourText {
    String tmp = salaryInHour.toStringAsFixed(2);
    return tmp;
  }

  double get salaryInDay => salary/22;
  double get salaryInHour => salary/176;
}

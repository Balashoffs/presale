import 'package:presale/src/domain/models/v5/design/employee_cost/employee_cost.dart';

class EmployeeCostDTO {
  // Порядковый номер, смотри в файле
  final String id;

  // Название специальности
  final String name;

  // Стоимость работы специалиста за 1 день
  final String workingRatePerDay;

  // Коэфициент корректировки
  final String correctionFactor;

  EmployeeCostDTO({
    required this.id,
    required this.name,
    required this.workingRatePerDay,
    required this.correctionFactor,
  });

  factory EmployeeCostDTO.fromCsvRow(List<dynamic> row) {
    return EmployeeCostDTO(
      id: row[0],
      name: row[1],
      workingRatePerDay: row[2],
      correctionFactor: row[3],
    );
  }

  @override
  String toString() {
    return 'EmployeeCostDto{id: $id, name: $name, workingRatePerDay: $workingRatePerDay, correctionFactor: $correctionFactor}';
  }
}

extension EmployeeCostExt on EmployeeCostDTO {
  EmployeeCost toModel() {
    return EmployeeCost(
      id: int.parse(id),
      name: name,
      workingRatePerDay: double.parse((double.parse(workingRatePerDay).floorToDouble() / 30.5).toStringAsFixed(2)),
      correctionFactor: double.parse(correctionFactor),
    );
  }
}

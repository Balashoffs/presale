import 'package:presale/src/domain/models/v5/design/division_type/division_type.dart';
import 'package:presale/src/domain/models/v5/design/divison/division.dart';
import 'package:presale/src/domain/models/v5/design/employee_cost/employee_cost.dart';


class DivisionDTO {
  // Виды проектирования - Испольнительная, Рабочая, Обе
  final String type;

  // Полное имя раздела
  final String name;

  // Аббвеатура раздела
  final String shortName;

  // Должность
  final String jobName;

  // Порядковый номер
  final String id;

  DivisionDTO({
    required this.type,
    required this.name,
    required this.shortName,
    required this.id,
    required this.jobName,
  });

  @override
  String toString() {
    return 'DivisionDto{type: $type, name: $name, shortName: $shortName, jobName: $jobName, id: $id}';
  }

  factory DivisionDTO.fromCsvRow(List<dynamic> row) {
    return DivisionDTO(
      type: row[4],
      name: row[1],
      shortName: row[2],
      id: row[0],
      jobName: row[3],
    );
  }
}

extension DivisionExt on DivisionDTO {
  Division toModel(EmployeeCost employee) {
    return Division(
      name: name,
      shortName: shortName,
      id: int.parse(id),
      employee: employee,
      type: DivisionType.fromText(type),
    );
  }
}

import 'package:presale/src/data/core/csv_parser.dart';
import 'package:presale/src/domain/models/v5/design/division_dto/division_dto.dart';
import 'package:presale/src/domain/models/v5/design/division_dto/employee_cost_dto.dart';
import 'package:presale/src/domain/models/v5/design/divison/division.dart';
import 'package:presale/src/domain/models/v5/design/employee_cost/employee_cost.dart';



typedef EmployeeCostDtoParser =
List<EmployeeCostDTO> Function(List<List<dynamic>> rows);

class JobCostDtoBuilder extends CsvParser<EmployeeCostDTO> {
  JobCostDtoBuilder(super.file);

  EmployeeCostDtoParser get _parser =>
          (rows) => rows.skip(1).map((row) => EmployeeCostDTO.fromCsvRow(row)).toList();

  @override
  Future<List<EmployeeCostDTO>> build() async {
    return await parse(_parser);
  }
}

typedef DivisionsDtoParser =
List<DivisionDTO> Function(List<List<dynamic>> rows);

class DivisionDtoBuilder extends CsvParser<DivisionDTO> {
  DivisionDtoBuilder(super.file);

  DivisionsDtoParser get _parser =>
          (rows) => rows.skip(1).map((row) => DivisionDTO.fromCsvRow(row)).toList();

  @override
  Future<List<DivisionDTO>> build() async {
    return await parse(_parser);
  }
}

Future<List<Division>> buildDivisionFrom({
  required String pathToJobCost,
  required String pathToDivisions,
}) async {
  JobCostDtoBuilder jobCostDtoBuilder = JobCostDtoBuilder(pathToJobCost);
  DivisionDtoBuilder divisionDtoBuilder = DivisionDtoBuilder(pathToDivisions);

  List<EmployeeCostDTO> ecDto = await jobCostDtoBuilder.build();
  List<DivisionDTO> dDto = await divisionDtoBuilder.build();
  return dDto
      .map((e) {
    EmployeeCostDTO? employeeCostDto = ecDto
        .where((division) => division.name == e.jobName)
        .firstOrNull;
    if (employeeCostDto != null) {
      EmployeeCost employeeCost = employeeCostDto.toModel();
      return e.toModel(employeeCost);
    }
    return null;
  })
      .whereType<Division>()
      .toList();
}
import 'package:presale/src/data/core/csv_parser.dart';
import 'package:presale/src/domain/models/v3/design/divison/division.dart';
import 'package:presale/src/domain/models/v3/design/employee_cost/employee_cost.dart';
import 'package:presale/src/presentation/modules/v5/design/input/calculate/model/division_dto/division_dto.dart';
import 'package:presale/src/presentation/modules/v5/design/input/calculate/model/division_dto/employee_cost_dto.dart';


typedef EmployeeCostDtoParser =
List<EmployeeCostDto> Function(List<List<dynamic>> rows);

class JobCostDtoBuilder extends CsvParser<EmployeeCostDto> {
  JobCostDtoBuilder(super.file);

  EmployeeCostDtoParser get _parser =>
          (rows) => rows.skip(1).map((row) => EmployeeCostDto.fromCsvRow(row)).toList();

  @override
  Future<List<EmployeeCostDto>> build() async {
    return await parse(_parser);
  }
}

typedef DivisionsDtoParser =
List<DivisionDto> Function(List<List<dynamic>> rows);

class DivisionDtoBuilder extends CsvParser<DivisionDto> {
  DivisionDtoBuilder(super.file);

  DivisionsDtoParser get _parser =>
          (rows) => rows.skip(1).map((row) => DivisionDto.fromCsvRow(row)).toList();

  @override
  Future<List<DivisionDto>> build() async {
    return await parse(_parser);
  }
}

Future<List<Division>> buildDivisionFrom({
  required String pathToJobCost,
  required String pathToDivisions,
}) async {
  JobCostDtoBuilder jobCostDtoBuilder = JobCostDtoBuilder(pathToJobCost);
  DivisionDtoBuilder divisionDtoBuilder = DivisionDtoBuilder(pathToDivisions);

  List<EmployeeCostDto> ecDto = await jobCostDtoBuilder.build();
  List<DivisionDto> dDto = await divisionDtoBuilder.build();
  return dDto
      .map((e) {
    EmployeeCostDto? employeeCostDto = ecDto
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
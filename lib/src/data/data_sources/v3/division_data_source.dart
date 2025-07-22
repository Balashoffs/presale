import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:presale/src/domain/models/v3/design/divison/division.dart';
import 'package:presale/src/domain/models/v3/design/employee_cost/employee_cost.dart';


abstract class DivisionDataSource {
  const DivisionDataSource();

  Future<List<Division>> getDivisions(List<EmployeeCost> employees);
}

class SectionDataSourceLocal implements DivisionDataSource {
  final String _pathToDivisionData;

  const SectionDataSourceLocal(
    this._pathToDivisionData,
  );

  @override
  Future<List<Division>> getDivisions(List<EmployeeCost> employees) async {
    String file = await rootBundle.loadString(_pathToDivisionData);
    List<Division> divisions = CsvToListConverter()
        .convert(file)
        .map((e) {
          String employeeJob = e[3];
          EmployeeCost employeeCost = employees.firstWhere(
              (element) => element.name == employeeJob,
              orElse: () =>
                  EmployeeCost(id: 0, name: '', workingRatePerDay: 0.0));
          return Division(
              name: e[1], shortName: e[2], id: e[0], employee: employeeCost);
        })
        .where((element) => element.id != 0)
        .toList();

    return divisions;
  }
}

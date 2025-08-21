import 'dart:typed_data';

import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/data/core/exceptions.dart';
import 'package:excel/excel.dart';
import 'package:presale/src/domain/models/v1/employee/employee.dart';
import 'package:uuid/uuid.dart';

abstract class EmployeeDataSource {
  const EmployeeDataSource();

  Future<bool> initialize();
  Future<bool> updateEmployee(Employee employee);
  Future<bool> loadEmployeesFromExcel(Uint8List data);
  Future<List<Employee>> getEmployees();
  Future<Map<String, Employee>> getEmployeesMap();
  // Future<bool> loadFromExcel()
}

class EmployeeDataSourceLocal implements EmployeeDataSource {
  final DBClient _client;

  const EmployeeDataSourceLocal(
      this._client,
      );

  @override
  Future<bool> initialize() async {
    const uuid = Uuid();
    final employees = [
      Employee(name: 'BIM инженер', salary: 149655.1724,uuid: uuid.v1()  ),
      Employee(name: 'Администратор', salary: 209517.2414, uuid: uuid.v1()  ),
      Employee(name: 'Архитектор', salary: 164620.6897, uuid: uuid.v1()  ),
      Employee(name: 'Веб-разработчик', salary: 224482.7586, uuid: uuid.v1()  ),
      Employee(name: 'Ведущий архитектор', salary: 209517.2414, uuid: uuid.v1()  ),
      Employee(name: 'Ведущий инженер', salary: 179586.2069, uuid: uuid.v1()  ),
      Employee(name: 'Ведущий инженер ПТО', salary: 182080.4598, uuid: uuid.v1()  ),
      Employee(name: 'Ведущий инженер-проектировщик', salary: 194551.7241, uuid: uuid.v1()  ),
      Employee(name: 'Ведущий координатор', salary: 224482.7586, uuid: uuid.v1()  ),
      Employee(name: 'Главный инженер проекта', salary: 299310.3448, uuid: uuid.v1()  ),
      Employee(name: 'Главный специалист слаботочных систем', salary: 194551.7241, uuid: uuid.v1()  ),
      Employee(name: 'Инженер ПТО', salary: 164620.6897, uuid: uuid.v1()  ),
      Employee(name: 'Моделлер-координатор', salary: 207022.9885, uuid: uuid.v1()  ),
      Employee(name: 'Начальник ПТО', salary: 224482.7586, uuid: uuid.v1()  ),
      Employee(name: 'Программист', salary: 306793.1034, uuid: uuid.v1()  ),
      Employee(name: 'Проектировщик ЭОМ-СС', salary: 194551.7241, uuid: uuid.v1()  ),
      Employee(name: 'Руководитель направления архитектуры', salary: 217000, uuid: uuid.v1()  ),
      Employee(name: 'Руководитель направления инженерии и координации', salary: 224482.7586, uuid: uuid.v1()  ),
      Employee(name: 'Руководитель направления разработки', salary: 269379.3103, uuid: uuid.v1()  ),
      Employee(name: 'Руководитель отдела ПТО', salary: 254413.7931, uuid: uuid.v1()  ),
      Employee(name: 'Руководитель проектного департамента', salary: 329241.3793, uuid: uuid.v1()  ),
      Employee(name: 'Руководитель проектного отдела', salary: 194551.7241, uuid: uuid.v1()  ),
      Employee(name: 'Тестировщик', salary: 164620.6897, uuid: uuid.v1()  ),
      Employee(name: 'Техник ПТО', salary: 89793.10345, uuid: uuid.v1()  ),
      Employee(name: 'Инженер сметчи', salary: 194551.724, uuid: uuid.v1()  ),
      Employee(name: 'Общий итог', salary: 190511.0345, uuid: uuid.v1()  ),
    ];
    await _client.write('employees', employees);
    return true;
  }

  @override
  Future<bool> loadEmployeesFromExcel(Uint8List data) async {
    var excel = Excel.decodeBytes(data);
    for (var table in excel.tables.keys) {
      ;
      ;
      ;
      for (final row in excel.tables[table]?.rows ?? []) {
        CellValue? value = row[0].value;

        assert (value is TextCellValue);
        String title = (value as TextCellValue).value as String;

        CellValue? value2 = row[1].value;
        assert (value2 is DoubleCellValue);
        double salary = (value2 as DoubleCellValue).value;

      }
      break;
    }
    return true;
  }

  @override
  Future<List<Employee>> getEmployees() async {
    return _handleEmployees(_client.read('employees'));
  }

  @override
  Future<bool> updateEmployee(Employee employee) async {
    return true;
  }

  @override
  Future<Map<String, Employee>> getEmployeesMap() async {
    return getEmployees().then((value) => { for (var item in value) item.name : item });
  }

  List<Employee> _handleEmployees(dynamic response) {
    // if (response !is List<dynamic>) throw ResponseException();
    try {
      List<Employee> result = [];
      for (final employee in response){
        result.add(Employee.fromJson(employee));
      }
      return result;
    } catch (e) {
      throw ResponseException(e.toString());
    }
  }
}

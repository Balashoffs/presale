import 'dart:typed_data';

import 'package:presale/src/data/clients/base_client.dart';
import 'package:presale/src/data/data_sources/v1/employee_cost_data_source.dart';
import 'package:presale/src/domain/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:presale/src/domain/models/v1/employee/employee.dart';

abstract class EmployeeClient {
  const EmployeeClient();

  Future<Either<Failure, bool>> initialize();

  Future<Either<Failure, List<Employee>>> getEmployees();

  Future<Either<Failure, bool>> updateEmployee(Employee employee);

  Future<Either<Failure, bool>> loadEmployeesFromExcel(Uint8List data);

  Future<Either<Failure, Map<String, Employee>>> getEmployeesMap();
}

class EmployeeClientImpl with BaseClient implements EmployeeClient {
  final EmployeeDataSource _dataSource;

  const EmployeeClientImpl(this._dataSource);

  @override
  Future<Either<Failure, List<Employee>>> getEmployees() => handleData(() => _dataSource.getEmployees());

  @override
  Future<Either<Failure, bool>> initialize() => handleData(() => _dataSource.initialize());

  @override
  Future<Either<Failure, bool>> updateEmployee(Employee employee) =>
      handleData(() => _dataSource.updateEmployee(employee));

  @override
  Future<Either<Failure, bool>> loadEmployeesFromExcel(Uint8List data) =>
      handleData(() => _dataSource.loadEmployeesFromExcel(data));

  @override
  Future<Either<Failure, Map<String, Employee>>> getEmployeesMap() => handleData(() => _dataSource.getEmployeesMap());
}

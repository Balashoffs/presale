import 'package:dartz/dartz.dart';
import 'package:presale/src/data/data_sources/v3/employee_data_source.dart';
import 'package:presale/src/data/clients/base_client.dart';
import 'package:presale/src/domain/core/failure/failure.dart';
import 'package:presale/src/domain/models/v3/design/employee_cost/employee_cost.dart';

abstract class EmployeeCostClient {
  const EmployeeCostClient();

  Future<Either<Failure, List<EmployeeCost>>> getEmployeeCosts();

}

class EmployeeCostClientImpl with BaseClient implements EmployeeCostClient {
  final EmployeeCostDataSource _dataSource;

  const EmployeeCostClientImpl(this._dataSource);

  @override
  Future<Either<Failure, List<EmployeeCost>>> getEmployeeCosts() => handleData(() => _dataSource.getEmployees());

}

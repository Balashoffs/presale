import 'package:presale/src/data/clients/base_client.dart';
import 'package:presale/src/data/data_sources/v3/division_data_source.dart';
import 'package:presale/src/domain/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:presale/src/domain/models/v3/design/divison/division.dart';
import 'package:presale/src/domain/models/v3/design/employee_cost/employee_cost.dart';


abstract class DivisionClient {
  const DivisionClient();

  Future<Either<Failure, List<Division>>> getDivisions(List<EmployeeCost> employees);
}

class DivisionClientImpl with BaseClient implements DivisionClient {
  final DivisionDataSource _dataSource;

  const DivisionClientImpl(this._dataSource);

  @override
  Future<Either<Failure, List<Division>>> getDivisions(List<EmployeeCost> employees) =>
      handleData(() => _dataSource.getDivisions(employees));

}

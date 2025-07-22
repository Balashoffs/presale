import 'package:presale/src/data/clients/base_client.dart';
import 'package:presale/src/data/data_sources/v1/section_data_source.dart';
import 'package:presale/src/domain/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:presale/src/domain/models/v1/employee/employee.dart';
import 'package:presale/src/domain/models/v1/section/section.dart';

abstract class SectionClient {
  const SectionClient();

  Future<Either<Failure, bool>> initialize();
  Future<Either<Failure, List<Section>>> getSections([Map<String, Employee>? employees]);
}

class SectionClientImpl with BaseClient implements SectionClient {
  final SectionDataSource _dataSource;

  const SectionClientImpl(this._dataSource);

  @override
  Future<Either<Failure, bool>> initialize() =>
      handleData(() => _dataSource.initialize());

  @override
  Future<Either<Failure, List<Section>>> getSections([Map<String, Employee>? employees]) =>
      handleData(() => _dataSource.getSections(employees));

}

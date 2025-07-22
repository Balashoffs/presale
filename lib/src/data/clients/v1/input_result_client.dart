import 'package:dartz/dartz.dart';
import 'package:presale/src/data/clients/base_client.dart';
import 'package:presale/src/data/data_sources/v1/input_result_data_source.dart';
import 'package:presale/src/domain/core/failure/failure.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/input_result.dart';

abstract class InputResultClient <T>{
  const InputResultClient();

  Future<Either<Failure, T>> getInputResult(String id);

  Future<Either<Failure, bool>> deleteInputResult(String id);

  Future<Either<Failure, bool>> addInputResult(T result);
}

class InputResultClientImpl with BaseClient implements InputResultClient<InputResult> {
  final InputResultDataSource _dataSource;

  const InputResultClientImpl(this._dataSource);

  @override
  Future<Either<Failure, InputResult>> getInputResult(String id) =>
      handleData(() => _dataSource.getInputResult(id));

  @override
  Future<Either<Failure, bool>> deleteInputResult(String id) =>
      handleData(() => _dataSource.deleteInputResult(id));

  @override
  Future<Either<Failure, bool>> addInputResult(InputResult result) =>
      handleData(() => _dataSource.addInputResult(result));
}

abstract class SelectStageClient <T>{
  const SelectStageClient();

  Future<Either<Failure, T>> read(String id);

  Future<Either<Failure, bool>> delete(String id);

  Future<Either<Failure, bool>> create(String id, T result);
}

class SelectStageClientImpl with BaseClient implements SelectStageClient<SelectStageData> {
  final SelectStageDataSource _dataSource;

  const SelectStageClientImpl(this._dataSource);

  @override
  Future<Either<Failure, SelectStageData>> read(String id) =>
      handleData(() => _dataSource.read(id));

  @override
  Future<Either<Failure, bool>> delete(String id) =>
      handleData(() => _dataSource.delete(id));

  @override
  Future<Either<Failure, bool>> create(String id, SelectStageData result) =>
      handleData(() => _dataSource.create(id, result));
}

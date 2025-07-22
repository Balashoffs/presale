import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/construction_state/section_data.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/input_result.dart';

abstract class InputResultDataSource {
  const InputResultDataSource();

  Future<InputResult> getInputResult(String id);

  Future<bool> deleteInputResult(String id);

  Future<bool> addInputResult(InputResult result);
// Future<bool> loadFromExcel()
}

class InputResultDataSourceLocal implements InputResultDataSource {
  final DBClient _client;

  const InputResultDataSourceLocal(
    this._client,
  );

  @override
  Future<bool> addInputResult(InputResult result) async{
    _client.write(result.id, result);
    return true;
  }

  @override
  Future<bool> deleteInputResult(String id) async{
    _client.delete(id);
    return true;
  }

  @override
  Future<InputResult> getInputResult(String id) async{
      Map<String, dynamic> json = await _client.read(id);
      return InputResult.fromJson(json);
  }

}

typedef SelectStageData = Map<String, List<SectionData>>;

abstract class SelectStageDataSource {
  const SelectStageDataSource();

  Future<SelectStageData> read(String id);

  Future<bool> delete(String id);

  Future<bool> create(String id, SelectStageData result);
// Future<bool> loadFromExcel()
}

class SelectStageDataSourceLocal implements SelectStageDataSource {
  final DBClient _client;

  const SelectStageDataSourceLocal(this._client,);

  @override
  Future<bool> create(String id, SelectStageData result) async {
    await _client.write(id, result);
    return true;
  }

  @override
  Future<bool> delete(String id) async {
    await _client.delete(id);
    return true;
  }

  @override
  Future<SelectStageData> read(String id) async {
    Map<String, dynamic> json = await _client.read(id);
    SelectStageData selectStageData = {};
    for (var value in json.entries) {
      selectStageData.putIfAbsent(value.key, () =>
          (value.value).map((e) => SectionData
              .fromJson(e),),).toList();
    }

    return selectStageData;
  }
}

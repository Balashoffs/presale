import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/data/data_sources/input_result_data_source.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/construction_state/section_data.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/input_result.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';

class InputResultDataSourceLocal
    implements InputResultDataSource<InputDataDesign> {
  final DBClient _client;
  final String key = 'inputdataresult';
  const InputResultDataSourceLocal(this._client);

  @override
  Future<bool> addInputResult(InputDataDesign result) async {
    _client.write(key, result);
    return true;
  }

  @override
  Future<bool> deleteInputResult(String id) async {
    _client.delete(id);
    return true;
  }

  @override
  Future<InputDataDesign> getInputResult(String id) async {
    Map<String, dynamic> json = await _client.read(id);
    return InputDataDesign.fromJson(json);
  }
}

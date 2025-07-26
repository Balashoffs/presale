import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/data/data_sources/input_result_data_source.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/construction_state/section_data.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/input_result.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v4/design/design_presale_pojo.dart';

class DesignPresaleDataSourceLocal
    implements DesignPresaleDataSource<DesignPresalePojo> {
  final DBClient _client;
  static String key = 'design_presale';
  const DesignPresaleDataSourceLocal(this._client);

  @override
  Future<bool> addDesignPresale(DesignPresalePojo result) async {
    _client.write(key, result);
    return true;
  }

  @override
  Future<bool> deleteDesignPresale(String id) async {
    _client.delete(id);
    return true;
  }

  @override
  Future<DesignPresalePojo> getDesignPresale(String id) async {
    Map<String, dynamic> json = await _client.read(id);
    return DesignPresalePojo.fromJson(json);
  }
}

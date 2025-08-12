import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/data/data_sources/input_result_data_source.dart';
import 'package:presale/src/domain/models/v5/design/design_presale_pojo/design_presale_pojo.dart';


class DesignPresaleDataSourceLocal
    implements DesignPresaleDataSource<DesignPresale> {
  final DBClient _client;
  static String key = 'design_presale';
  const DesignPresaleDataSourceLocal(this._client);

  @override
  Future<bool> addDesignPresale(DesignPresale result) async {
    _client.write(key, result);
    return true;
  }

  @override
  Future<bool> deleteDesignPresale(String id) async {
    _client.delete(id);
    return true;
  }

  @override
  Future<DesignPresale> getDesignPresale(String id) async {
    Map<String, dynamic> json = await _client.read(id);
    return DesignPresale.fromJson(json);
  }
}

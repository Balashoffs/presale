import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/data/data_sources/input_result_data_source.dart';
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

class DesignPresaleDataTest {
 static Future<DesignPresalePojo> getDevInputDesignPresale() async {
    String devJson = await rootBundle.loadString(
        'assets/calculator_data/test_resources/design_input.json');
    Map<String, dynamic> json = jsonDecode(devJson);
    return DesignPresalePojo.fromJson(json);
  }

 static Future<DesignPresalePojo> getDevDivisionsDesignPresale() async {
   String devJson = await rootBundle.loadString(
       'assets/calculator_data/test_resources/design_divisions.json');
   Map<String, dynamic> json = jsonDecode(devJson);
   return DesignPresalePojo.fromJson(json);
 }
}

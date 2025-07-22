

import 'package:presale/src/domain/models/v2/constructing/model/input/factors/base_factor/input_base_factor_builder.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/factors/estate_by_type/estate_by_type.dart';

class EstateByTypeFactorBuilder extends BaseFactorBuilder<EstateByType> {
  EstateByTypeFactorBuilder({required super.path});

  List<EstateByType> buildFromRows(List<List<dynamic>> rows) {
    List<String> byTypes = [];
    for (int i = 1; i < rows.length; i++) {
      byTypes.add(rows[i][0]);
    }

    List<String> byCosts = [];
    for (int i = 1; i < rows[0].length; i++) {
      byCosts.add(rows[0][i]);
    }

    var costRangeMatrix = List<List<String>>.generate(
        rows.length-1,
        (i) => List<String>.generate(rows[0].length-1, (index) => '',
            growable: false),
        growable: false);
    for (int i = 1; i < rows.length; i++) {
      for (int j = 1; j < rows[i].length; j++) {
        costRangeMatrix[i-1][j-1] = rows[i][j];
      }
    }

    return [
      EstateByType(
        byTypes: byTypes,
        byCosts: byCosts,
        costRangeMatrix: costRangeMatrix,
      )
    ];
  }

  @override
  EstateByType buildFromRow(List<dynamic> row) {
    // TODO: implement buildFromRow
    throw UnimplementedError();
  }
}

import 'package:presale/src/domain/models/v2/constructing/model/input/factors/base_factor/input_base_factor.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/factors/base_factor/input_base_factor_builder.dart';

import 'estate_square.dart';

class EstateSquareFactorBuilder extends BaseFactorBuilder<InputBaseFactor>{
  EstateSquareFactorBuilder({required super.path});

  @override
  EstateSquare buildFromRow(List<dynamic> row) {
    String value = row[0];
    double factor = getFactor(row[1]);
    return EstateSquare(value: value, factor: factor, type: type);
  }
}
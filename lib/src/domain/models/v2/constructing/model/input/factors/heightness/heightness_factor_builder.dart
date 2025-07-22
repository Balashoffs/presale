

import 'package:presale/src/domain/models/v2/constructing/model/input/factors/base_factor/input_base_factor_builder.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/factors/heightness/heightness.dart';

import '../base_factor/input_base_factor.dart';

class HeightnessFactorBuilder extends BaseFactorBuilder<InputBaseFactor>{
  HeightnessFactorBuilder({required super.path});

  @override
  Heightness buildFromRow(List<dynamic> row) {
    String value = row[0];
    double factor = getFactor(row[1]);
    return Heightness(type: type, factor: factor, value: value);
  }
}
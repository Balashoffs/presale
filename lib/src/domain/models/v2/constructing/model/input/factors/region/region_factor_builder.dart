import 'package:presale/src/domain/models/v2/constructing/model/input/factors/base_factor/input_base_factor.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/factors/base_factor/input_base_factor_builder.dart';

import 'region.dart';

class RegionFactorBuilder extends BaseFactorBuilder<InputBaseFactor> {
  RegionFactorBuilder({required super.path});

  @override
  Region buildFromRow(List<dynamic> row) {
    String value = row[0];
    double factor = getFactor(row[1]);
    return Region(type: type, factor: factor, value: value);
  }
}

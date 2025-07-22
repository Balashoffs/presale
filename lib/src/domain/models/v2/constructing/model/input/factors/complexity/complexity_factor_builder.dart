import 'package:presale/src/domain/models/v2/constructing/model/input/factors/base_factor/input_base_factor_builder.dart';

import 'complexity.dart';

class ComplexityFactorBuilder extends BaseFactorBuilder<Complexity> {
  ComplexityFactorBuilder({required super.path});

  @override
  Complexity buildFromRow(List<dynamic> row) {
    String value = row[0];
    String applying = row[1];
    String complexityFactor = row[2];
    double factor = getFactor(complexityFactor);
    return Complexity(
      type: type,
      value: value,
      applying: applying,
      factor: factor,
      complexityFactor: complexityFactor,
    );
  }
}


import 'package:presale/src/domain/models/v2/constructing/model/input/factors/base_factor/input_base_factor.dart';

class Complexity extends InputBaseFactor {
  final String complexityFactor;
  final String applying;
  const Complexity({
    required this.complexityFactor,
    required this.applying,
    required super.factor,
    required super.type,
    required super.value,
  });
}

abstract class InputBaseFactor {
  final String value;
  final String type;
  final double _factor;

  const InputBaseFactor({
    required double factor,
    required this.type,
    required this.value,
  }) : _factor = factor;

  double get factor => _factor;
}

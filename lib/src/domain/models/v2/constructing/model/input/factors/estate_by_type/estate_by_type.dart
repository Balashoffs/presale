class EstateByType {
  final List<String> byTypes;
  final List<String> byCosts;
  final List<List<String>> costRangeMatrix;

  double calcSquareCostPerMeter(String byType, String byCost) {
    int x = byTypes.indexOf(byType);
    int y = byCosts.indexOf(byCost);
    String xy = costRangeMatrix[x][y];
    String factoAsStr = xy.split('-').first;

    return double.tryParse(factoAsStr) ?? 0.0;
  }

  double calcSquareCostPerMeterByIndex([int x = 0, int y = 0]) {
    String xy = costRangeMatrix[x][y];
    String factoAsStr = xy.split('-').first;

    return (double.tryParse(factoAsStr) ?? 0.0) * 1000;
  }

  const EstateByType({
    required this.byTypes,
    required this.byCosts,
    required this.costRangeMatrix,
  });
}

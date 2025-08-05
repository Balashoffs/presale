class DivisionSummaryVM {
  final String name;
  final String fullName;
  final double value;

  DivisionSummaryVM({
    required this.name,
    required this.value,
    required this.fullName,
  });

  static List<DivisionSummaryVM> generateSelf({
    required double overCost,
    required double marginCost,
  }) {
    return [
      DivisionSummaryVM(
        name: 'Накладные',
        fullName: 'Накладные расходы',
        value: overCost,
      ),
      DivisionSummaryVM(
        name: 'Прибыль',
        fullName: 'Норма прибыли',
        value: marginCost,
      )
    ];
  }

  static List<DivisionSummaryVM> generateCustomer({
    required double customerCost,
    required double taxCost,
  }) {
    return [
      DivisionSummaryVM(
        name: 'Всего',
        fullName: 'Всего с НДС',
        value: customerCost,
      ),
      DivisionSummaryVM(
        name: 'НДС',
        fullName: 'чистый НДС',
        value: taxCost,
      ),
    ];
  }
}

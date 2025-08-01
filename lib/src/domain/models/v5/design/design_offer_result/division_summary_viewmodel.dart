class DivisionSummaryVM {
  final String name;
  final String fullName;
  final double value;

  DivisionSummaryVM({required this.name, required this.value, required this.fullName});

  static List<DivisionSummaryVM> generate(double customerCost, double taxCost) {
    return [
      DivisionSummaryVM(
        name: 'Итого с НДС',
        fullName: 'сумма всех стоимтостей разделов',
        value: customerCost,
      ),
      DivisionSummaryVM(
        name: 'НДС',
        fullName: 'сумма всех стоимтостей разделов * 20  / 120',
        value: taxCost,
      ),
    ];
  }
}
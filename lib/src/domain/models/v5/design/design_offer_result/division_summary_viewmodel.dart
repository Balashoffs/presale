class DivisionSummaryVM {
  final ResultType resultType;
  final String name;
  final String fullName;

  DivisionSummaryVM({
    required this.name,
    required this.fullName,
    required this.resultType,
  });
}

final Map<ResultType, DivisionSummaryVM> _generatedViews = {
  ResultType.overPrice: DivisionSummaryVM(
    name: 'Накладные',
    fullName: 'Накладные расходы',
    resultType: ResultType.overPrice,
  ),
  ResultType.margin: DivisionSummaryVM(
    name: 'Прибыль',
    fullName: 'Норма прибыли',
    resultType: ResultType.margin,
  ),
  ResultType.summary: DivisionSummaryVM(
    name: 'Всего',
    fullName: 'Всего с НДС',
    resultType: ResultType.summary,
  ),
  ResultType.tax: DivisionSummaryVM(
    name: 'НДС',
    fullName: 'чистый НДС',
    resultType: ResultType.tax,
  ),
};

String getViewText(ResultType type, String value) {
  return '${_generatedViews[type]!.name}: $value';
}

enum ResultType { overPrice, margin, summary, tax }

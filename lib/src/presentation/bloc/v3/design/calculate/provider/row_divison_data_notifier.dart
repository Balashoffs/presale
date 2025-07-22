import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:presale/src/presentation/bloc/v3/design/calculate/provider/summary_change_notifier.dart';
import 'package:presale/src/presentation/modules/v3/design/input/calculate/model/division_row_data.dart';

class RowDivisionDataNotifier extends ChangeNotifier {
  final Map<String, DivisionRowDataValueChangeNotifier> _rowDivisionDataMap =
      {};

  List<DivisionRowDataValueChangeNotifier> get rowDivisionDataList =>
      _rowDivisionDataMap.values.toList();

  ValueNotifier<List<DivisionRowDataValueChangeNotifier>>  rowDivisionDataListVN = ValueNotifier([]);

  final SummaryChangeNotifier _summaryChangeNotifier;

  bool get isValid => _summaryChangeNotifier.summary.value.compareTo(0.0) > 0;

  SummaryChangeNotifier get summary => _summaryChangeNotifier;

  RowDivisionDataNotifier()
    : _summaryChangeNotifier = SummaryChangeNotifier();

  void onAddedDivisionToTable(DivisionRowDataValueChangeNotifier rowData) {
    rowData.addListener(listener);
    _rowDivisionDataMap.putIfAbsent(rowData.data.shortName, () => rowData);
    rowDivisionDataListVN.value = rowDivisionDataList;
    notifyListeners();
  }

  void onRemoveDivisionRow(DivisionRowDataValueChangeNotifier rowData) {
    _rowDivisionDataMap.remove(rowData.data.shortName);
    rowData.removeListener(listener);
    rowDivisionDataListVN.value = rowDivisionDataList;
    notifyListeners();
  }

  void listener() {
    if (_rowDivisionDataMap.isNotEmpty) {
      double summary = _rowDivisionDataMap.values
          .map((e) => e.costPrice.value)
          .reduce((value, element) => value + element);

      double summaryWithMargin = _rowDivisionDataMap.values
          .map((e) => e.costWithMargin.value)
          .reduce((value, element) => value + element);

      _summaryChangeNotifier.summary.value = summary;
      _summaryChangeNotifier.summaryWithMargin.value = summaryWithMargin;
    }
  }
}

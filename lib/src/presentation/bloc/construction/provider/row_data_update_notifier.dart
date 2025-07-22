import 'package:flutter/widgets.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/construction_state/section_data.dart';
import 'package:presale/src/presentation/common/typography_page_options.dart';

import 'package:presale/src/presentation/bloc/construction/provider/provider.dart';

class RowData2UpdateNotifier extends ChangeNotifier {
  final List<String> _columnNames = [
    'Класс',
    'Тип',
    'Подтип',
    'Стоимость',
    'Ед. изм.',
    'Кол-во',
    'Итого',
  ];

  int get columnSize => _columnNames.length;

  List<MoonTableRow> get body => _body;
  final List<MoonTableRow> _body = [];
  MoonTableHeader? _header;
  MoonTableHeader? get header => _header;

  MoonTableFooter? _footer;
  MoonTableFooter? get footer => _footer;

  final Set<String> _sectionIdsAdded = {};
  final ImmutableSectionDataNotifier _immutableSectionDataNotifier;

  final List<ValueNotifierSectionData> _tableDataOriginal = [];
  TotalCostValueNotifier totalCostValueNotifier = TotalCostValueNotifier();

  RowData2UpdateNotifier({
    required ImmutableSectionDataNotifier sectionDataNotifier,
  }) : _immutableSectionDataNotifier = sectionDataNotifier {
    _header = _generateTableHeader();
    _footer = _generateTableFooter();
    _immutableSectionDataNotifier.addListener(_handleSectionDataUpdate);
  }

  void _handleSectionDataUpdate() {
    Set<String> ids = _immutableSectionDataNotifier.ids;
    Set<String> needAdd = ids.difference(_sectionIdsAdded);
    List<SectionData> selectedSD = _immutableSectionDataNotifier.sectionData
        .where(
          (element) => needAdd.contains(element.id),
    )
        .toList();

    _body.addAll(_generateTableRows(selectedSD));
    notifyListeners();
  }

  MoonTableHeader _generateTableHeader() {
    Map<int, double> widths = {
      0: 128,
      1: 256,
      2: 512,
      3: 128,
      4: 128,
      5: 128,
      6: 128,
    };
    return MoonTableHeader(
      decoration: ShapeDecorationWithPremultipliedAlpha(
        color: MoonColors.light.frieza60,
        shape: MoonSquircleBorder(
          borderRadius: MoonSquircleBorderRadius.all(
              MoonSquircleRadius(cornerRadius: 8.0)),
        ),
      ),
      columns: List.generate(
        columnSize,
            (int index) {
          final double columnWidth = widths[index] ?? 128;
          return MoonTableColumn(
            width: columnWidth,
            cell: _buildCell(
              _columnNames[index],
            ),
          );
        },
      ),
    );
  }

  MoonTableFooter _generateTableFooter() {
    return MoonTableFooter(
      cells: List.generate(
        columnSize,
            (int index) {
          if (index == 0) return _buildCell('Всего:');
          if (index == columnSize - 1) {
            return _buildChangeNotifierCell(totalCostValueNotifier.total);
          }
          return _buildCell('-');
        },
      ),
    );
  }

  List<MoonTableRow> _generateTableRows(List<SectionData> forGenerateWidget) {
    return List.generate(
      forGenerateWidget.length,
          (int index) {
        SectionData sd = forGenerateWidget[index];
        final row = ValueNotifierSectionData(sectionData: sd);
        _tableDataOriginal.add(row);
        _sectionIdsAdded.add(sd.id);
        return MoonTableRow(
          decoration: ShapeDecorationWithPremultipliedAlpha(
            color: MoonColors.light.goku,
            shape: MoonSquircleBorder(
              borderRadius: MoonSquircleBorderRadius.all(
                  MoonSquircleRadius(cornerRadius: 8.0)),
            ),
          ),
          cells: [
            _buildCell(row.sectionData.className),
            _buildCell(row.sectionData.typeName),
            _buildCell(row.sectionData.subtypeName),
            _buildCell(row.sectionData.cost),
            _buildCell(row.sectionData.um),
            _buildTextInputCell(row),
            _buildChangeNotifierCell(row.total),
          ],
        );
      },
    );
  }

  Widget _buildCell(dynamic label) {
    return DecoratedBox(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              label.toString(),
              style: TextStyle(color: MoonColors.light.nappa),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextInputCell(ValueNotifierSectionData data) {
    return DecoratedBox(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Builder(builder: (context) {
              return MoonTextInput(
                width: 128,
                style: getBodyTextStyle(context, MoonTextSize.size12),
                onChanged: (value) {
                  double? w = double.tryParse(value);
                  if (w != null) {
                    data.changeQnt(w);
                    totalCostValueNotifier.updateTotal(_tableDataOriginal
                        .map(
                          (e) => e.total.value,
                    )
                        .reduce(
                          (value, element) => value + element,
                    ));
                  }
                },
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildChangeNotifierCell(ValueNotifier<double> value) {
    return DecoratedBox(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ValueListenableBuilder<double>(
              valueListenable: value,
              builder: (BuildContext context, double value, child) {
                return Text(
                  '$value',
                  style: getBodyTextStyle(context, MoonTextSize.size12),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class TotalCostValueNotifier {
  final ValueNotifier<double> total;

  TotalCostValueNotifier() : total = ValueNotifier(0.0);

  void updateTotal(double updated) {
    total.value = updated;
  }
}

class ValueNotifierSectionData {
  final SectionData sectionData;
  final ValueNotifier<double> qnt;
  final ValueNotifier<double> total;

  ValueNotifierSectionData({
    required this.sectionData,
  })  : qnt = ValueNotifier<double>(0.0),
        total = ValueNotifier<double>(0.0) {
    qnt.addListener(
          () {
        total.value = qnt.value * sectionData.cost;
      },
    );
  }

  void changeQnt(double newQnt) {
    qnt.value = newQnt;
  }
}
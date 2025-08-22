import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/data/core/string_converter.dart';

import 'package:presale/src/domain/models/v5/design/divisions_margin_table/division_with_margin_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/divisions_margin_summary_viewmodel.dart';
import 'package:presale/src/presentation/modules/v5/design/common/collum_attributes.dart';
import 'package:presale/src/presentation/modules/v5/design/common/table/division_resources_table_utils.dart';

class DivisionsMarginTableWidget extends StatefulWidget {
  const DivisionsMarginTableWidget({
    super.key,
    required this.rowAttributes,
    required this.tableDataRows,
  });

  final List<CollumAttribute> rowAttributes;
  final List<DivisionsWithMarginRowVM> tableDataRows;

  @override
  State<DivisionsMarginTableWidget> createState() =>
      _DivisionsMarginTableWidgetState();
}

class _DivisionsMarginTableWidgetState
    extends State<DivisionsMarginTableWidget> {
  void _scrollListener(ScrollController verticalScrollController) {}

  MoonTableHeader _generateTableHeader() {
    return MoonTableHeader(
      height: 48,
      columns: List.generate(widget.rowAttributes.length, (int index) {
        return MoonTableColumn(
          width: widget.rowAttributes[index].width,
          cell: CellDecorationWidget(
            isFistCell: index == 0,
            child: HeaderCellWidget(attribute: widget.rowAttributes[index]),
          ),
        );
      }),
    );
  }

  List<MoonTableRow> _generateTableRows() {
    final controller = context.read<DivisionsViewController>();
    return List.generate(widget.tableDataRows.length, (int index) {
      final row = widget.tableDataRows[index];
      return MoonTableRow(
        height: 72,
        cells: [
          CellDecorationWidget(
            isFistCell: true,
            child: TextCellWidget(
              label: row.id.toString(),
              key: Key(row.id.toString()),
            ),
          ),
          CellDecorationWidget(
            child: TextCellWidget(
              label: row.divisionShortName,
              key: Key(row.id.toString()),
            ),
          ),
          CellDecorationWidget(
            child: CellWithMultiLineWidget(
              key: Key(row.id.toString()),
              label: row.divisionName,
              hint: row.divisionDescription,
            ),
          ),
          CellDecorationWidget(
            child: TextCellWidget(
              label: convertToString(row.divisionSummaryCost, 0),
              key: Key(row.id.toString()),
            ),
          ),
          CellDecorationWidget(
            child: FloatInputCellWidget(
              key: Key(row.id.toString()),
              onChanged: (context, value) {
                controller.onOverPriceFactor(row.id, value);
              },
              defaultValue: row.overPriceFactor,
            ),
          ),
          CellDecorationWidget(
            child: FloatInputCellWidget(
              key: Key(row.id.toString()),
              onChanged: (context, value) {
                controller.onMarginFactor(row.id, value);
              },
              defaultValue: row.marginFactor,
            ),
          ),
          CellDecorationWidget(
            child: FloatInputCellWidget(
              key: Key(row.id.toString()),
              onChanged: (context, value) {
                controller.onClientFactor(row.id, value);
              },
              defaultValue: row.clientFactor,
            ),
          ),
          CellDecorationWidget(
            key: Key(row.id.toString()),
            child: TextWithNotifier(vn: row.summaryCostWithMarginVN),
          ),
          CellDecorationWidget(
            key: Key(row.id.toString()),
            child: TextWithNotifier(vn: row.summaryCostWithTaxVN),
          ),
        ],
      );
    });
  }

  MoonTableFooter _generateTableFooter() {
    final controller = context.read<DivisionsViewController>();
    return MoonTableFooter(
      cells: List.generate(widget.rowAttributes.length, (int index) {
        if (widget.rowAttributes.indexWhere(
              (element) => element.name == 'СР',
            ) ==
            index) {
          return CellDecorationWidget(
            key: Key('clear_cost'),
            child: TextWithNotifier(vn: controller.divisionClearSummaryVN),
          );
        }
        if (widget.rowAttributes.indexWhere(
              (element) => element.name == 'Итого',
            ) ==
            index) {
          return CellDecorationWidget(
            key: Key('total_cost'),
            child: TextWithNotifier(
              vn: controller.divisionsWithMarginSummaryVN,
            ),
          );
        } else if (widget.rowAttributes.indexWhere(
              (element) => element.name == 'с НДС',
            ) ==
            index) {
          return CellDecorationWidget(
            key: Key('total_cost'),
            child: TextWithNotifier(vn: controller.divisionsWithTaxSummaryVN),
          );
        }
        return CellDecorationWidget(
          isFistCell: index == 0,
          child: SizedBox(child: Center(child: Text(''))),
        );
      }),
      height: 48,
    );
  }

  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      child: MoonTable(
        columnsCount: widget.rowAttributes.length,
        isHeaderPinned: true,
        isFooterPinned: true,
        rowGap: 2.0,
        rowSize: MoonTableRowSize.md,
        header: _generateTableHeader(),
        rows: _generateTableRows(),
        footer: _generateTableFooter(),
        tablePadding: const EdgeInsets.symmetric(horizontal: 16),
        cellPadding: const EdgeInsets.symmetric(vertical: 8),
        onScrollControllersReady:
            (
              ScrollController verticalScrollController,
              ScrollController horizontalScrollController,
            ) => _scrollListener(verticalScrollController),
      ),
    );
  }
}

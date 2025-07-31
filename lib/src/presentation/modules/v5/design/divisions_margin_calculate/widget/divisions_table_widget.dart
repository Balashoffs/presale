import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/widget_action_type.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/division_with_margin_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/divisions_margin_summary_viewmodel.dart';
import 'package:presale/src/presentation/modules/v3/design/common/collum_attributes.dart';
import 'divisions_table_utils.dart';

typedef OnRowAction = Function(int id, WidgetActionType actionType);

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
          cell: addDecoration(
            buildHeaderCell(widget.rowAttributes[index]),
            index == 0,
          ),
        );
      }),
    );
  }

  MoonTableFooter _generateTableFooter() {
    return MoonTableFooter(
      cells: List.generate(widget.rowAttributes.length, (int index) {
        if (widget.rowAttributes.indexWhere((element) => element.name == 'Себестоимость') == index) {
          return Builder(
            builder: (context) {
              return addDecoration(
                buildTextWithNotifier(
                  context
                      .read<DivisionsMarginSummaryViewModel>()
                      .divisionClearSummaryVN,
                ),
              );
            },
          );
        }
        if (widget.rowAttributes.indexWhere((element) => element.name == 'Итого') == index) {
          return Builder(
            builder: (context) {
              return addDecoration(
                buildTextWithNotifier(
                  context
                      .read<DivisionsMarginSummaryViewModel>()
                      .divisionsWithMarginSummaryVN,
                ),
              );
            },
          );
        } else if (widget.rowAttributes.indexWhere((element) => element.name == 'с НДС') == index) {
          return Builder(
            builder: (context) {
              return addDecoration(
                buildTextWithNotifier(
                  context
                      .read<DivisionsMarginSummaryViewModel>()
                      .divisionsWithTaxSummaryVN,
                ),
              );
            },
          );
        }
        return SizedBox(child: Center(child: Text('-')),);
      }),
      height: 48,
    );
  }

  List<MoonTableRow> _generateTableRows() {
    return List.generate(widget.tableDataRows.length, (int index) {
      final row = widget.tableDataRows[index];
      return MoonTableRow(
        height: 72,
        cells: [
          addDecoration(buildTextCell(row.divisionShortName)),
          addDecoration(buildCellWithMultiLine(row.divisionName)),
          addDecoration(buildTextCell(row.divisionSummaryCost)),
          addDecoration(
            buildFactorInputCell(row.overPriceFactor, (context, value) {
              context.read<DivisionsMarginSummaryViewModel>().onOverPriceFactor(
                row.id,
                value,
              );
            }),
          ),
          addDecoration(
            buildFactorInputCell(row.marginFactor, (context, value) {
              context.read<DivisionsMarginSummaryViewModel>().onMarginFactor(
                row.id,
                value,
              );
            }),
          ),
          addDecoration(buildTextWithNotifier(row.summaryCostWithMarginVN)),
          addDecoration(buildTextWithNotifier(row.summaryCostWithTaxVN)),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      // maxWidth: MediaQuery.of(context).size.width,
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

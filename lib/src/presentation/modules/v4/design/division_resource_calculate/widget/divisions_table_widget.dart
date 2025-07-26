
import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_row_viewmodel.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/widget_action_type.dart';
import 'package:presale/src/presentation/modules/v3/design/common/collum_attributes.dart';

import 'division_table_utils.dart';

typedef OnRowAction = Function(int id, WidgetActionType actionType);

class DivisionsResourceTableWidget extends StatefulWidget {
  const DivisionsResourceTableWidget({
    super.key,
    required this.rowAttributes,
    required this.tableDataRows,
    required this.onRowAction,
    this.firstRow,
  });

  final List<CollumAttribute> rowAttributes;
  final List<DivisionResourceRowViewModel> tableDataRows;
  final DivisionResourceRowViewModelWithValueNotifier? firstRow;
  final OnRowAction onRowAction;

  @override
  State<DivisionsResourceTableWidget> createState() =>
      _DivisionsResourceTableWidgetState();
}

class _DivisionsResourceTableWidgetState
    extends State<DivisionsResourceTableWidget> {
  void _scrollListener(ScrollController verticalScrollController) {
    verticalScrollController.addListener(() {
      if (verticalScrollController.hasClients) {
        final double pixels = verticalScrollController.position.pixels;
        final double maxScrollExtent =
            verticalScrollController.position.maxScrollExtent;
      }
    });
  }

  MoonTableHeader _generateTableHeader() {
    return MoonTableHeader(
      height: 48,
      columns: List.generate(widget.rowAttributes.length, (int index) {
        return MoonTableColumn(
          width: widget.rowAttributes[index].width,
          cell: addDecoration(
              buildHeaderCell(widget.rowAttributes[index],), index == 0
          ),
        );
      }),
    );
  }

  List<MoonTableRow> _generateTableRows() {
    int totalRow =
        widget.tableDataRows.length + (widget.firstRow != null ? 1 : 0);
    return List.generate(totalRow, (int index) {
      if (index == 0 && widget.firstRow != null) {
        final row = widget.firstRow;
        return MoonTableRow(
          height: 72,
          cells: [
            buildCellWithIcon(
              const Icon(MoonIcons.controls_close_16_light),
                  () => widget.onRowAction(row!.id, WidgetActionType.delete),
            ),
            buildTextCell(row!.divisionShortName),
            buildCellWithMultiLine(row.divisionName),
            buildTextCell(row.resourceName),
            buildIntInputCell(row.resourceQntVN,),
            buildTextCell(row.resourceCostPerDay),
            buildIntInputCell(row.workDaysVN),
            buildFactorInputCell(row.complexFactorVN),
            buildFactorInputCell(row.squareFactorVN),
            buildFactorInputCell(row.resourceUsingFactorVN),
            buildTextWithNotifier(row.summaryResourceRowCostVN),
          ],
        );
      }
      int newIndex = widget.firstRow == null ? index : index - 1;
      final row = widget.tableDataRows[newIndex];
      return MoonTableRow(
        height: 48,
        cells: [
          buildCellWithIcon(
            const Icon(MoonIcons.generic_edit_16_light),
                () => widget.onRowAction(row.id, WidgetActionType.edit),
          ),
          buildTextCell(row.divisionShortName),
          buildCellWithMultiLine(row.divisionName),
          buildTextCell(row.resourceName),
          buildTextCell(row.resourceQnt),
          buildTextCell(row.resourceCostPerDay),
          buildTextCell(row.workDays),
          buildTextCell(row.complexFactor),
          buildTextCell(row.squareFactor),
          buildTextCell(row.resourceUsingFactor),
          buildTextCell(row.summaryResourceRowCost),
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
        rowGap: 2.0,
        rowSize: MoonTableRowSize.md,
        header: _generateTableHeader(),
        rows: _generateTableRows(),
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

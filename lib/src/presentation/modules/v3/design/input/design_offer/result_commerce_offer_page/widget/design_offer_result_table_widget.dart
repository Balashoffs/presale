import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/division_summary_viewmodel.dart';
import 'package:presale/src/presentation/modules/v3/design/common/collum_attributes.dart';

import 'table_utils.dart';

class DesignOfferResultTableWidget extends StatefulWidget {
  const DesignOfferResultTableWidget({
    super.key,
    required this.rowAttributes,
    required this.tableDataRows,
    required this.summaries,
  });

  final List<CollumAttribute> rowAttributes;
  final List<DesignOfferResultRowVM> tableDataRows;
  final List<DivisionSummaryVM> summaries;

  @override
  State<DesignOfferResultTableWidget> createState() =>
      _DesignOfferResultTableWidgetState();
}

class _DesignOfferResultTableWidgetState
    extends State<DesignOfferResultTableWidget> {
  @override
  void didUpdateWidget(DesignOfferResultTableWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

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

  List<MoonTableRow> _generateTableRows() {
    return List.generate(widget.tableDataRows.length, (int index) {
      final row = widget.tableDataRows[index];
      return MoonTableRow(
        height: 48,
        cells: [
          addDecoration(buildTextCell(row.id), true),
          addDecoration(buildTextCell(row.divisionShortName)),
          addDecoration(buildTextCell(row.divisionName)),
          addDecoration(buildTextCell(row.deadline)),
          addDecoration(buildTextCell(row.divisionSummaryWithTax)),
        ],
      );
    });
  }

  MoonTableFooter _generateTableFooter() {
    return MoonTableFooter(
      height: 72,
      cells: List.generate(widget.rowAttributes.length, (int index) {
        if (index == 3) {
          return buildColumnCell(
            widget.summaries.map((e) => e.name.toString()).toList(),
          );
        }
        if (index == 4) {
          return buildColumnCell(
            widget.summaries.map((e) => e.value.toString()).toList(),
          );
        }
        return buildColumnCell(['', '']);
      }),
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
      ),
    );
  }
}

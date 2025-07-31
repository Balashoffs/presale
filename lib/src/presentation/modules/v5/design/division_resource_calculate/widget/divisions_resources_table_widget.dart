import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/widget_action_type.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_resource_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_resource_summary_viewmodel.dart';
import 'package:presale/src/presentation/modules/v3/design/common/collum_attributes.dart';

import 'division_resources_table_utils.dart';

typedef OnRowAction = Function(int id, WidgetActionType actionType);

class DivisionsResourceTableWidget extends StatefulWidget {
  const DivisionsResourceTableWidget({
    super.key,
    required this.rowAttributes,
    required this.tableDataRows,
    required this.onRowAction,
  });

  final List<CollumAttribute> rowAttributes;
  final List<DivisionWithResourceRowVM> tableDataRows;
  final OnRowAction onRowAction;

  @override
  State<DivisionsResourceTableWidget> createState() =>
      _DivisionsResourceTableWidgetState();
}

class _DivisionsResourceTableWidgetState
    extends State<DivisionsResourceTableWidget> {
  late final ScrollController? _verticalScrollController;
  bool _isRemoveAction = false;

  void _scrollListener(ScrollController verticalScrollController) {
    _verticalScrollController = verticalScrollController;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(DivisionsResourceTableWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if(!_isRemoveAction){
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _verticalScrollController?.animateTo(
          _verticalScrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      });
    }else{
      _isRemoveAction =!_isRemoveAction;
    }

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
        height: 72,
        cells: [
          addDecoration(
            buildCellWithIcon(
              const Icon(MoonIcons.controls_close_16_light),
              (){
                widget.onRowAction(row.id, WidgetActionType.delete);
                _isRemoveAction = true;
              },
            ),
            true,
          ),
          addDecoration(buildTextCell(row.divisionShortName)),
          addDecoration(buildCellWithMultiLine(row.divisionName)),
          row.resourceNameVN.value.isEmpty
              ? addDecoration(
                  buildIntDropdownCell(row.divisionShortName, (context, value) {
                    context
                        .read<DivisionResourceSummaryViewModel>()
                        .onResourceName(row.id, value);
                  }),
                )
              : addDecoration(buildTextCell(row.resourceNameVN.value)),
          addDecoration(buildTextWithNotifier(row.resourceCostPerDayVN)),
          addDecoration(
            buildIntInputCell(row.resourceQnt, (context, value) {
              context.read<DivisionResourceSummaryViewModel>().onResourceQnt(
                row.id,
                value,
              );
            }),
          ),
          addDecoration(
            buildIntInputCell(row.workDays, (context, value) {
              context.read<DivisionResourceSummaryViewModel>().onWorkDays(
                row.id,
                value,
              );
            }),
          ),
          addDecoration(
            buildFactorInputCell(row.complexFactor, (context, value) {
              context.read<DivisionResourceSummaryViewModel>().onComplexFactor(
                row.id,
                value,
              );
            }),
          ),
          addDecoration(
            buildFactorInputCell(row.squareFactor, (context, value) {
              context.read<DivisionResourceSummaryViewModel>().onSquareFactor(
                row.id,
                value,
              );
            }),
          ),
          addDecoration(
            buildFactorInputCell(row.resourceUsingFactor, (context, value) {
              context
                  .read<DivisionResourceSummaryViewModel>()
                  .onResourceUsingFactor(row.id, value);
            }),
          ),
          addDecoration(buildTextWithNotifier(row.totalResourceRowCostVN)),
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

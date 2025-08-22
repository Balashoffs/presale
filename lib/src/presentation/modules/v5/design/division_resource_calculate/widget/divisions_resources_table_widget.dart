import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/widget_action_type.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_resource_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_resource_summary_viewmodel.dart';
import 'package:presale/src/presentation/modules/v5/design/common/collum_attributes.dart';

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
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('DivisionsResourceTableWidget::didChangeDependencies');
    //
  }

  @override
  void didUpdateWidget(DivisionsResourceTableWidget oldWidget) {
    print('DivisionsResourceTableWidget::didUpdateWidget');
    super.didUpdateWidget(oldWidget);
    if (!_isRemoveAction) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _verticalScrollController?.animateTo(
          _verticalScrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      });
    } else {
      _isRemoveAction = !_isRemoveAction;
    }
  }

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
    return List.generate(widget.tableDataRows.length, (int index) {
      final controller = context.read<ResourcesViewController>();
      final row = widget.tableDataRows[index];
      return MoonTableRow(
        height: 72,
        cells: [
          CellDecorationWidget(
            isFistCell: true,
            child: CellWithIconWidget(
              key: Key(row.id.toString()),
              iconData: MoonIcons.controls_close_16_light,
              onTap: () {
                widget.onRowAction(row.id, WidgetActionType.delete);
                _isRemoveAction = true;
              },
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
          row.resourceCostPerDayVN.value.compareTo(0.0) == 0
              ? CellDecorationWidget(
                  child: ResourcesDropdownWidget(
                    key: Key(row.id.toString()),
                    onChanged: (context, value) {
                      controller.onResourceName(row.id, value);
                    },
                    resources: controller.resourcesByDivisionShortName(
                      row.divisionShortName,
                    ),
                  ),
                )
              : row.resourceCostPerDayVN.value.compareTo(0.0) > 0
              ? CellDecorationWidget(
                  child: TextCellWidget(
                    key: Key(row.id.toString()),
                    label: row.resourceNameVN.value,
                  ),
                )
              : CellDecorationWidget(
                  child: TextInputCellWidget(
                    key: Key(row.id.toString()),
                    defaultValue: 'Введите специализацию',
                    onChanged: (context, value) {
                      controller.onCustomResourceName(row.id, value);
                    },
                  ),
                ),
          row.resourceCostPerDayVN.value.compareTo(0.0) >= 0
              ? CellDecorationWidget(
                  child: TextWithNotifier(
                    key: Key(row.id.toString()),
                    vn: row.resourceCostPerDayVN,
                  ),
                )
              : CellDecorationWidget(
                  child: FloatInputCellWidget(
                    key: Key(row.id.toString()),
                    onChanged: (context, value) {
                      controller.onResourceCostPerDay(row.id, value);
                    },
                    defaultValue: 0.0,
                  ),
                ),
          CellDecorationWidget(
            child: IntInputCellWidget(
              key: Key(row.id.toString()),
              onChanged: (context, value) {
                controller.onResourceQnt(row.id, value);
              },
              defaultValue: row.resourceQnt,
            ),
          ),
          CellDecorationWidget(
            child: IntInputCellWidget(
              key: Key(row.id.toString()),
              onChanged: (context, value) {
                controller.onWorkDays(row.id, value);
              },
              defaultValue: row.workDays,
            ),
          ),
          CellDecorationWidget(
            child: FloatInputCellWidget(
              key: Key(row.id.toString()),
              onChanged: (context, value) {
                controller.onComplexFactor(row.id, value);
              },
              defaultValue: row.complexFactor,
            ),
          ),
          CellDecorationWidget(
            child: FloatInputCellWidget(
              key: Key(row.id.toString()),
              onChanged: (context, value) {
                controller.onSquareFactor(row.id, value);
              },
              defaultValue: row.squareFactor,
            ),
          ),
          CellDecorationWidget(
            child: FloatInputCellWidget(
              key: Key(row.id.toString()),
              onChanged: (context, value) {
                controller.onResourceUsingFactor(row.id, value);
              },
              defaultValue: row.resourceUsingFactor,
            ),
          ),
          CellDecorationWidget(
            key: Key(row.id.toString()),
            child: TextWithNotifier(vn: row.totalResourceRowCostVN),
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    print('DivisionsResourceTableWidget::build');
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

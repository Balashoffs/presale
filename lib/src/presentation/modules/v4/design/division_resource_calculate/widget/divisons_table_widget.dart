import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_row_viewmodel.dart';
import 'package:presale/src/presentation/modules/v3/design/common/collum_atributes.dart';
import 'package:presale/src/presentation/modules/v3/design/input/calculate/model/custon_text_input.dart';
import 'package:presale/src/presentation/modules/v3/design/input/calculate/model/division_row_data.dart';

import '../../../../common/text_input_validators.dart';

typedef OnRemoveRow = Function(DivisionResourceRowViewModel row);

class DivisionsResourceTableWidget extends StatefulWidget {
  const DivisionsResourceTableWidget({
    super.key,
    required this.rowAttributes,
    required this.tableDataRows,
    required this.onRemoveRow,
  });

  final List<CollumAttribute> rowAttributes;
  final List<DivisionResourceRowViewModel> tableDataRows;
  final OnRemoveRow onRemoveRow;

  @override
  State<DivisionsResourceTableWidget> createState() => _DivisionsResourceTableWidgetState();
}

class _DivisionsResourceTableWidgetState extends State<DivisionsResourceTableWidget> {
  void _scrollListener(ScrollController verticalScrollController) {
    verticalScrollController.addListener(() {
      if (verticalScrollController.hasClients) {
        final double pixels = verticalScrollController.position.pixels;
        final double maxScrollExtent =
            verticalScrollController.position.maxScrollExtent;
      }
    });
  }

  Widget _buildHeaderCell(CollumAttribute attribute) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {}, // Optional tap handler
          child: Tooltip(
            message: attribute.tooltip,
            child: Text(
              textAlign: TextAlign.center,
              attribute.name,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextCell(dynamic label) {
    return Center(
      child: DecoratedBox(
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsetsDirectional.all(8.0),
          child: Text(
            textAlign: TextAlign.center,
            label.toString(),
          ),
        ),
      ),
    );
  }

  Widget _buildTextWithNotifier(ValueNotifier<double> vn) {
    return Center(
      child: DecoratedBox(
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsetsDirectional.all(8.0),
          child: ValueListenableBuilder<double>(
            valueListenable: vn,
            builder: (context, value, child) => Text(
              textAlign: TextAlign.center,
              value.toStringAsFixed(2),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIntInputCell(ValueNotifier<int> valueNotifier) {
    return Center(
      child: CustomTextInput(
        hintText: '${(valueNotifier.value) }%',
        onChanged: (input) {
          onChangeIntValue(valueNotifier, input);
        },
        validator: onlyIntValidator,
      ),
    );
  }

  Widget _buildFactorInputCell(ValueNotifier<double> valueNotifier) {
    return Center(
      child: CustomTextInput(
        hintText: '${(valueNotifier.value *100).toInt() }%',
        onChanged: (input) {
          onChangeFactorValue(valueNotifier, input);
        },
        validator: onlyFactorValidator,
      ),
    );
  }

  Widget _buildDayInputCell(ValueNotifier<double> valueNotifier) {
    return Center(
      child: CustomTextInput(
        hintText: '${(valueNotifier.value).toInt()} дн.',
        onChanged: (input) {
          onChangeDyaValue(valueNotifier, input);
        },
        validator: onlyInfiniteNumberValidator,
      ),
    );
  }

  Widget _buildCellWithIcon(Widget widget, VoidCallback onRemove) {
    return DecoratedBox(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.all(8.0),
        child: MoonButton.icon(
          icon: widget,
          onTap: onRemove,
        ),
      ),
    );
  }

  Widget _buildCellWithMultiLine(String label) {
    return DecoratedBox(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(end: 16.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {}, // Optional tap handler
            child: Tooltip(
              message: label.toString(),
              child: Text(
                label,
                maxLines: 3,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  MoonTableHeader _generateTableHeader() {
    return MoonTableHeader(
      height: 48,
      columns: List.generate(
        widget.rowAttributes.length,
        (int index) {
          return MoonTableColumn(
            width: widget.rowAttributes[index].width,
            cell: _buildHeaderCell(
              widget.rowAttributes[index],
            ),
          );
        },
      ),
    );
  }

  List<MoonTableRow> _generateTableRows() {
    return List.generate(
      widget.tableDataRows.length,
      (int index) {
        final row = widget.tableDataRows[index];
        return MoonTableRow(
          height: 72,
          cells: [
            _buildCellWithIcon(
              const Icon(MoonIcons.controls_close_16_light),
              () => widget.onRemoveRow(row),
            ),
            _buildTextCell(row.divisionShortName),
            _buildCellWithMultiLine(row.divisionName),
            _buildTextCell(row.resourceName),
            _buildIntInputCell(row.resourceQntVN),
            _buildTextCell(row.resourceCostPerDay),
            _buildIntInputCell(row.workDaysVN),
            _buildFactorInputCell(row.complexFactorVN),
            _buildFactorInputCell(row.squareFactorVN),
            _buildFactorInputCell(row.resourceUsingFactorVN),
            _buildTextWithNotifier(row.summaryResourceRowCostVN),
          ],
        );
      },
    );
  }

  void onChangeFactorValue(ValueNotifier<double> value, String? newValue){
    if(newValue != null){
      double? tryParse = newValue.length < 4 ? double.tryParse(newValue) : 0.0;
      if(tryParse != null){
        value.value = tryParse /100;
      }
    }
  }

  void onChangeIntValue(ValueNotifier<int> value, String? newValue){
    if(newValue != null){
      int? tryParse = newValue.length < 4 ? int.tryParse(newValue) : null;
      if(tryParse != null){
        value.value = tryParse;
      }
    }
  }


  void onChangeDyaValue(ValueNotifier<double> value, String? newValue){
    if(newValue != null){
      double? tryParse = double.tryParse(newValue);
      if(tryParse != null){
        value.value = tryParse;
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return OverflowBox(
      // maxWidth: MediaQuery.of(context).size.width,
      child: MoonTable(
        columnsCount: widget.rowAttributes.length,
        isHeaderPinned: true,
        rowGap: 16.0,
        rowSize: MoonTableRowSize.md,
        header: _generateTableHeader(),
        rows: _generateTableRows(),
        tablePadding: const EdgeInsets.symmetric(horizontal: 16),
        cellPadding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        onScrollControllersReady: (
          ScrollController verticalScrollController,
          ScrollController horizontalScrollController,
        ) =>
            _scrollListener(verticalScrollController),
      ),
    );
  }
}

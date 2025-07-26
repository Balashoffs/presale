import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v3/design/divison/division.dart';
import 'package:presale/src/presentation/modules/v3/design/common/collum_attributes.dart';
import 'package:presale/src/presentation/modules/v3/design/input/calculate/model/custon_text_input.dart';
import 'package:presale/src/presentation/modules/v3/design/input/calculate/model/division_row_data.dart';

import '../../../../../common/text_input_validators.dart';

typedef OnRemoveRow = Function(DivisionRowDataValueChangeNotifier row);

class DivisionsTableWidget extends StatefulWidget {
  const DivisionsTableWidget({
    super.key,
    required this.rowAttributes,
    required this.tableDataRows,
    required this.onRemoveRow,
  });

  final List<CollumAttribute> rowAttributes;
  final List<DivisionRowDataValueChangeNotifier> tableDataRows;
  final OnRemoveRow onRemoveRow;

  @override
  State<DivisionsTableWidget> createState() => _DivisionsTableWidgetState();
}

class _DivisionsTableWidgetState extends State<DivisionsTableWidget> {
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

  Widget _buildCellWithMultiLine(Division label) {
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
                label.name,
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
            _buildCellWithMultiLine(row.data),
            _buildTextCell(row.data.shortName),
            //hardFactor
            _buildFactorInputCell(row.hardFactor),
            //squareFactor
            _buildFactorInputCell(row.squareFactor),
            //userUsingFactor
            _buildFactorInputCell(row.userUsingFactor),
            //deadline
            _buildDayInputCell(row.deadline),
            //userSalaryPerDay
            _buildTextCell(row.data.employee.workingRatePerDay),
            _buildTextWithNotifier(row.costPrice),
            //overPriceFactor
            _buildFactorInputCell(row.overPriceFactor),
            //marginFactor
            _buildFactorInputCell(row.marginFactor),
            _buildTextWithNotifier(row.costWithTax),
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

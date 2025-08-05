import 'package:flutter/material.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/division_summary_viewmodel.dart';
import 'package:presale/src/presentation/modules/v3/design/common/collum_attributes.dart';
import 'package:presale/src/presentation/modules/v3/design/input/design_offer/result_commerce_offer_page/widget/table_utils.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class DivisionsResultAsTable extends StatefulWidget {
  const DivisionsResultAsTable({super.key, required this.results});

  final DesignOfferResultVM results;

  @override
  State<DivisionsResultAsTable> createState() => _DivisionsResultAsTableState();
}

class _DivisionsResultAsTableState extends State<DivisionsResultAsTable> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
          bottom: 8.0,
          left: 8.0,
          right: 64,
        ),
        child: SizedBox(
          height: widget.results.divisionRows.length <= 10
              ? widget.results.divisionRows.length * 72 + 144
              : MediaQuery.of(context).size.height * 2 / 3,
          child: SfDataGrid(
            footerFrozenRowsCount: 1,
            columnWidthMode: ColumnWidthMode.fill,
            footerHeight: 88,
            footer: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsetsGeometry.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    shape: BoxShape.rectangle,
                  ),
                  child: Column(
                    children: [
                      buildTextCell(
                        getViewText(
                          ResultType.overPrice,
                          widget.results.overPrice,
                        ),
                        10.0,
                      ),
                      buildTextCell(
                        getViewText(ResultType.margin, widget.results.margin),
                        10.0,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    buildTextCell(
                      getViewText(ResultType.summary, widget.results.summary),
                    ),
                    buildTextCell(
                      getViewText(ResultType.tax, widget.results.tax),
                    ),
                  ],
                ),
              ],
            ),
            source: DivisionsDataSource(
              employeeData: widget.results.divisionRows,
            ),
            columns: List.generate(designOfferTableAttribute.length, (index) {
              CollumAttribute attribute = designOfferTableAttribute[index];
              return GridColumn(
                width: attribute.width,
                allowSorting: true,
                columnName: attribute.name,
                label: Container(
                  alignment: Alignment.center,
                  child: Text(
                    attribute.name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  _DivisionsResultAsTableState();
}

class DivisionsDataSource extends DataGridSource {
  DivisionsDataSource({required List<DesignOfferResultRowVM> employeeData}) {
    _divisionData = employeeData
        .map<DataGridRow>(
          (e) => DataGridRow(
            cells: [
              DataGridCell<int>(columnName: '№', value: e.id),
              DataGridCell<String>(
                columnName: 'Шифр раздела',
                value: e.divisionShortName,
              ),
              DataGridCell<String>(
                columnName: 'Наименование раздела',
                value: e.divisionName,
              ),
              DataGridCell<int>(
                columnName: 'Срок выполнения работ',
                value: e.deadline,
              ),
              DataGridCell<double>(
                columnName: 'Стоимость с НДС',
                value: e.divisionSummaryWithTax,
              ),
            ],
          ),
        )
        .toList();
  }

  @override
  Future<void> handleRefresh() async {
    // Implement any refresh logic if needed
  }

  int get rowCount => _divisionData.length;

  List<DataGridRow> _divisionData = [];

  @override
  List<DataGridRow> get rows => _divisionData;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map((e) {
        return Container(
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Text(e.value.toString()),
        );
      }).toList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/division_summary_viewmodel.dart';
import 'package:presale/src/presentation/common/color_options.dart';
import 'package:presale/src/presentation/modules/v5/design/common/collum_attributes.dart';
import 'package:presale/src/presentation/modules/v5/design/design_offer/result_commerce_offer_page/widget/table_utils.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_viewmodel.dart';

class DivisionsResultAsTable extends StatefulWidget {
  const DivisionsResultAsTable({super.key, required this.results});

  final DesignOfferResultVM results;

  @override
  State<DivisionsResultAsTable> createState() => _DivisionsResultAsTableState();
}

class _DivisionsResultAsTableState extends State<DivisionsResultAsTable> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8.0,
        left: 8.0,
        right: 64,
      ),
      child: ListView(
        padding: EdgeInsetsGeometry.all(8.0),
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Таблица с результатами',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 14,
                color: getColor(context, MoonColor.trunks),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SfDataGrid(
            footerFrozenRowsCount: 1,
            columnWidthMode: ColumnWidthMode.fill,
            footerHeight: 88,
            shrinkWrapRows: true,
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
                      FormattedTextWidget(
                        value: widget.results.overPriceS,
                        type: ResultType.overPrice,
                        fontSize: 10.0,
                      ),
                      FormattedTextWidget(
                        value: widget.results.marginS,
                        type: ResultType.margin,
                        fontSize: 10.0,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    FormattedTextWidget(
                      value: widget.results.summaryS,
                      type: ResultType.summary,
                      fontSize: 14.0,
                    ),
                    FormattedTextWidget(
                      value: widget.results.taxS,
                      type: ResultType.tax,
                      fontSize: 14.0,
                    ),
                  ],
                ),
              ],
            ),
            source: DivisionsDataSource(employeeData: widget.results.divisionRows),
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
        ],
      ),




    );
  }

  _DivisionsResultAsTableState();
}

class DivisionsDataSource extends DataGridSource {
  DivisionsDataSource({required List<DesignOfferResultRowVM> employeeData}) {
    _divisionData = employeeData
        .map<DataGridRow>(
          (e) =>
          DataGridRow(
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
              DataGridCell<String>(
                columnName: 'Расходы',
                value: e.divisionOverPriceS,
              ),
              DataGridCell<String>(
                columnName: 'Маржа',
                value: e.divisionMarginS,
              ),
              DataGridCell<String>(
                columnName: 'Клиент',
                value: e.divisionClientS,
              ),
              DataGridCell<String>(
                columnName: 'Стоимость',
                value: e.divisionSummaryS,
              ),
              DataGridCell<String>(
                columnName: 'Стоимость с НДС',
                value: e.divisionSummaryWithTaxS,
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

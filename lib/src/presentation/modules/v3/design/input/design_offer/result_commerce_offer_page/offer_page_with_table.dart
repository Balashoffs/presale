import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/di/di.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/division_summary_viewmodel.dart';
import 'package:presale/src/presentation/bloc/v3/design/offer/design_offer_cubit.dart';
import 'package:presale/src/presentation/bloc/v3/design/offer/design_offer_result_controller.dart';
import 'package:presale/src/presentation/modules/v3/design/common/collum_attributes.dart';
import 'package:presale/src/presentation/modules/v3/design/common/custom_circle_loader.dart';
import 'package:presale/src/presentation/modules/v3/design/input/design_offer/result_commerce_offer_page/widget/design_offer_result_table_widget.dart';
import 'package:presale/src/presentation/modules/v3/design/input/design_offer/result_commerce_offer_page/widget/sign_person_dropdown.dart';
import 'package:presale/src/presentation/modules/v3/design/input/design_offer/result_commerce_offer_page/widget/table_utils.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class DesignOfferPage extends StatelessWidget {
  const DesignOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: DesignOfferRepository());
  }
}

class DesignOfferRepository extends StatelessWidget {
  const DesignOfferRepository({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => DesignOfferResultController(),
      child: DesignOfferBlocProviderWidget(),
    );
  }
}

class DesignOfferBlocProviderWidget extends StatelessWidget {
  const DesignOfferBlocProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DesignOfferCubit(
        divisionType: 'П',
        dbClient: di.dbClientImpl,
        controller: context.read<DesignOfferResultController>(),
      )..init(),
      child: DesignOfferBlocConsumerWidget(),
    );
  }
}

class DesignOfferBlocConsumerWidget extends StatelessWidget {
  const DesignOfferBlocConsumerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DesignOfferCubit, DesignOfferState>(
      builder: (context, state) {
        return state.whenOrNull(
              initial: () => CustomCircleLoader(),
              showPage: (value) => DesignOfferWidget(results: value),
            ) ??
            SizedBox();
      },
      listener: (context, state) {
        state.whenOrNull(nextPage: () => context.go('/'));
      },
    );
  }
}

class DesignOfferWidget extends StatelessWidget {
  const DesignOfferWidget({super.key, required this.results});

  final DesignOfferResultVM results;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        child: Builder(
          builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          flex: 1,
                          child: MoonMenuItem(
                            label: Text(
                              "Раздел",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16),
                            ),
                            content: Center(
                              child: Text(
                                results.divisionType,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          child: MoonMenuItem(
                            label: Text(
                              "Дата создания",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16),
                            ),
                            content: Text(
                              results.createdDesignOffer,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 7,
                          child: MoonMenuItem(
                            width: 1000,
                            label: Text(
                              "Название объекта",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16),
                            ),
                            content: MoonTextInput(
                              controller: TextEditingController.fromValue(
                                TextEditingValue(text: results.objectName),
                              ),
                              readOnly: true,
                              textAlign: TextAlign.start,
                              height: 48,
                            ),
                          ),
                        ),
                      ],
                    ),
                    MoonMenuItem(
                      label: Text(
                        "Адрес объекта",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      ),
                      content: MoonTextArea(
                        controller: TextEditingController.fromValue(
                          TextEditingValue(text: results.objectLocation),
                        ),
                        textAlign: TextAlign.start,
                        minLines: 2,
                        height: 72,
                      ),
                    ),
                  ],
                ),
                DivisionsResultAsTable(designOfferResultVM: results),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 4,
                      child: Column(
                        children: [
                          buildMultilineTextInput('Поле для примечаний', (
                            context,
                            value,
                          ) {
                            context
                                .read<DesignOfferResultController>()
                                .onComments(value);
                          }),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: [
                          MoonMenuItem(
                            width: 250,
                            label: Text(
                              "Итого (Для внутреннего)",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16),
                            ),
                            content: MoonTextArea(
                              height: 48,
                              textAlign: TextAlign.start,
                              controller: TextEditingController.fromValue(
                                TextEditingValue(
                                  text: results.personCost.toStringAsFixed(2),
                                ),
                              ),
                            ),
                          ),
                          MoonMenuItem(
                            width: 250,
                            label: Text(
                              "Итого (Для заказчика)",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16),
                            ),
                            content: MoonTextArea(
                              height: 48,
                              textAlign: TextAlign.start,
                              controller: TextEditingController.fromValue(
                                TextEditingValue(
                                  text: results.customerCost.toStringAsFixed(2),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 8.0,
                        children: [
                          Column(
                            spacing: 4.0,
                            children: [
                              SizedBox(
                                width: 250,
                                child: Text("Сроки проведения работ, дн."),
                              ),
                              buildIntInputCell(0, (context, value) {
                                context
                                    .read<DesignOfferResultController>()
                                    .onWorkTime(value);
                              }),
                            ],
                          ),
                          Column(
                            spacing: 4.0,
                            children: [
                              SizedBox(
                                width: 250,
                                child: Text("Авансирование, рубл."),
                              ),
                              buildFactorInputCell(0, (context, value) {
                                context
                                    .read<DesignOfferResultController>()
                                    .onAvance(value);
                              }),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(width: 250, child: Text('Подготовил')),
                              ValueListenableBuilder(
                                valueListenable: context
                                    .read<DesignOfferResultController>()
                                    .signs,
                                builder: (context, value, child) {
                                  return PersonSignDropDownSelector(
                                    hintText: 'Выбрать подписанта',
                                    onSelected: (value) {
                                      context
                                          .read<DesignOfferResultController>()
                                          .onSelectSign(value);
                                    },
                                    resources: value,
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MoonButton(
                            width: 200,
                            showBorder: true,
                            label: const Text("Выгрузить КП"),
                            onTap: () => Form.of(context).validate(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class DivisionsResultAsTable extends StatefulWidget {
  const DivisionsResultAsTable({super.key, required this.designOfferResultVM});

  final DesignOfferResultVM designOfferResultVM;

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
          height: widget.designOfferResultVM.divisionRows.length <= 10
              ? widget.designOfferResultVM.divisionRows.length * 72 + 144
              : MediaQuery.of(context).size.height * 2 / 3,
          child: SfDataGrid(
            footerFrozenRowsCount: 1,
            columnWidthMode: ColumnWidthMode.fill,
            footerHeight: 88,
            footer: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: List.generate(
                widget.designOfferResultVM.divisionSummaries.length,
                (index) {
                  DivisionSummaryVM sum =
                      widget.designOfferResultVM.divisionSummaries[index];
                  return buildTextCell('${sum.name}: ${sum.value}');
                },
              ),
            ),
            source: DivisionsDataSource(
              employeeData: widget.designOfferResultVM.divisionRows,
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

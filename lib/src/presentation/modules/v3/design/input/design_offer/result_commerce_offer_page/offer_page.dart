import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/di/di.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_viewmodel.dart';
import 'package:presale/src/presentation/bloc/v3/design/offer/design_offer_cubit.dart';
import 'package:presale/src/presentation/bloc/v3/design/offer/design_offer_result_controller.dart';
import 'package:presale/src/presentation/modules/v3/design/common/collum_attributes.dart';
import 'package:presale/src/presentation/modules/v3/design/common/custom_circle_loader.dart';
import 'package:presale/src/presentation/modules/v3/design/input/design_offer/result_commerce_offer_page/widget/design_offer_result_table_widget.dart';
import 'package:presale/src/presentation/modules/v3/design/input/design_offer/result_commerce_offer_page/widget/sign_person_dropdown.dart';
import 'package:presale/src/presentation/modules/v3/design/input/design_offer/result_commerce_offer_page/widget/table_utils.dart';

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
    return CustomScrollView(
      primary: true,
      shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 256,
            child: Column(
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
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height -200,
            width: MediaQuery.of(context).size.width -200,
            child: DesignOfferResultTableWidget(
              rowAttributes: designOfferTableAttribute,
              tableDataRows: results.divisionRows,
              summaries: results.divisionSummaries,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 500,
            child: Row(
              children: [
                Flexible(
                  flex: 4,
                  child: Form(
                    child: Builder(
                      builder: (BuildContext context) {
                        return Column(
                          children: [
                            buildMultilineTextInput('Поле для примечаний', (
                              context,
                              value,
                            ) {
                              context
                                  .read<DesignOfferResultController>()
                                  .onComments(value);
                            }),
                            const SizedBox(height: 16),
                            Row(
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
                            const SizedBox(height: 16),
                            Row(
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
                            const SizedBox(height: 16),
                            Row(
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
                            const SizedBox(height: 16),
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
                        );
                      },
                    ),
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
            // )),SliverToBoxAdapter(child:SizedBox(
            //   height: MediaQuery.of(context).size.height * 6 / 20,
            //   child: Row(
            //     children: [
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.end,
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         children: [
            //           MoonMenuItem(
            //             width: 250,
            //             label: Text(
            //               "Итого (Для внутреннего)",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(fontSize: 16),
            //             ),
            //             content: MoonTextArea(
            //               height: 48,
            //               textAlign: TextAlign.start,
            //               controller: TextEditingController.fromValue(
            //                 TextEditingValue(
            //                   text: results.personCost.toStringAsFixed(2),
            //                 ),
            //               ),
            //             ),
            //           ),
            //           MoonMenuItem(
            //             width: 250,
            //             label: Text(
            //               "Итого (Для заказчика)",
            //               textAlign: TextAlign.center,
            //               style: TextStyle(fontSize: 16),
            //             ),
            //             content: MoonTextArea(
            //               height: 48,
            //               textAlign: TextAlign.start,
            //               controller: TextEditingController.fromValue(
            //                 TextEditingValue(
            //                   text: results.customerCost.toStringAsFixed(2),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //       Form(
            //         child: Builder(
            //           builder: (BuildContext context) {
            //             return Column(
            //               children: [
            //                 buildMultilineTextInput('Поле для примечаний', (context, value) {
            //                   context.read<DesignOfferResultController>().onComments(value);
            //                 }),
            //                 const SizedBox(height: 16),
            //                 Row(
            //                   children: [
            //                     SizedBox(
            //                       width: 250,
            //                       child: Text("Сроки проведения работ, дн."),
            //                     ),
            //                     buildIntInputCell(0, (context, value) {
            //                       context.read<DesignOfferResultController>().onWorkTime(
            //                         value,
            //                       );
            //                     }),
            //                   ],
            //                 ),
            //                 const SizedBox(height: 16),
            //                 Row(
            //                   children: [
            //                     SizedBox(width: 250, child: Text("Авансирование, рубл.")),
            //                     buildFactorInputCell(0, (context, value) {
            //                       context.read<DesignOfferResultController>().onAvance(value);
            //                     }),
            //                   ],
            //                 ),
            //                 const SizedBox(height: 16),
            //                 Row(
            //                   children: [
            //                     SizedBox(width: 250, child: Text('Подготовил')),
            //                     ValueListenableBuilder(
            //                         valueListenable: context.read<DesignOfferResultController>().signs,
            //                         builder: (context, value, child) {
            //                           return PersonSignDropDownSelector(
            //                             hintText: 'Выбрать подписанта',
            //                             onSelected: (value) {
            //                               context
            //                                   .read<DesignOfferResultController>()
            //                                   .onSelectSign(value);
            //                             },
            //                             resources: value,
            //                           );
            //                         }
            //                     ),
            //                   ],
            //                 ),
            //                 const SizedBox(height: 16),
            //                 Row(
            //                   mainAxisAlignment: MainAxisAlignment.start,
            //                   children: [
            //                     MoonButton(
            //                       width: 200,
            //                       showBorder: true,
            //                       label: const Text("Выгрузить КП"),
            //                       onTap: () => Form.of(context).validate(),
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             );
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
          ),
        ),
      ],
    );
  }
}

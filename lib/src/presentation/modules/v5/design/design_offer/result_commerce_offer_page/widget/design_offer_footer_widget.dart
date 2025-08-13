import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/bloc/v5/design/offer/design_offer_cubit.dart';
import 'package:presale/src/presentation/bloc/v5/design/offer/design_offer_result_controller.dart';
import 'package:presale/src/presentation/modules/v5/design/design_offer/result_commerce_offer_page/widget/sign_person_dropdown.dart';
import 'package:presale/src/presentation/modules/v5/design/design_offer/result_commerce_offer_page/widget/table_utils.dart';

class DesignOfferFooterWidget extends StatelessWidget {
  const DesignOfferFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
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
                spacing: 8.0,
                children: [
                  MoonButton(
                      width: 200,
                      showBorder: true,
                      label: const Text("Выгрузить КП"),
                      onTap: () {
                        if (Form.of(context).validate()) {
                          context.read<DesignOfferCubit>().saveToFile();
                        }
                      }

                  ),
                  MoonButton(
                      width: 100,
                      showBorder: true,
                      label: const Text("Закрыть"),
                      onTap: () {
                        context.read<DesignOfferCubit>().toMainPage();
                      }

                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

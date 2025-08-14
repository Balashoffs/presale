import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_viewmodel.dart';
import 'package:presale/src/presentation/bloc/v5/design/offer/design_offer_result_controller.dart';
import 'package:presale/src/presentation/common/color_options.dart';
import 'package:presale/src/presentation/modules/v5/design/design_offer/result_commerce_offer_page/widget/sign_person_dropdown.dart';
import 'package:presale/src/presentation/modules/v5/design/design_offer/result_commerce_offer_page/widget/table_utils.dart';

class DesignOfferHeaderWidget extends StatelessWidget {
  const DesignOfferHeaderWidget({super.key, required this.results});

  final DesignOfferResultVM results;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.0,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 8.0,
          children: [
            Flexible(
              flex: 2,
              child: MoonMenuItem(
                label: Text(
                  "Тип документации",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    color: getColor(context, MoonColor.trunks),
                  ),
                ),
                content: Text(
                  results.divisionType,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: getColor(context, MoonColor.popo),
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
                  style: TextStyle(
                    fontSize: 14,
                    color: getColor(context, MoonColor.trunks),
                  ),
                ),
                content: Text(
                  results.createdDesignOffer,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: getColor(context, MoonColor.popo),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 7,
              child: MoonMenuItem(
                width: 1000,
                label: Text(
                  "Название объекта",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    color: getColor(context, MoonColor.trunks),
                  ),
                ),
                content: MoonTextInput(
                  controller: TextEditingController.fromValue(
                    TextEditingValue(text: results.objectName),
                  ),
                  readOnly: true,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ],
        ),
        MoonMenuItem(
          label: Text(
            "Адрес объекта",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: getColor(context, MoonColor.trunks),
            ),
          ),
          content: MoonTextArea(
            controller: TextEditingController.fromValue(
              TextEditingValue(text: results.objectLocation),
            ),
            textAlign: TextAlign.start,
            textStyle: TextStyle(
              fontSize: 16,
              color: getColor(context, MoonColor.popo),
            ),
            minLines: 2,
            height: 72,
          ),
        ),
        Row(
          spacing: 8.0,
          children: [
            Flexible(
              flex: 1,
              child: MoonMenuItem(
                width: 256,
                label: Text(
                  "Сроки проведения работ:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    color: getColor(context, MoonColor.trunks),
                  ),
                ),
                content: Text(
                  '${results.totalDays.toString()}, дн.',
                  style: TextStyle(
                    fontSize: 16,
                    color: getColor(context, MoonColor.popo),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: SizedBox(
                width: 256,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4.0,
                  children: [
                    Text(
                      "Авансирование",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        color: getColor(context, MoonColor.trunks),
                      ),
                    ),
                    buildAvanceInputCell(0, (context, value) {
                      context.read<DesignOfferResultController>().onAvance(
                        0.0,
                      );
                    }),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
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
            ),
          ],
        ),
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
                    context.read<DesignOfferResultController>().onComments(
                      value,
                    );
                  }),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

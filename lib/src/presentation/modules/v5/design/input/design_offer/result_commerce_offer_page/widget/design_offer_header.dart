import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_viewmodel.dart';

class DesignOfferHeaderWidget extends StatelessWidget {
  const DesignOfferHeaderWidget({super.key, required this.results});
  final DesignOfferResultVM results;
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}

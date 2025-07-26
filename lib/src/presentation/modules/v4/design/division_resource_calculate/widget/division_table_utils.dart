import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/modules/common/text_input_validators.dart';
import 'package:presale/src/presentation/modules/v3/design/common/collum_attributes.dart';
import 'package:presale/src/presentation/modules/v3/design/input/calculate/model/custon_text_input.dart';

Widget addDecoration(Widget child, [bool isFistCell = true]) {
  return  Builder(
    builder: (context) {
      return DecoratedBox(
        decoration: isFistCell ? BoxDecoration() :  BoxDecoration(
          border: Border(
            left: Directionality.of(context) == TextDirection.ltr
                ? Divider.createBorderSide(
              context,
              color: context.moonColors!.beerus,
              width: 1,
            )
                : BorderSide.none,
            right: Directionality.of(context) == TextDirection.rtl
                ? Divider.createBorderSide(
              context,
              color: context.moonColors!.beerus,
              width: 1,
            )
                : BorderSide.none,
          ),
        ),
        child: child,
      );
    }
  );
}

Widget buildHeaderCell(CollumAttribute attribute) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
        onTap: () {}, // Optional tap handler
        child: Tooltip(
          message: attribute.tooltip,
          child: Text(textAlign: TextAlign.center, attribute.name),
        ),
      ),
    ],
  );
}

Widget buildTextCell(dynamic label) {
  return Center(
    child: DecoratedBox(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.all(8.0),
        child: Text(textAlign: TextAlign.center, label.toString()),
      ),
    ),
  );
}

Widget buildTextWithNotifier(ValueNotifier<double> vn) {
  return Center(
    child: DecoratedBox(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.all(8.0),
        child: ValueListenableBuilder<double>(
          valueListenable: vn,
          builder: (context, value, child) =>
              Text(textAlign: TextAlign.center, value.toStringAsFixed(2)),
        ),
      ),
    ),
  );
}

Widget buildIntInputCell(ValueNotifier<int> valueNotifier, [String dimension = '']) {
  return Center(
    child: SizedBox(
      width: 56,
      child: CustomTextInput(
        hintText: dimension.isEmpty ? '${(valueNotifier.value)}' : '${(valueNotifier.value)}$dimension',
        onChanged: (input) {
          onChangeIntValue(valueNotifier, input);
        },
        validator: onlyIntValidator,
      ),
    ),
  );
}

Widget buildFactorInputCell(ValueNotifier<double> valueNotifier, [String dimension = '']) {
  return Center(
    child: SizedBox(
      width: 56,
      child: CustomTextInput(
        hintText: dimension.isEmpty ? '${(valueNotifier.value)}' : '${(valueNotifier.value)}$dimension',
        onChanged: (input) {
          onChangeFactorValue(valueNotifier, input);
        },
        validator: onlyFactorValidator,
      ),
    ),
  );
}

Widget buildCellWithIcon(Widget widget, VoidCallback onRemove) {
  return DecoratedBox(
    decoration: const BoxDecoration(),
    child: Padding(
      padding: const EdgeInsetsDirectional.all(8.0),
      child: MoonButton.icon(icon: widget, onTap: onRemove),
    ),
  );
}

Widget buildCellWithMultiLine(String label) {
  return Center(
    child: DecoratedBox(
      decoration: const BoxDecoration(),
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
  );
}



void onChangeFactorValue(ValueNotifier<double> value, String? newValue) {
  if (newValue != null) {
    double? tryParse = newValue.length < 4 ? double.tryParse(newValue) : 0.0;
    if (tryParse != null) {
      value.value = tryParse / 100;
    }
  }
}

void onChangeIntValue(ValueNotifier<int> value, String? newValue) {
  if (newValue != null) {
    int? tryParse = newValue.length < 4 ? int.tryParse(newValue) : null;
    if (tryParse != null) {
      value.value = tryParse;
    }
  }
}

void onChangeDyaValue(ValueNotifier<double> value, String? newValue) {
  if (newValue != null) {
    double? tryParse = double.tryParse(newValue);
    if (tryParse != null) {
      value.value = tryParse;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/data/core/string_converter.dart';
import 'package:presale/src/presentation/modules/v5/design/common/collum_attributes.dart';
import 'package:presale/src/presentation/modules/v5/design/common/custom_text_input.dart';
import 'package:presale/src/presentation/modules/v5/design/common/text_input_validators.dart';

typedef ValueChangedWithContext<T> =
    void Function(BuildContext context, T value);

Widget addDecoration(Widget child, [bool isFistCell = false]) {
  return Builder(
    builder: (context) {
      return DecoratedBox(
        decoration: isFistCell
            ? BoxDecoration()
            : BoxDecoration(
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
    },
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

Widget buildStringTextCell(String value) {
  return Center(
    child: Padding(
      padding: const EdgeInsetsDirectional.all(8.0),
      child: Text(textAlign: TextAlign.center, value),
    ),
  );
}

Widget buildIntTextCell(double value) {
  return Center(
    child: Padding(
      padding: const EdgeInsetsDirectional.all(8.0),
      child: Text(textAlign: TextAlign.center, convertToString(value, 0)),
    ),
  );
}

Widget buildTextWithNotifier(ValueNotifier<double> vn) {
  return Center(
    child: Padding(
      padding: const EdgeInsetsDirectional.all(8.0),
      child: ValueListenableBuilder<double>(
        valueListenable: vn,
        builder: (context, value, child) =>
            Text(textAlign: TextAlign.center, convertToString(value, 0)),
      ),
    ),
  );
}

Widget buildIntInputCell(
  int defaultValue,
  ValueChangedWithContext<int> onChanged,
) {
  return Builder(
    builder: (context) {
      return Center(
        child: SizedBox(
          width: 56,
          child: CustomTextInput(
            isEnables: true,
            hintText: '$defaultValue',
            onChanged: (input) {
              int? parsed = onChangeIntValue(input);
              if (parsed != null) {
                onChanged(context, parsed);
              }else{
                onChanged(context, 0);
              }
            },
            validator: onlyIntValidator,
          ),
        ),
      );
    },
  );
}

Widget buildFactorInputCell(
  double defaultValue,
  ValueChangedWithContext<double> onChanged,
) {
  return Builder(
    builder: (context) {
      return Center(
        child: SizedBox(
          width: 56,
          child: CustomTextInput(
            isEnables: true,
            hintText: '$defaultValue',
            onChanged: (input) {
              double? parsed = onChangeFactorValue(input);
              if (parsed != null) {
                onChanged(context, parsed);
              }else{
                onChanged(context, 0.0);
              }
            },
            validator: onlyFactorValidator,
          ),
        ),
      );
    },
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

double? onChangeFactorValue(String? newValue) {
  if (newValue != null) {
    double? tryParse = newValue.length < 4 ? double.tryParse(newValue) : 0.0;
    if (tryParse != null) {
      return tryParse;
    }
  }
  return null;
}

int? onChangeIntValue(String? newValue) {
  if (newValue != null) {
    int? tryParse = newValue.length < 4 ? int.tryParse(newValue) : null;
    if (tryParse != null) {
      return tryParse;
    }
  }
  return null;
}

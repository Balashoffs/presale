import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/common/color_options.dart';
import 'package:presale/src/presentation/modules/common/text_input_validators.dart';
import 'package:presale/src/presentation/modules/v3/design/common/collum_attributes.dart';
import 'package:presale/src/presentation/modules/v3/design/input/calculate/model/custon_text_input.dart';


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

Widget buildColumnCell(List<String> strings) {
  return Expanded(
    child: Column(
      children: [
        Center(child: Text(textAlign: TextAlign.center, strings[0])),
        Center(child: Text(textAlign: TextAlign.center, strings[1])),
      ],
    ),
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
    child: Padding(
      padding: const EdgeInsetsDirectional.all(8.0),
      child: Text(textAlign: TextAlign.center, label.toString()),
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
          builder: (context, value, child) {
            Color textColor = vn.value.compareTo(0.0) > 0
                ? colorTable(context)[MoonColor.zeno.index]!
                : colorTable(context)[MoonColor.chichi.index]!;
            ;
            return Text(textAlign: TextAlign.center, value.toStringAsFixed(2), style: TextStyle(color: textColor),);
          },
        ),
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
          width: 256,
          child: CustomTextInput(
            isEnables: true,
            hintText: '$defaultValue',
            onChanged: (input) {
              int? parsed = onChangeIntValue(input);
              if (parsed != null) {
                onChanged(context, parsed);
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
          width: 256,
          child: CustomTextInput(
            isEnables: true,
            hintText: '$defaultValue',
            onChanged: (input) {
              double? parsed = onChangeFactorValue(input);
              if (parsed != null) {
                onChanged(context, parsed);
              }
            },
            validator: onlyFactorValidator,
          ),
        ),
      );
    },
  );
}

Widget buildStringInputCell(
    String defaultValue,
    ValueChangedWithContext<String> onChanged,
    ) {
  return Builder(
    builder: (context) {
      return Center(
        child: SizedBox(
          width: 56,
          child: CustomTextInput(
            isEnables: true,
            hintText: defaultValue,
            onChanged: (input) {
              if (input.isNotEmpty) {
                onChanged(context, input);
              }
            },
            validator: objectNameValidator,
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
    child: InkWell(
      onTap: () {}, // Optional tap handler
      child: Tooltip(
        message: label.toString(),
        child: Text(
          label,
          maxLines: 3,
          textAlign: TextAlign.center,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(),
        ),
      ),
    ),
  );
}

Widget buildMultilineTextInput(String label, ValueChangedWithContext<String> onChanged,){
  return Builder(
    builder: (context) {
      return CustomTextAreaInput(hintText: label, width: 1000, onChanged: (value) {
        if(value.isNotEmpty){
          onChanged(context, value);
        }
      },);
    }
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

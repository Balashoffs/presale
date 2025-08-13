import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_resource_summary_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_with_resources_dto.dart';
import 'package:presale/src/presentation/common/color_options.dart';
import 'package:presale/src/presentation/modules/common/text_input_validators.dart';
import 'package:presale/src/presentation/modules/v5/design/common/collum_attributes.dart';
import 'package:presale/src/presentation/modules/v5/design/common/custom_text_input.dart';

import 'custom_dropdown_with_search_widget.dart';

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
            return Text(
              textAlign: TextAlign.center,
              value.toStringAsFixed(2),
              style: TextStyle(color: textColor),
            );
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
          width: 56,
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

Widget buildIntDropdownCell(
  ValueChangedWithContext<String> onChanged,
  List<ResourceDTO> resources,
) {
  return Builder(
    builder: (context) {
      return Center(
        child: ResourceDropDownSelector(
          hintText: 'Выберите ресурс',
          onSelected: (p0) => onChanged(context, p0?.resourceName ?? ''),
          resources: resources,
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

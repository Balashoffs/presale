import 'package:flutter/cupertino.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/common/color_options.dart';

void showToast(BuildContext context, String text){
  MoonToast.show(
    context,
    backgroundColor: colorTable(context)[40],
    isPersistent: false,
    useSafeArea: false,
    width: 196,
    toastAlignment: Alignment.bottomCenter,
    variant: MoonToastVariant.original,
    displayDuration: Duration(seconds: 3),
    borderRadius: BorderRadius.circular(8.toDouble()),
    leading: Icon(
      MoonIcons.generic_info_24_light,
      color: colorTable(context)[40],
    ),
    label: Text(
      text,
      style: TextStyle(color: colorTable(context)[40]),
    ),
  );
}

void showToastWithoutContext(BuildContext context, String text){
  MoonToast.show(
    context,
    backgroundColor: colorTable(context)[40],
    isPersistent: false,
    useSafeArea: false,
    width: 230,
    toastAlignment: Alignment.bottomCenter,
    variant: MoonToastVariant.original,
    displayDuration: Duration(seconds: 3),
    borderRadius: BorderRadius.circular(8.toDouble()),
    leading: Icon(
      MoonIcons.generic_info_24_light,
      color: colorTable(context)[40],
    ),
    label: Text(
      text,
      style: TextStyle(color: colorTable(context)[40]),
    ),
    trailing: Icon(
      MoonIcons.generic_star_24_light,
      color: colorTable(context)[40],
    ),
  );
}
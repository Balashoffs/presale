import 'dart:convert';

import 'package:presale/src/utils/dart_define/model/dart_define_model.dart';
import 'package:presale/src/utils/dart_define/model/design_class/design_class.dart';

DartDefineModel buildFrom(){
  String type =const String.fromEnvironment('type');
  final source = const String.fromEnvironment('design');
  final map = json.decode(source);
  DesignClass design = DesignClass.fromJson(map);
  return DartDefineModel(type: type, design: design);
}
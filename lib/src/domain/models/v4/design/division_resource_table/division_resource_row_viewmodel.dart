import 'package:flutter/cupertino.dart';
import 'package:presale/src/data/v3/calucator.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_dto.dart';

class DivisionResourceRowViewModel{
  //Имя раздела
  final String divisionName;

  // Аббвеатура
  final String divisionShortName;

  // Должность
  final String resourceName;

  // Кол-во задействованных должностей
  final ValueNotifier<int> resourceQntVN = ValueNotifier(0);

  // Кол-во задействованных дней
  final ValueNotifier<int> workDaysVN = ValueNotifier(0);

  // Коэфициент сложности
  final ValueNotifier<double> complexFactorVN;

  // Коэфициент по площади
  final ValueNotifier<double> squareFactorVN;

  // Коэфициент участия
  final ValueNotifier<double> resourceUsingFactorVN = ValueNotifier(0.0);

  // Стоимость задествия должности по конкретному разделу
  final ValueNotifier<double> summaryResourceRowCostVN = ValueNotifier(0.0);


  // Ставка в день
  final double resourceCostPerDay;

  final Calculator _calculator;

  DivisionResourceRowViewModel({
    required DivisionResourceDTO divisionResourceDTO,
    required InputDataDesign inputDataDesign,
    required Calculator calculator,
  }) : _calculator = calculator,
       divisionName = divisionResourceDTO.divisionName,
       resourceName = divisionResourceDTO.resourceName,
       divisionShortName = divisionResourceDTO.divisionShortName,
       resourceCostPerDay = divisionResourceDTO.resourceCostPerDay,
       complexFactorVN = ValueNotifier(inputDataDesign.complexityFactor),
       squareFactorVN = ValueNotifier(inputDataDesign.squareFactor);

  void initListeners() {
    resourceQntVN.addListener(_listener);
    resourceUsingFactorVN.addListener(_listener);
    squareFactorVN.addListener(_listener);
    complexFactorVN.addListener(_listener);
    workDaysVN.addListener(_listener);
  }

  void _listener() {
    double summary = _calculator.calcDivisionSummary(this);
    summaryResourceRowCostVN.value = summary;
  }
}

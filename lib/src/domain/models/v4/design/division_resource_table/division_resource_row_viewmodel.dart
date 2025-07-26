import 'package:flutter/cupertino.dart';
import 'package:presale/src/data/v3/design_calculator.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_dto.dart';

class DivisionResourceRowViewModelWithValueNotifier{
  //Имя раздела
  final int id;
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
  final ValueNotifier<double> resourceUsingFactorVN = ValueNotifier(1.0);

  // Стоимость задествия должности по конкретному разделу
  final ValueNotifier<double> summaryResourceRowCostVN = ValueNotifier(0.0);

  // Ставка в день
  final double resourceCostPerDay;

  final DesignOfferCalculator _calculator;

  DivisionResourceRowViewModelWithValueNotifier({
    required DivisionResourceDTO divisionResourceDTO,
    required InputDataDesign inputDataDesign,
    required DesignOfferCalculator calculator,
  }) : _calculator = calculator,
       id = divisionResourceDTO.id,
       divisionName = divisionResourceDTO.divisionName,
       resourceName = divisionResourceDTO.resourceName,
       divisionShortName = divisionResourceDTO.divisionShortName,
       resourceCostPerDay = divisionResourceDTO.resourceCostPerDay,
       complexFactorVN = ValueNotifier(inputDataDesign.complexityFactor),
       squareFactorVN = ValueNotifier(inputDataDesign.squareFactor);

  void initListeners() {
    resourceUsingFactorVN.addListener(_listener);
    squareFactorVN.addListener(_listener);
    complexFactorVN.addListener(_listener);
    resourceQntVN.addListener(_listener);
    workDaysVN.addListener(_listener);
  }

  void _listener() {
    double summary = _calculator.calcDivisionSummary(this);
    summaryResourceRowCostVN.value = summary;
  }

  void clear() {
    resourceQntVN.dispose();
    workDaysVN.dispose();
    complexFactorVN.dispose();
    squareFactorVN.dispose();
    resourceUsingFactorVN.dispose();
    summaryResourceRowCostVN.dispose();
  }
}

class DivisionResourceRowViewModel {
  //Имя раздела
  final int id;
  final String divisionName;

  // Аббвеатура
  final String divisionShortName;

  // Должность
  final String resourceName;

  // Кол-во задействованных должностей
  final int? resourceQnt;

  // Кол-во задействованных дней
  final int? workDays;

  // Коэфициент сложности
  final double? complexFactor;

  // Коэфициент по площади
  final double? squareFactor;

  // Коэфициент участия
  final double? resourceUsingFactor;

  // Стоимость задествия должности по конкретному разделу
  final double? summaryResourceRowCost;

  // Ставка в день
  final double resourceCostPerDay;

  const DivisionResourceRowViewModel({
    required this.id,
    required this.divisionName,
    required this.divisionShortName,
    required this.resourceName,
    this.resourceQnt,
    this.workDays,
    this.complexFactor,
    this.squareFactor,
    this.resourceUsingFactor,
    this.summaryResourceRowCost,
    required this.resourceCostPerDay,
  });
}

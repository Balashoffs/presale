import 'package:flutter/cupertino.dart';
import 'package:presale/src/data/v3/design_calculator.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_dto.dart';

class DivisionResourceRowVM_VN {
  //Имя раздела
  final int id;
  final String divisionName;

  // Аббвеатура
  final String divisionShortName;

  // Должность
  final String resourceName;

  // Кол-во задействованных должностей
  final ValueNotifier<int> resourceQntVN;

  // Кол-во задействованных дней
  final ValueNotifier<int> workDaysVN;

  // Коэфициент сложности
  final ValueNotifier<double> complexFactorVN;

  // Коэфициент по площади
  final ValueNotifier<double> squareFactorVN;

  // Коэфициент участия
  final ValueNotifier<double> resourceUsingFactorVN;

  // Стоимость задествия должности по конкретному разделу
  final ValueNotifier<double> summaryResourceRowCostVN;

  // Ставка в день
  final double resourceCostPerDay;

  final DesignOfferCalculator _calculator;

  DivisionResourceRowVM_VN.fromDto({
    required DivisionResourceDTO divisionResourceDTO,
    required InputDataDesign inputDataDesign,
    required DesignOfferCalculator calculator,
  }) : _calculator = calculator,
       id = divisionResourceDTO.id,
       divisionShortName = divisionResourceDTO.divisionShortName,
       divisionName = divisionResourceDTO.divisionName,
       resourceName = divisionResourceDTO.resourceName,
       resourceQntVN = ValueNotifier(0),
       workDaysVN = ValueNotifier(0),
       resourceUsingFactorVN = ValueNotifier(1.0),
       resourceCostPerDay = divisionResourceDTO.resourceCostPerDay,
       complexFactorVN = ValueNotifier(inputDataDesign.complexityFactor),
       squareFactorVN = ValueNotifier(inputDataDesign.squareFactor),
       summaryResourceRowCostVN = ValueNotifier(0.0) {
    initListeners();
  }

  DivisionResourceRowVM_VN.fromModel({
    required DivisionResourceRowVM divisionResourceModel,
    required InputDataDesign inputDataDesign,
    required DesignOfferCalculator calculator,
  }) : _calculator = calculator,
       id = divisionResourceModel.id,
       divisionName = divisionResourceModel.divisionName,
       resourceName = divisionResourceModel.resourceName,
       divisionShortName = divisionResourceModel.divisionShortName,
       resourceCostPerDay = divisionResourceModel.resourceCostPerDay,
       resourceQntVN = ValueNotifier(divisionResourceModel.resourceQnt ?? 1),
       complexFactorVN = ValueNotifier(
         divisionResourceModel.complexFactor ?? 0.0,
       ),
       resourceUsingFactorVN = ValueNotifier(
         divisionResourceModel.resourceUsingFactor ?? 0.0,
       ),
       workDaysVN = ValueNotifier(divisionResourceModel.workDays ?? 0),
       squareFactorVN = ValueNotifier(inputDataDesign.squareFactor),
       summaryResourceRowCostVN = ValueNotifier(
         divisionResourceModel.summaryResourceRowCost ?? 0.0,
       ) {
    initListeners();
  }

  void initListeners() {
    resourceUsingFactorVN.addListener(_listener);
    squareFactorVN.addListener(_listener);
    complexFactorVN.addListener(_listener);
    resourceQntVN.addListener(_listener);
    workDaysVN.addListener(_listener);
  }

  void _listener() {
    print("DivisionResourceRowViewModelWithValueNotifier::_listener");
    double summary = _calculator.calcDivisionSummary(this);
    print("summary::$summary");
    summaryResourceRowCostVN.value = summary;
    print("summaryResourceRowCostVN::$summary");
  }

  void clear() {
    resourceQntVN.dispose();
    workDaysVN.dispose();
    complexFactorVN.dispose();
    squareFactorVN.dispose();
    resourceUsingFactorVN.dispose();
    summaryResourceRowCostVN.dispose();
  }

  @override
  String toString() {
    return 'DivisionResourceRowVM_VN{id: $id, divisionName: $divisionName, divisionShortName: $divisionShortName, resourceName: $resourceName, resourceQntVN: $resourceQntVN, workDaysVN: $workDaysVN, complexFactorVN: $complexFactorVN, squareFactorVN: $squareFactorVN, resourceUsingFactorVN: $resourceUsingFactorVN, summaryResourceRowCostVN: $summaryResourceRowCostVN, resourceCostPerDay: $resourceCostPerDay}';
  }
}

class DivisionResourceRowVM {
  //Имя раздела
  final int id;
  final String divisionName;

  // Аббвеатура
  final String divisionShortName;

  // Должность
  final String resourceName;

  // Кол-во задействованных должностей
  final int resourceQnt;

  // Кол-во задействованных дней
  final int workDays;

  // Коэфициент сложности
  final double complexFactor;

  // Коэфициент по площади
  final double squareFactor;

  // Коэфициент участия
  final double resourceUsingFactor;

  // Стоимость задествия должности по конкретному разделу
  final double summaryResourceRowCost;

  // Ставка в день
  final double resourceCostPerDay;

  const DivisionResourceRowVM({
    required this.id,
    required this.divisionName,
    required this.divisionShortName,
    required this.resourceName,
    required this.resourceQnt,
    required this.workDays,
    required this.complexFactor,
    required this.squareFactor,
    required this.resourceUsingFactor,
    required this.summaryResourceRowCost,
    required this.resourceCostPerDay,
  });
}

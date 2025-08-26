import 'package:presale/src/domain/models/v3/design/custom_fuctors/custom_factors.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_resource_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/division_with_margin_row_viewmodel.dart';

class DesignOfferCalculator {
  /*

    Алгоритм расчета одного раздела

   Себестоимость =
     Ставка специалиста (за 1 день)
     * Срок выполнения (в днях)
     * Коэфициент сложности
     * Коэфициент по площади
     * Коэфициент использования специалиста

     Н =  (Себестоимость * Накладные расходы)
     П = (Себестоимость * Норма прибыли)
     Итого =  Себестоимость *  Накладные расходы *  Норма прибыли * 1.2
     */

  double calcDivisionTotalV4(DivisionResourceRowVM divisionResourceViewModel) {
    return divisionResourceViewModel.totalResourceRowCostVN.value *
        divisionResourceViewModel.resourceUsingFactor *
        divisionResourceViewModel.squareFactor *
        divisionResourceViewModel.complexFactor *
        divisionResourceViewModel.workDays *
        divisionResourceViewModel.resourceQnt;
  }

  double calcResourceCost(DivisionWithResourceRowVM divisionResourceViewModel) {
    return divisionResourceViewModel.resourceCostPerDayVN.value *
        divisionResourceViewModel.resourceUsingFactor *
        divisionResourceViewModel.squareFactor *
        divisionResourceViewModel.complexFactor *
        divisionResourceViewModel.workDays *
        divisionResourceViewModel.resourceQnt;
  }

  void calcDivisionCost(DivisionsWithMarginRowVM model) {
    double withOverPrice = model.overPriceFactor * model.divisionSummaryCost;
    double withMargins = withOverPrice * model.marginFactor;

    model.overPriceValue = withOverPrice;
    model.marginValue = withMargins;

    double summaryCost = withMargins * model.clientValue;
    model.summaryCostWithMarginVN.value = summaryCost;
    double withTax = summaryCost * RussianTax;
    model.summaryCostWithTaxVN.value = withTax;
    model.taxValue = withTax * 20 / 120;
  }
}

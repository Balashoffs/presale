import 'package:presale/src/domain/models/v3/design/calc_division_row/calc_division_row.dart';
import 'package:presale/src/domain/models/v3/design/commercial%20offer/commercial%20offer.dart';
import 'package:presale/src/domain/models/v3/design/custom_fuctors/custom_factors.dart';
import 'package:presale/src/domain/models/v3/design/division_result/division_result.dart';
import 'package:presale/src/presentation/modules/v3/design/input/calculate/model/division_row_data.dart';

class Calculator {
  /*

    Алгоритм расчета одного раздела

    Чистая стоимость =
     Ставка специалиста (за 1 день)
     * Срок выполнения (в днях)
     * Коэфициент сложности
     * Коэфициент по площади
     * Коэфициент использования специалиста


    Итого =
      (Чистая стоимость * Накладные расходы)
      + (Чистая стоимость * Маржа)
      + (Чистая стоимость * НДС)


     */

  DivisionResult clearCostPerDivision(CalcDivisionRow row) {
    double clearRate =
        row.division.employee.getRate() *
        row.duration *
        row.complexityFactor *
        row.bySquareFactor *
        row.byEmployeeUsedFactor;
    double fullRate =
        clearRate * row.overheadsValue + clearRate * row.marginValue;
    double fullRateWithTax = fullRate + clearRate * RussianTax;

    return DivisionResult(
      division: row.division,
      clearDivisionRate: clearRate,
      fullDivisionRate: fullRate,
      fullDivisionRateWithTax: fullRateWithTax,
    );
  }

  double calcClearCost(DivisionRowDataValueChangeNotifier row) {
    return (row.data.employee.workingRatePerDay *
        row.deadline.value*
        row.hardFactor.value *
        row.squareFactor.value *
        row.userUsingFactor.value).roundToDouble();
  }

  double calcWithMargin(DivisionRowDataValueChangeNotifier row) {
    double clearRate = row.costPrice.value;
    double fullRate =
        clearRate * row.overPriceFactor.value +
        clearRate * row.marginFactor.value;
    return (fullRate + clearRate).roundToDouble();
  }

  CommercialOfferResult calculateRate(CommercialOfferResult result) {
    double totalWithMargin = result.divisionResults
        .map((e) => e.fullDivisionRate)
        .reduce((value, element) => value + element);
    double totalWithTax = result.divisionResults
        .map((e) => e.fullDivisionRateWithTax)
        .reduce((value, element) => value + element);
    return result.copyWith(
      fullRateOfCO: totalWithMargin,
      fullRateOfCOWithTax: totalWithTax,
    );
  }
}

import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_row_pojo.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/division_with_margin_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/divisions_margin_row_pojo.dart';

extension DivisionResourceRowPojoExt on DivisionResourceRowPojo {
  DivisionsWithMarginRowVM toRowVM(int index, double divisionSummaryCost) {
    return DivisionsWithMarginRowVM(
      id: index,
      divisionName: divisionName,
      divisionShortName: divisionShortName,
      divisionSummaryCost: divisionSummaryCost,
    );
  }
}

extension DivisionWithMarginRowVMExt on DivisionsWithMarginRowVM {
  DivisionsMarginRowPojo toRowPojo() {
    return DivisionsMarginRowPojo(
      id: id,
      divisionName: divisionName,
      divisionShortName: divisionShortName,
      divisionSummaryCost: divisionSummaryCost,
      overPriceFactor: overPriceFactor,
      marginFactor: marginFactor,
      summaryCostWithMargin: summaryCostWithTaxVN.value,
      summaryCostWithTax: summaryCostWithTaxVN.value,
    );
  }
}

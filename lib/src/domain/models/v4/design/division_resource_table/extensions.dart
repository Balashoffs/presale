import 'package:presale/src/data/v3/design_calculator.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_dto.dart';

import 'division_resource_dropdown_viewmodel.dart';
import 'division_resource_row_pojo.dart';
import 'division_resource_row_viewmodel.dart';
import 'division_resource_summary_viewmodel.dart';
import 'division_resource_table_pojo.dart';

extension DivisionResourceTableCreater on DivisionResourceSummaryViewModel {
  DivisionResourceTableWithTypePojo toPojo(String divisionType) {
    return DivisionResourceTableWithTypePojo(
      divisionType: divisionType,
      rows: divisionResourceRowViewModel.map((e) => e.toPojo()).toList(),
    );
  }
}

extension DivisionResourceRowViewModelExt on DivisionResourceRowVM_VN {
  DivisionResourceRowVM toRowViewModel() {
    return DivisionResourceRowVM(
      divisionName: divisionName,
      divisionShortName: divisionShortName,
      resourceName: resourceName,
      resourceQnt: resourceQntVN.value,
      workDays: workDaysVN.value,
      complexFactor: complexFactorVN.value,
      squareFactor: squareFactorVN.value,
      resourceUsingFactor: resourceUsingFactorVN.value,
      summaryResourceRowCost: summaryResourceRowCostVN.value,
      resourceCostPerDay: resourceCostPerDay,
      id: id,
    );
  }
}

extension DivisionResourceRowCreater on DivisionResourceRowVM {
  DivisionResourceRowPojo toPojo() {
    return DivisionResourceRowPojo(
      divisionName: divisionName,
      divisionShortName: divisionShortName,
      resourceName: resourceName,
      resourceQnt: resourceQnt,
      workDays: workDays,
      complexFactor: complexFactor,
      squareFactor: squareFactor,
      resourceUsingFactor: resourceUsingFactor,
      divisionPerResourceRowCost: summaryResourceRowCost,
      resourceCostPerDay: resourceCostPerDay,
    );
  }

  DivisionResourceRowVM_VN toDivisionResourceViewModel(
    InputDataDesign inputDataDesign,
    DesignOfferCalculator calculator,
  ) {
    return DivisionResourceRowVM_VN.fromModel(
      divisionResourceModel: this,
      inputDataDesign: inputDataDesign,
      calculator: calculator,
    );
  }
}

extension DivisionResourceDtoExt on DivisionResourceDTO {
  DivisionResourceRowVM_VN toRowViewModel(
    InputDataDesign inputDataDesign,
    DesignOfferCalculator calculator,
  ) {
    return DivisionResourceRowVM_VN.fromDto(
      divisionResourceDTO: this,
      inputDataDesign: inputDataDesign,
      calculator: calculator,
    );
  }

  toDropdownViewModel toDropDownViewModel() {
    return toDropdownViewModel(
      id: id,
      divisionName: divisionName,
      divisionShortName: divisionShortName,
    );
  }
}

import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_dto.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_row_viewmodel.dart';

import 'division_resource_dropdown_viewmodel.dart';
import 'division_resource_row_pojo.dart';



extension ExtDivisionResourceRow on DivisionResourceRowVM {
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
      resourceRowCost: totalResourceRowCostVN.value,
      resourceCostPerDay: resourceCostPerDay, resourceSummaryCost: totalResourceRowCostVN.value,
    );
  }
}

extension DivisionResourceDtoExt on DivisionResourceDTO {

  DivisionResourceRowVM toDivisionResourceRowVM(InputDataDesign inputDataDesign,){
    return DivisionResourceRowVM(
      resourceQnt: 0,
      resourceUsingFactor: 1.0,
      workDays: 0,
      divisionShortName: divisionShortName,
      divisionName: divisionName,
      id: id,
      squareFactor: inputDataDesign.squareFactor,
      complexFactor: inputDataDesign.complexityFactor,
      resourceCostPerDay: resourceCostPerDay,
      resourceName: resourceName
    );

  }

  DropdownViewModel toDropDownViewModel() {
    return DropdownViewModel(
      id: id,
      divisionName: divisionName,
      divisionShortName: divisionShortName,
    );
  }
}

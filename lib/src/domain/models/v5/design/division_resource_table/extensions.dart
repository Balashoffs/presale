import 'package:presale/src/domain/models/v3/design/division_type/division_type.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_row_pojo.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/resource_csv.dart';

import 'division_csv.dart';
import 'division_resource_row_viewmodel.dart';
import 'division_with_resources_dto.dart';

extension DivisionCsvExt on DivisionCSV {
  DivisionDTO from() {
    return DivisionDTO(
      id: int.tryParse(id) ?? -1,
      divisionName: divisionName,
      divisionShortName: divisionShortName,
      divisionType: DivisionType.fromShortText(divisionType),
    );
  }
}

extension ResourceCsvExt on ResourceCSV {
  ResourceDTO from() {
    return ResourceDTO(
      id: int.tryParse(id) ?? -1,
      divisionShortName: divisionShortName,
      resourceName: resourceName,
      resourceCostPerDay: double.tryParse(resourceCostPerDay) ?? -1.0,
    );
  }
}

extension DivisionDtoExt on DivisionDTO {
  DivisionWithResourceRowVM toDivisionResourceRowVM(
    InputDataDesign inputDataDesign, {
    String resourceName = '',
    double resourceCostPerDay = 0.0,
  }) {
    return DivisionWithResourceRowVM(
      resourceQnt: 0,
      resourceUsingFactor: 1.0,
      workDays: 0,
      divisionShortName: divisionShortName,
      divisionName: divisionName,
      id: id,
      squareFactor: inputDataDesign.squareFactor,
      complexFactor: inputDataDesign.complexityFactor,
      resourceName: resourceName,
      resourceCostPerDay: resourceCostPerDay,
    );
  }
}

extension DivisionWithResourceRowExt on DivisionWithResourceRowVM {
  DivisionResourceRowPojo toPojo() {
    return DivisionResourceRowPojo(
      divisionName: divisionName,
      divisionShortName: divisionShortName,
      resourceName: resourceNameVN.value,
      resourceQnt: resourceQnt,
      workDays: workDays,
      complexFactor: complexFactor,
      squareFactor: squareFactor,
      resourceUsingFactor: resourceUsingFactor,
      resourceRowCost: totalResourceRowCostVN.value,
      resourceCostPerDay: resourceCostPerDayVN.value,
    );
  }
}

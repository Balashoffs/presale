import 'division_resource_row_pojo.dart';
import 'division_resource_row_viewmodel.dart';
import 'division_resource_summary_viewmodel.dart';
import 'division_resource_table_pojo.dart';

extension DivisionResourceTableCreater on  DivisionResourceSummaryViewModel{
  DivisionResourceTableWithTypePojo from(){
    return DivisionResourceTableWithTypePojo(divisionType: divisionType, rows: rows.map((e) => e.from(),).toList());
  }
}

extension DivisionResourceRowCreater on  DivisionResourceRowViewModel{
  DivisionResourceRowPojo from(){
    return DivisionResourceRowPojo(
        divisionName: divisionName,
        divisionShortName: divisionShortName,
        resourceName: resourceName,
        resourceQnt: resourceQntVN.value,
        workDays: workDaysVN.value,
        complexFactor: complexFactorVN.value,
        squareFactor: squareFactorVN.value,
        resourceUsingFactor: resourceUsingFactorVN.value,
        divisionPerResourceRowCost: summaryResourceRowCostVN.value,
        resourceCostPerDay: resourceCostPerDay,
    );
  }
}
import 'package:presale/src/domain/models/v2/constructing/model/input/construction_state/section_data.dart';
import 'package:uuid/v4.dart';

import 'cost_dtruct_builder.dart';
import 'cost_struct.dart';

class SectionDataBuilder {
  SectionData _buildSectionFromRow(List<dynamic> row, String parentId) {
    String id = UuidV4().generate();
    String className = row[0];
    String typeName = row[1];
    String subtypeName = row[2];
    String um = row[3];
    String costRange = row[4];
    double cost = _buildCost(costRange);
    List<CostStruct> jobCosts = buildCostStructsFromRows(row[5]);
    return SectionData(
      id: id,
      parentId: parentId,
      className: className,
      typeName: typeName,
      subtypeName: subtypeName,
      costRange: costRange,
      cost: cost,
      um: um,
      jobCosts: jobCosts,
    );
  }

  double _buildCost(String rangeCost) {
    List<String> chunks = rangeCost.split(' ');
    double factor = chunks[1] == 'тыс.' ? 1000.0 : 1000000.0;
    chunks = chunks[0]
        .split('-')
        .map(
          (e) => e.trim(),
    )
        .toList();
    double cost =double.tryParse(chunks[0]) ?? 0.0;
    double res = cost  * factor;
    return res;
  }

  List<SectionData> buildSectionsFromRows(
      List<List<dynamic>> rows, String parentId) {
    return rows.map((row) => _buildSectionFromRow(row, parentId)).toList();
  }
}
import 'package:presale/src/domain/models/v3/design/division_type/division_type.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_csv.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/extensions.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/resource_csv.dart';
import 'package:presale/src/utils/dart_define/model/design_class/design_class.dart';

class ResourceDTO {
  final int id;
  final String resourceCode;
  final String resourceName;
  final double resourceCostPerDay;
  final double resourceCostPerHour;
  final double resourceFactor;

  const ResourceDTO({
    required this.id,
    required this.resourceCode,
    required this.resourceName,
    required this.resourceCostPerDay,
    required this.resourceCostPerHour,
    this.resourceFactor = 1.0,
  });
}

class DivisionDTO {
  final int id;
  final String divisionName;
  final String divisionShortName;
  final String divisionDescription;
  final List<ResourceDTO> resources;

  const DivisionDTO({
    required this.id,
    required this.divisionName,
    required this.divisionShortName,
    required this.divisionDescription,
    required this.resources,
  });
}



class ResourcesDTO {
  final List<DivisionDTO> divisions;
  final Map<String, List<ResourceDTO>> resources;

  const ResourcesDTO({
    required this.divisions,
    required this.resources,
  });

  static Future<ResourcesDTO> build(DivisionType type, DesignClass dc) async {
    List<ResourceCSV> resourcesFromCsv = await ResourceCostDtoBuilder(dc.resources).build();
    String divisionPath = type == DivisionType.working ? dc.workDivisions : dc.projectDivisions;
    List<DivisionCSV> divisionsFromCsv = await DivisionCostDtoBuilder(divisionPath).build();
    Map<String, List<ResourceDTO>> allResources = {};
    Map<String,DivisionDTO> divisions = {};

    for (var value in divisionsFromCsv) {
      List<ResourceDTO> resources = resourcesFromCsv
          .where(
            (element) => element.resourceCode == value.resourceCode,
          )
          .map((e) => e.from())
          .toList();
      allResources.putIfAbsent(value.divisionShortName, () => [],);
      allResources[value.divisionShortName]?.addAll(resources);
    }

    for (var value in divisionsFromCsv) {
      if(divisions.containsKey(value.divisionShortName)) continue;
      List<ResourceDTO> resources = allResources[value.divisionShortName] ?? [];
      if(resources.isNotEmpty){
        DivisionDTO newDivision = value.from(resources);
        divisions.putIfAbsent(newDivision.divisionShortName,() => newDivision,);
      }
    }

    return ResourcesDTO(
      divisions: divisions.values.toList(),
      resources: allResources,
    );
  }
}

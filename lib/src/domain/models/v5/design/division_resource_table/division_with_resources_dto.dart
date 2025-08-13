import 'package:presale/src/domain/models/v3/design/division_type/division_type.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_csv.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/extensions.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/resource_csv.dart';

class DivisionDTO {
  final int id;
  final String divisionName;
  final String divisionShortName;
  final DivisionType divisionType;

  const DivisionDTO({
    required this.id,
    required this.divisionName,
    required this.divisionShortName,
    required this.divisionType,
  });
}

class ResourceDTO {
  final int id;
  final String divisionShortName;
  final String resourceName;
  final double resourceCostPerDay;
  final double resourceFactor;

  const ResourceDTO({
    required this.id,
    required this.divisionShortName,
    required this.resourceName,
    required this.resourceCostPerDay,
    this.resourceFactor = 1.0,
  });
}

class DivisionWithResourceDTO {
  final List<DivisionDTO> divisions;
  final Map<String, List<ResourceDTO>> resources;

  const DivisionWithResourceDTO({
    required this.divisions,
    required this.resources,
  });

  static Future<DivisionWithResourceDTO> build(DivisionType type) async {
    List<ResourceCSV> resourcesFromCsv = await ResourceCostDtoBuilder().build();
    List<DivisionCSV> divisionsFromCsv = await buildOnType(type);
    Map<String, List<ResourceDTO>> allResources = {};
    for (var value in divisionsFromCsv) {
      List<ResourceDTO> resources = resourcesFromCsv
          .where(
            (element) => element.divisionShortName == value.divisionShortName,
          )
          .map((e) => e.from())
          .toList();
      allResources[value.divisionShortName] = resources;
    }

    List<DivisionDTO> divisionsDTO = divisionsFromCsv
        .map((e) => e.from())
        .toList();
    return DivisionWithResourceDTO(
      divisions: divisionsDTO,
      resources: allResources,
    );
  }
}

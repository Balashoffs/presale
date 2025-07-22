/*
  1. Аббвеатура, например ВК
  2. Наименование стадии, например "Сети водоснабжения"
  3. Ресурс, например Ведущий инженер ВК
  4. Ставка в день
  5. Ставка в месяц
 */

import 'package:presale/src/data/core/csv_parser.dart';

class DivisionResourceDTO {
  final String divisionName;
  final String divisionShortName;
  final String resourceName;
  final double resourceCostPerDay;
  final double resourceCostPerMonth;

  const DivisionResourceDTO({
    required this.divisionName,
    required this.divisionShortName,
    required this.resourceName,
    required this.resourceCostPerDay,
    required this.resourceCostPerMonth,
  });

  @override
  String toString() {
    return 'DivisionResourceDTO{divisionName: $divisionName, divisionShortName: $divisionShortName, resourceName: $resourceName, resourceCostPerDay: $resourceCostPerDay, resourceCostPerMonth: $resourceCostPerMonth}';
  }

  factory DivisionResourceDTO.fromCsvRow(List<dynamic> row) {
    return DivisionResourceDTO(
      divisionShortName: row[0],
      divisionName: row[1],
      resourceName: row[2],
      resourceCostPerDay: double.tryParse(row[3]) ?? 0.0,
      resourceCostPerMonth: double.tryParse(row[4]) ?? 0.0
    );
  }
}

typedef DivisionWithResourceDtoParser =
    List<DivisionResourceDTO> Function(List<List<dynamic>> rows);

class JobCostDtoBuilder extends CsvParser<DivisionResourceDTO> {
  JobCostDtoBuilder(super.file);

  DivisionWithResourceDtoParser get _parser =>
      (rows) => rows
          .skip(1)
          .map((row) => DivisionResourceDTO.fromCsvRow(row))
          .toList();

  @override
  Future<List<DivisionResourceDTO>> build() async {
    return await parse(_parser);
  }
}

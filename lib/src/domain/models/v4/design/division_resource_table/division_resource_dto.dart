/*
  1. Аббвеатура, например ВК
  2. Наименование стадии, например "Сети водоснабжения"
  3. Ресурс, например Ведущий инженер ВК
  4. Ставка в день
  5. Ставка в месяц
 */

import 'package:presale/src/data/core/csv_parser.dart';

class DivisionResourceDTO {
  final int id;
  final String divisionName;
  final String divisionShortName;
  final String resourceName;
  final double resourceCostPerDay;

  const DivisionResourceDTO({
    required this.id,
    required this.divisionName,
    required this.divisionShortName,
    required this.resourceName,
    required this.resourceCostPerDay,
  });

  @override
  String toString() {
    return 'DivisionResourceDTO{divisionName: $divisionName, divisionShortName: $divisionShortName, resourceName: $resourceName, resourceCostPerDay: $resourceCostPerDay,}';
  }

  factory DivisionResourceDTO.fromCsvRow(List<dynamic> row) {
    return DivisionResourceDTO(
      id: int.parse(row[0]),
      divisionShortName: row[1],
      divisionName: row[2],
      resourceName: row[3],
      resourceCostPerDay: double.tryParse(row[4]) ?? 0.0,
    );
  }
}

typedef DivisionWithResourceDtoParser =
    List<DivisionResourceDTO> Function(List<List<dynamic>> rows);

class JobCostDtoBuilder extends CsvParser<DivisionResourceDTO> {
  JobCostDtoBuilder() : super('assets/calculator_data/razdely_resursy.csv');

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

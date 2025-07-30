/*
  1. Аббвеатура, например ВК
  2. Наименование стадии, например "Сети водоснабжения"
  3. Ресурс, например Ведущий инженер ВК
  4. Ставка в день
  5. Ставка в месяц
 */

import 'package:presale/src/data/core/csv_parser.dart';

const String pathToSrc = 'assets/calculator_data/stavki.csv';

class ResourceCSV {
  final String id;
  final String divisionShortName;
  final String resourceName;
  final String resourceCostPerDay;

  factory ResourceCSV.fromCsvRow(List<dynamic> row) {
    return ResourceCSV(
      id: row[0],
      divisionShortName: row[1],
      resourceName: row[2],
      resourceCostPerDay: row[3],
    );
  }

  const ResourceCSV({
    required this.id,
    required this.divisionShortName,
    required this.resourceName,
    required this.resourceCostPerDay,
  });
}

typedef ResourceCSVParser =
    List<ResourceCSV> Function(List<List<dynamic>> rows);

class ResourceCostDtoBuilder extends CsvParser<ResourceCSV> {
  ResourceCostDtoBuilder() : super(pathToSrc);

  ResourceCSVParser get _parser =>
      (rows) => rows.skip(1).map((row) => ResourceCSV.fromCsvRow(row)).toList();

  @override
  Future<List<ResourceCSV>> build() async {
    return await parse(_parser);
  }
}

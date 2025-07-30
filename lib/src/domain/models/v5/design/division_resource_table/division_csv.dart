/*
  1. Аббвеатура, например ВК
  2. Наименование стадии, например "Сети водоснабжения"
  3. Ресурс, например Ведущий инженер ВК
  4. Ставка в день
  5. Ставка в месяц
 */

import 'package:presale/src/data/core/csv_parser.dart';
final String pathToSrc = 'assets/calculator_data/razdely_resursy.csv';

class DivisionCSV {
  final String id;
  final String divisionName;
  final String divisionShortName;
  final String divisionType;

  const DivisionCSV({
    required this.id,
    required this.divisionName,
    required this.divisionShortName,
    required this.divisionType,
  });


  factory DivisionCSV.fromCsvRow(List<dynamic> row) {
    return DivisionCSV(
      id: row[0],
      divisionShortName: row[1],
      divisionName: row[2],
      divisionType: row[3],
    );
  }
}

typedef DivisionCSVParser =
    List<DivisionCSV> Function(List<List<dynamic>> rows);

class DivisionCostDtoBuilder extends CsvParser<DivisionCSV> {
  DivisionCostDtoBuilder() : super(pathToSrc);

  DivisionCSVParser get _parser =>
      (rows) => rows
          .skip(1)
          .map((row) => DivisionCSV.fromCsvRow(row))
          .toList();

  @override
  Future<List<DivisionCSV>> build() async {
    return await parse(_parser);
  }
}

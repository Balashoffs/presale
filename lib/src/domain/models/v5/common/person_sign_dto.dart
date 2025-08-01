import 'package:presale/src/data/core/csv_parser.dart';

class PersonSignDTO {
  final int id;
  final String fistName;
  final String secondName;
  final String lastName;
  final String jobTitle;
  final String companyTitle;
  final String phoneNumber;
  final String jobEmail;

  String get fullName => '$lastName ${fistName[0]}. ${secondName[0]}.';

  PersonSignDTO({
    required this.id,
    required this.fistName,
    required this.secondName,
    required this.lastName,
    required this.jobTitle,
    required this.companyTitle,
    required this.phoneNumber,
    required this.jobEmail,
  });

  factory PersonSignDTO.fromCsvRow(List<dynamic> row) {
    return PersonSignDTO(
      id: int.tryParse(row[0]) ?? 0,
      fistName: row[1],
      secondName: row[2],
      lastName: row[3],
      jobTitle: row[4],
      companyTitle: row[5],
      phoneNumber: row[6],
      jobEmail: row[7],
    );
  }
}

typedef DivisionCSVParser =
    List<PersonSignDTO> Function(List<List<dynamic>> rows);

const path = 'assets/calculator_data/v5/sign_person.csv';

class DivisionCostDtoBuilder extends CsvParser<PersonSignDTO> {
  DivisionCostDtoBuilder() : super(path);

  DivisionCSVParser get _parser =>
      (rows) => rows.skip(1).map((row) => PersonSignDTO.fromCsvRow(row)).toList();

  @override
  Future<List<PersonSignDTO>> build() async {
    return await parse(_parser);
  }
}

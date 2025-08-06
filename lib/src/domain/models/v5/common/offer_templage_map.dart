//pos,type,src,char,pos,comment
import 'package:presale/src/data/core/csv_parser.dart';

class OfferTemplateCellConfig {
  final int pos;
  final TemplateCellType type;
  final String src;
  final String chars;
  final String numbers;
  final int comment;

  factory OfferTemplateCellConfig.fromCsvRow(List<dynamic> row) {
    return OfferTemplateCellConfig(
      pos: int.tryParse(row[0]) ?? 0,
      typeS: row[1],
      src: row[2],
      chars: row[3],
      numbers: row[4],
      comment: int.tryParse(row[5]) ?? 0
    );
  }

  OfferTemplateCellConfig({
    required this.pos,
    required String typeS,
    required this.src,
    required this.chars,
    required this.numbers,
    required this.comment,
  }) : type = TemplateCellType.findByName(typeS);
}

typedef DivisionCSVParser =
List<OfferTemplateCellConfig> Function(List<List<dynamic>> rows);

const path = 'assets/calculator_data/template/template.csv';

class DivisionCostDtoBuilder extends CsvParser<OfferTemplateCellConfig> {
  DivisionCostDtoBuilder() : super(path);

  DivisionCSVParser get _parser =>
          (rows) => rows.skip(1).map((row) => OfferTemplateCellConfig.fromCsvRow(row)).toList();

  @override
  Future<List<OfferTemplateCellConfig>> build() async {
    return await parse(_parser);
  }
}


enum TemplateCellType {
  txt,
  img,
  table,
  header,
  footer,
  undef;

  static TemplateCellType findByName(String value) {
    return TemplateCellType.values
            .where((element) => element.name == value)
            .firstOrNull ??
        TemplateCellType.undef;
  }
}

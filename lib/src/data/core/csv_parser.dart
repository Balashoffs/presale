import 'package:csv/csv.dart';
import 'package:flutter/services.dart';

abstract class CsvParser<T> {
  final String _pathToFile;

  CsvParser(String file) : _pathToFile = file;

  Future<String> _readFromAssets() async {
    ;
    return rootBundle.loadString(_pathToFile);
  }

  Future<List<T>> parse(List<T> Function(List<List<dynamic>>) rowParse) async {
    String csv = await _readFromAssets();
    List<List<dynamic>> csvData = const CsvToListConverter(
      eol: '\r',
      fieldDelimiter: ';',
      shouldParseNumbers: false,
    ).convert(csv);
    return rowParse(csvData);
  }

  Future<List<T>> build();
}

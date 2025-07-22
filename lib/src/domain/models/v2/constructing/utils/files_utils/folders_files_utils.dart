// TODO: Put public facing types in this file.

import 'dart:io';

import 'package:csv/csv.dart';

List<List<dynamic>> readCSVFromString(String fileAsString){
  return const CsvToListConverter().convert(fileAsString, eol: '\n');
}

Future<String> readCsv(String path) async{
  File file = File(path);
  return await file.readAsString();
}

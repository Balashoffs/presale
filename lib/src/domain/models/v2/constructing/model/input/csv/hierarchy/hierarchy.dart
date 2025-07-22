//assets/input/0.csv



import 'package:presale/src/domain/models/v2/constructing/utils/files_utils/assets_files_utils.dart';

Future<Map<String, List<String>>> buildHierarchyFrom(String file) async {
  Map<String, List<String>> stagesWithSections = {};
  List<List<dynamic>> cells =  readCSVFromString(file);
  for (int i = 1; i < cells.length; i++) {
    String key = cells[i][0];
    String value = cells[i][1];
    if (!stagesWithSections.containsKey(key)) {
      stagesWithSections.putIfAbsent(
        key,
        () => [value],
      );
    } else {
      stagesWithSections[key]?.add(value);
    }
  }

  return stagesWithSections;
}

import 'package:presale/src/domain/models/v2/constructing/utils/files_utils/assets_files_utils.dart';


abstract class FactorProducer {
  late final List<List<dynamic>> _cells;
  final Map<String, int> _selected = {};
  final String name;

  FactorProducer({required this.name, required String file}) {
    _cells = _parseCSV(file);
  }

  void setSelectedType(String pos, int value) {
    _selected[pos] = value;
  }

  double getFactor() {
    if (_selected.length == 2) {
      int x = _selected['x'] ?? 0;
      int y = _selected['y'] ?? 0;
      if (x == 0 || y == 0) {
        return 1.0;
      }
      return _cells[x][y];
    }
    return 1.0;
  }

  List<List<dynamic>> _parseCSV(String inputCSV) {
    return readCSVFromString(inputCSV);
  }
}

class CostFactorProducer extends FactorProducer {
  CostFactorProducer(String inputCSV)
      : super(name: 'Тип объекта по назначению', file: inputCSV);

  List<String> buildingTypesByCost() {
    List<String> types = [];
    for (int i = 1; i < _cells.length; i++) {
      var type = _cells[i].first as String;
      types.add(type);
    }
    return types;
  }
}

class UsingFactorProducer extends FactorProducer {
  UsingFactorProducer(String inputCSV)
      : super(name: 'Тип объекта по стоимости', file: inputCSV);

  List<String> buildingTypesByUsing() {
    return _cells.first
        .skip(1)
        .map(
          (e) => e as String,
        )
        .toList();
  }
}

class OneRowFactorProducer extends FactorProducer {
  OneRowFactorProducer(String name, {required String inputCSV})
      : super(name: name, file: inputCSV) {
    _selected["y"] = _cells.first.length - 1;
  }

  Map<String, List<String>> getTypes() {
    String key = _cells.first[0] as String;
    List<String> values = _cells[1].map((e) => e as String).toList();
    return Map.fromIterables([key], [values]);
  }
}

class RegionFactorProducer extends OneRowFactorProducer {
  RegionFactorProducer({required inputCsv}) : super('Регион', inputCSV: inputCsv);
}

class BuildingHeightFactorProducer extends OneRowFactorProducer {
  BuildingHeightFactorProducer({required inputCsv}) : super('Высотность', inputCSV: inputCsv);
}

class BuildingSquareFactorProducer extends OneRowFactorProducer {
  BuildingSquareFactorProducer({required inputCsv}) : super('Площадь', inputCSV: inputCsv);
}

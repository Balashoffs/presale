
//assets/input/стадии/строительство/0.csv


import 'package:presale/src/domain/models/v2/constructing/model/input/construction_state/section_data.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/construction_state/section_data_builder.dart';
import 'package:presale/src/domain/models/v2/constructing/utils/files_utils/assets_files_utils.dart';

abstract class BaseFactor {
  final String parentId;
  final String id;
  final String chapterName;
  final double proportion;
  final String proportionRange;

  const BaseFactor({
    required this.parentId,
    required this.id,
    required this.chapterName,
    required this.proportion,
    required this.proportionRange,
  });
}

class FactorBuilder {
  FactorBuilder();

  Future<List<BaseFactor>> findFactor(String path, String parentPath) async {
    List<List<dynamic>> rawRows = await _fromPath(path);
    return _createFactor(rawRows, parentPath);
  }

  Future<List<SectionData>> findSectionFactor(String path, String parentPath) async {
    List<List<dynamic>> rawRows = await _fromPath(path);
    return _createSectionFactor(rawRows, parentPath);
  }

  Future<List<List<dynamic>>> _fromPath(String path) async {
    String csv = await readCsv(path);
    return readCSVFromString(csv);
  }

  List<BaseFactor> _createFactor(List<List<dynamic>> rawRows, String parentId) {
    String type = rawRows[0][0];
    List<List<dynamic>> subRows = rawRows.sublist(1);
    switch (type) {
      case 'Стадия':
        return subRows.map((e) => _buildStageFrom(e, parentId)).toList();
      case 'Секция':
        return subRows.map((e) => _buildSectionFrom(e, parentId)).toList();
      default:
        return [];
    }
  }

  List<SectionData> _createSectionFactor(List<List<dynamic>> rawRows, String parentId) {
    List<List<dynamic>> subRows = rawRows.sublist(1);
    return SectionDataBuilder().buildSectionsFromRows(subRows, parentId);

  }

  BaseFactor _buildStageFrom(List<dynamic> row, String parentId) {
    String chapterName = (row[0] as String);
    String proportionRange = row[1] as String;
    double proportion = _getProportion(proportionRange);
    String id = '$parentId/$chapterName';
    return StageFactor(
      id: id,
      parentId: parentId,
      chapterName: chapterName,
      proportion: proportion,
      proportionRange: proportionRange,
    );
  }

  double _getProportion(String input) {
    String proportionStr;
    if (input.contains('-')) {
      proportionStr = input.replaceFirst('%', '').split('-')[0];
    } else {
      proportionStr = input.replaceFirst('%', '');
    }

    return (double.parse(proportionStr) / 100);
  }

  BaseFactor _buildSectionFrom(List<dynamic> row, String parentId) {
    String chapterName = (row[0] as String);
    String proportionRange = row[1] as String;
    double proportion = _getProportion(proportionRange);
    String id = '$parentId/$chapterName';
    return SectionFactor(
      id: id,
      parentId: parentId,
      chapterName: chapterName,
      proportion: proportion,
      proportionRange: proportionRange,

    );
  }

}

class SectionFactor extends BaseFactor {
  SectionFactor({
    required super.parentId,
    required super.id,
    required super.chapterName,
    required super.proportion,
    required super.proportionRange,
  });
}

class StageFactor extends BaseFactor {
  StageFactor({
    required super.parentId,
    required super.id,
    required super.chapterName,
    required super.proportion,
    required super.proportionRange,
  });
}


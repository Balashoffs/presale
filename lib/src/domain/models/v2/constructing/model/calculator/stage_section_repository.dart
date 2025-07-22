

import 'package:presale/src/domain/models/v2/constructing/model/input/construction_state/factors.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/construction_state/section_data.dart';

class StageSectionRepository {
  final FactorBuilder _factorBuilder = FactorBuilder();
  final Map<String, List<BaseFactor>> founded = {};


  Future<List<BaseFactor>> loadStage(String pathToZeroFile) async {
    String metaDataPath = '$pathToZeroFile/0.csv';
    return await _factorBuilder.findFactor(metaDataPath, pathToZeroFile);
  }

  Future<List<SectionData>> loadSection(String pathToZeroFile) async {
    String metaDataPath = '$pathToZeroFile.csv';
    return await _factorBuilder.findSectionFactor(metaDataPath, pathToZeroFile);
  }

  Future<void> addFactor(BaseFactor baseFactor) async{
    founded.putIfAbsent(baseFactor.parentId, () => [baseFactor],);
  }

  Future<void> addFactors(String key, List<BaseFactor> baseFactors) async{
    founded.putIfAbsent(key, () => baseFactors,);
  }

  List<BaseFactor> getFactors(String key) {
    return founded[key] ?? [];
  }

  bool check(String key){
    return founded.containsKey(key);
  }


}

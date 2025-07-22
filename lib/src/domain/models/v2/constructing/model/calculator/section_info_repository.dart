import 'package:flutter/cupertino.dart';
import 'package:presale/src/data/clients/v1/input_result_client.dart';
import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/data/data_sources/v1/input_result_data_source.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/construction_state/section_data.dart';

class SectionInfoRepository {
  final Map<String, SectionData> _sectionDataMap = {};
  final ValueNotifier<int> totalSelected = ValueNotifier(0);
  final Map<String, List<SectionData>> _selectedData = {};

  final SelectStageClient _inputResultClient;

  SectionInfoRepository({required DBClient dbClient})
      : _inputResultClient =
  SelectStageClientImpl(SelectStageDataSourceLocal(dbClient));

  void addData(List<SectionData> data) {
    for (var element in data) {
      _sectionDataMap.putIfAbsent(
        element.id,
        () => element,
      );
    }
  }

  List<SectionData> _getData(Set<String> itemIds) {
    return _sectionDataMap.values
        .where(
          (element) => itemIds.contains(element.id),
        )
        .toList();
  }

  List<SectionData> selectOn(String id, Set<String> forAdding) {
    List<SectionData> selected = _getData(forAdding);
    _selectedData.containsKey(id)
        ? _selectedData[id] = selected
        : _selectedData.putIfAbsent(
            id,
            () => selected,
          );
    totalSelected.value = _selectedData.values
        .map(
          (e) => e.length,
        )
        .reduce(
          (value, element) => value + element,
        );

    return selected;
  }

  void disSelect(Set<String> forDisable) {
    List<String> forDisabling = _selectedData.keys
        .where(
          (element) => _find(forDisable, element),
        )
        .toList();

    for (var value in forDisabling) {
      if (_selectedData.containsKey(value)) {
        _selectedData.remove(value);
      }
    }

    if (_selectedData.isNotEmpty) {
      totalSelected.value = _selectedData.values
          .map(
            (e) => e.length,
          )
          .reduce(
            (value, element) => value + element,
          );
    } else {
      totalSelected.value = 0;
    }
  }

  bool _find(Set<String> forDisable, String id) {
    return forDisable
        .firstWhere(
          (element) => id.contains(element),
          orElse: () => '',
        )
        .isNotEmpty;
  }

  Future<bool> saveSectionData(String id) async {
    return await _inputResultClient.create(id, _selectedData).then((value) {
     return value.fold((l) => false, (r) => r,);
    },);
  }
}

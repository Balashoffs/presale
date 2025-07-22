import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presale/src/domain/models/v2/constructing/model/calculator/section_info_repository.dart';
import 'package:presale/src/domain/models/v2/constructing/model/calculator/stage_info_repository.dart';
import 'package:presale/src/domain/models/v2/constructing/model/calculator/stage_section_repository.dart';
import 'package:presale/src/presentation/bloc/construction/stages_selector/stages_selector_cubit.dart';
import 'package:presale/src/presentation/modules/construction/stages_selector/model/stage_info/stage_info.dart';
import 'package:presale/src/presentation/modules/construction/stages_selector/widget/builder_moon_accordion.dart';

class StageItemValueNotifier extends ChangeNotifier {
  final Map<String, Widget> _enable = {};
  final Map<String, Widget> _disable = {};

  List<Widget> get widgets => _enable.values.toList();

  final SectionInfoRepository _sectionInfoRepository;

  StageItemValueNotifier({
    required SectionInfoRepository sectionInfoRepository,
  }) : _sectionInfoRepository = sectionInfoRepository;

  void updateWidgetMap(Set<String> selected) {
    Set<String> yetEnable = _enable.keys.toSet();
    Set<String> forEnable = selected.difference(yetEnable);
    Set<String> forDisable = yetEnable.difference(selected);

    for (var element in forDisable) {
      if(_enable.containsKey(element)){
        Widget? disable = _enable.remove(element);
        if (disable != null) {
          _disable.putIfAbsent(
            element,
                () => disable,
          );
        }
      }
    }

    for (var element in forEnable) {
      Widget? disable = _disable.remove(element);
      if (disable != null) {
        _enable.putIfAbsent(
          element,
          () => disable,
        );
      }
    }

    if (forDisable.isNotEmpty) {
      _sectionInfoRepository.disSelect(forDisable);
    }
    notifyListeners();
  }

  void setWidgets(List<StageData> subStages, BuildContext context) {
    for (var value in subStages) {
      _disable.putIfAbsent(value.id, () {
        StagesSelectorCubit cubit = StagesSelectorCubit(
          sectionInfoRepository: context.read<SectionInfoRepository>(),
          infoRepository: context.read<StageInfoRepository>(),
          sectionStageRepository: context.read<StageSectionRepository>(),
          path: value.id,
        );
        return BlocProvider<StagesSelectorCubit>.value(
          key: UniqueKey(),
          value: cubit,
          child: StagesSelectorBuilderMoonAccordion(),
        );
        },
      );
    }
  }
}

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presale/src/domain/models/v2/constructing/model/calculator/section_info_repository.dart';
import 'package:presale/src/domain/models/v2/constructing/model/calculator/stage_info_repository.dart';
import 'package:presale/src/presentation/modules/construction/navi/construction_navi.dart';

part 'stage_selector_root_state.dart';

class StageSelectorRootCubit extends Cubit<StageSelectorRootState> {
  final StageInfoRepository _infoRepository;
  final SectionInfoRepository _sectionInfoRepository;

  StageSelectorRootCubit({
    required StageInfoRepository infoRepository,
    required final SectionInfoRepository sectionInfoRepository,
  })  : _infoRepository = infoRepository,
        _sectionInfoRepository = sectionInfoRepository,
        super(InitialState()) {
    _init();
  }

  void _init() async {
    _infoRepository.loadInputResult().then(
          (value) => emit(
            LoadedState(),
          ),
          onError: (c) => emit(
            ErrorState(
              errorText: c.toString(),
            ),
          ),
        );
  }

  void nextPage() {
    String id = fillRoutePath;
    _sectionInfoRepository.saveSectionData(id).then(
          (_) => emit(
            NextPageState(id: id),
          ),
          onError: (c) => emit(
            ErrorState(
              errorText: c.toString(),
            ),
          ),
        );
  }
}

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:presale/src/domain/models/v2/constructing/model/calculator/section_info_repository.dart';
import 'package:presale/src/domain/models/v2/constructing/model/calculator/stage_info_repository.dart';

import 'package:presale/src/domain/models/v2/constructing/model/calculator/stage_section_repository.dart';
import 'package:presale/src/presentation/bloc/construction/provider/provider.dart';
import 'package:presale/src/presentation/bloc/construction/stages_selector/stages_selector_cubit.dart';
import 'package:presale/src/presentation/modules/construction/stages_selector/widget/builder_moon_accordion.dart';
import 'package:provider/provider.dart';

class StageSelectorTreeWidget extends StatelessWidget {
  const StageSelectorTreeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: ChangeNotifierProvider<SectionDataNotifier>(
          create: (context) => SectionDataNotifier(
            sectionInfoRepository: context.read<SectionInfoRepository>(),
          ),
          child: SingleChildScrollView(
            child: ListView(
              shrinkWrap: true,
              children: [
                BlocProvider(
                  create: (context) => StagesSelectorCubit(
                    infoRepository: context.read<StageInfoRepository>(),
                    sectionStageRepository:
                        context.read<StageSectionRepository>(),
                    sectionInfoRepository:
                        context.read<SectionInfoRepository>(),
                  ),
                  child: StagesSelectorBuilderMoonAccordion(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/widgets.dart';
import 'package:presale/src/presentation/bloc/construction/provider/provider.dart';
import 'package:presale/src/presentation/modules/construction/stages_selector/model/stage_view_model/stage_view_model.dart';
import 'package:presale/src/presentation/modules/construction/stages_selector/widget/stage_info_widget.dart';
import 'package:provider/provider.dart';

class CustomMoonAccordion extends StatelessWidget {
  const CustomMoonAccordion({super.key, required this.viewModel});

  final StageDataViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return StageDataWidget(
      stageViewModel: viewModel,
      onSelected: (itemsId) =>
          context.read<StageItemValueNotifier>().updateWidgetMap(itemsId),
    );
  }
}

class CustomMoonItem extends StatelessWidget {
  const CustomMoonItem({super.key, required this.viewModel});

  final SectionDataVewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SectionDataWidget(
      onSelected: (itemsId) => context
          .read<SectionDataNotifier>()
          .addSectionData(viewModel.stageInfo.id, itemsId),
      stageViewModel: viewModel,
    );
  }
}

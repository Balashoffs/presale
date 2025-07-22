import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v2/constructing/model/calculator/section_info_repository.dart';
import 'package:presale/src/presentation/bloc/construction/stages_selector/stage_selector_root_cubit/stage_selector_root_cubit.dart';

class ResultButton extends StatelessWidget {
  const ResultButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ValueListenableBuilder<int>(
          valueListenable:
          context
              .read<SectionInfoRepository>()
              .totalSelected,
          builder: (context, value, child) {
            return MoonButton(
              showBorder: true,
              label: Text('Всего выбрано: $value'),
              trailing: value == 0
                  ? null
                  : Icon(
                MoonIcons.controls_chevron_right_small_16_light,
                color: context.moonColors!.bulma,
              ),
              onTap: value == 0 ? null : () {
                context.read<StageSelectorRootCubit>().nextPage();
              },
            );
          },
        ),
      ),
    );
  }
}

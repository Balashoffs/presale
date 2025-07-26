import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/di/di.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/widget_action_type.dart';

import 'package:presale/src/presentation/common/typography_page_options.dart';

import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_summary_viewmodel.dart';
import 'package:presale/src/presentation/bloc/v4/design/division_resource_calculator/division_resource_calculate_cubit.dart';

import 'package:presale/src/presentation/modules/v3/design/common/collum_attributes.dart';
import 'package:presale/src/presentation/modules/v3/design/common/custom_circle_loader.dart';
import 'package:presale/src/presentation/modules/v4/design/division_resource_calculate/widget/custom_dropdown_with_search_widget.dart';
import 'package:presale/src/presentation/modules/v4/design/division_resource_calculate/widget/divisions_table_widget.dart';
import 'package:presale/src/presentation/modules/v4/design/division_resource_calculate/widget/next_page_widget.dart';
import 'package:presale/src/presentation/modules/v4/design/division_resource_calculate/widget/result_sum_widget.dart';
import 'package:provider/provider.dart';

class DivisionResourceCalculatePage extends StatelessWidget {
  const DivisionResourceCalculatePage({super.key});

  final String pathToRootRoute = '/';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DivisionResourceSummaryViewModel(),
      child: Scaffold(
        appBar: AppBar(
          actions: [
            MoonButton.icon(
              icon: Icon(MoonIcons.controls_close_16_light),
              onTap: () {
                context.go(pathToRootRoute);
              },
            ),
          ],
          title: Text(
            "Расчет стадий проектирования",
            style: getHeadingTextStyle(context, MoonTextSize.size16),
          ),
        ),
        body: DivisionResourceCalculateProvider(),
      ),
    );
  }
}

class DivisionResourceCalculateProvider extends StatelessWidget {
  const DivisionResourceCalculateProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DivisionResourceCalculateCubit>(
      create: (context) {
        return DivisionResourceCalculateCubit(
          divisionType: 'П',
          dbClient: di.dbClientImpl,
          resourceSummaryViewModel: context.read<DivisionResourceSummaryViewModel>()
        )..init();
      },
      child: DivisionResourceCalculateConsumer(),
    );
  }
}

class DivisionResourceCalculateConsumer extends StatelessWidget {
  const DivisionResourceCalculateConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<
      DivisionResourceCalculateCubit,
      DivisionResourceCalculateState
    >(
      builder: (context, state) {
        return state.mapOrNull(
              initial: (value) => CustomCircleLoader(),
              showPage: (value) => DivisionResourceCalculateWidget(),
            ) ??
            SizedBox();
      },
      listener: (context, state) {
        state.whenOrNull(
          nextPage: (route) => route == null ? context.go('') : context.go(''),
        );
      },
    );
  }
}

class DivisionResourceCalculateWidget extends StatelessWidget {
  const DivisionResourceCalculateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Consumer<DivisionResourceSummaryViewModel>(
                builder: (context, value, child) {
                  return CustomDropdownWithSearchWidget(
                    enabled: true,
                    divisions: value.notSelected,
                    onSelected: (p0) =>
                        value.onRowAction(p0.id, WidgetActionType.add),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ValueListenableBuilder<double>(
                  valueListenable: context
                      .read<DivisionResourceSummaryViewModel>()
                      .summary,
                  builder: (context, value, child) {
                    return ResultSumWidget(
                      name: 'Себестоимость, рубл.',
                      value: value.toString(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 8,
          child: Builder(
            builder: (context) {
              return Consumer<DivisionResourceSummaryViewModel>(
                builder: (context, value, child) {
                  return DivisionsResourceTableWidget(
                    rowAttributes: divisionResourceTableAttributes,
                    tableDataRows: value.divisionResourceRowViewModel,
                    firstRow:
                        value.divisionResourceRowViewModelWithValueNotifierVN,
                    onRowAction: value.onRowAction,
                  );
                },
              );
            },
          ),
        ),
        Expanded(
          flex: 1,
          child: NextPageWidget(
            onTap: context.read<DivisionResourceCalculateCubit>().onNextPage,
          ),
        ),
      ],
    );
  }
}

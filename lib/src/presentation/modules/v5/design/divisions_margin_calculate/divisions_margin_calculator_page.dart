import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:presale/src/di/di.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/divisions_margin_summary_viewmodel.dart';
import 'package:presale/src/presentation/bloc/v5/design/divisions_margin_calculator/divisions_margin_calculate_cubit.dart';
import 'package:presale/src/presentation/modules/v5/design/common/collum_attributes.dart';
import 'package:presale/src/presentation/modules/v5/design/common/custom_app_bar.dart';
import 'package:presale/src/presentation/modules/v5/design/common/custom_circle_loader.dart';
import 'package:presale/src/presentation/modules/v5/design/common/next_page_widget.dart';
import 'package:presale/src/presentation/modules/v5/design/divisions_margin_calculate/widget/division_app_bar_title.dart';
import 'package:presale/src/presentation/modules/v5/design/divisions_margin_calculate/widget/divisions_table_widget.dart';
import 'package:presale/src/presentation/modules/v5/design/navi/service_navi.dart';

class DivisionsMarginCalculatePage extends StatelessWidget {
  const DivisionsMarginCalculatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: DivisionAppBarTitle(),

      child: DivisionsMarginCalculateRepository(),
    );
  }
}

class DivisionsMarginCalculateRepository extends StatelessWidget {
  const DivisionsMarginCalculateRepository({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => DivisionsViewController(),
      child: DivisionsMarginCalculateProvider(),
    );
  }
}

class DivisionsMarginCalculateProvider extends StatelessWidget {
  const DivisionsMarginCalculateProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DivisionsMarginCalculateCubit>(
      create: (context) {
        return DivisionsMarginCalculateCubit(
          dbClient: di.dbClientImpl,
          resourceSummaryViewModel: context
              .read<DivisionsViewController>(),
        )..init();
      },
      child: DivisionsMarginCalculateConsumer(),
    );
  }
}

class DivisionsMarginCalculateConsumer extends StatelessWidget {
  const DivisionsMarginCalculateConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<
      DivisionsMarginCalculateCubit,
      DivisionsMarginCalculateState
    >(
      builder: (context, state) {
        return state.whenOrNull(
              initial: () => CustomCircleLoader(),
              showPage: () => DivisionsMarginCalculateWidget(),
            ) ??
            SizedBox();
      },
      listener: (context, state) {
        state.whenOrNull(nextPage: () => context.go(designOfferRoute));
      },
    );
  }
}

class DivisionsMarginCalculateWidget extends StatelessWidget {
  const DivisionsMarginCalculateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 9,
          child: DivisionsMarginTableWidget(
            rowAttributes: divisionMarginTableAttributes,
            tableDataRows: context.read<DivisionsViewController>().rows,
          ),
        ),
        Expanded(
          flex: 1,
          child: NextPageWidget(
            onTap: context.read<DivisionsMarginCalculateCubit>().onNextPage,
          ),
        ),
      ],
    );
  }
}

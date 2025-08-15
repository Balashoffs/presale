import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:presale/src/di/di.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_viewmodel.dart';
import 'package:presale/src/presentation/bloc/v5/design/offer/design_offer_cubit.dart';
import 'package:presale/src/presentation/bloc/v5/design/offer/design_offer_result_controller.dart';
import 'package:presale/src/presentation/modules/v5/design/common/custom_app_bar.dart';
import 'package:presale/src/presentation/modules/v5/design/common/custom_circle_loader.dart';
import 'package:presale/src/presentation/modules/v5/design/design_offer/result_commerce_offer_page/widget/design_offer_header.dart';
import 'package:presale/src/presentation/modules/v5/design/design_offer/result_commerce_offer_page/widget/design_offer_result_table_widget.dart';

class DesignOfferPage extends StatelessWidget {
  const DesignOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      child: DesignOfferRepository(),
    );
  }
}

class DesignOfferRepository extends StatelessWidget {
  const DesignOfferRepository({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => DesignOfferResultController(),
      child: DesignOfferBlocProviderWidget(),
    );
  }
}

class DesignOfferBlocProviderWidget extends StatelessWidget {
  const DesignOfferBlocProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DesignOfferCubit(
        dbClient: di.dbClientImpl,
        controller: context.read<DesignOfferResultController>(),
      )..init(),
      child: DesignOfferBlocConsumerWidget(),
    );
  }
}

class DesignOfferBlocConsumerWidget extends StatelessWidget {
  const DesignOfferBlocConsumerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DesignOfferCubit, DesignOfferState>(
      builder: (context, state) {
        return state.whenOrNull(
              initial: () => CustomCircleLoader(),
              showPage: (value) => DesignOfferWidget(results: value),
            ) ??
            SizedBox();
      },
      listener: (context, state) {
        state.whenOrNull(nextPage: () => context.go('/'));
      },
    );
  }
}

class DesignOfferWidget extends StatelessWidget {
  const DesignOfferWidget({super.key, required this.results});

  final DesignOfferResultVM results;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DesignOfferHeaderWidget(results: results,),
          Divider(indent: 16,endIndent: 16,),
          DivisionsResultAsTable(results: results),
        ],
      ),
    );
  }
}

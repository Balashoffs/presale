import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_viewmodel.dart';
import 'package:presale/src/presentation/bloc/v5/design/offer/design_offer_cubit.dart';
import 'package:presale/src/presentation/bloc/v5/design/offer/design_offer_result_controller.dart';
import 'package:presale/src/presentation/modules/v5/design/design_offer/result_commerce_offer_page/widget/sign_person_dropdown.dart';
import 'package:presale/src/presentation/modules/v5/design/design_offer/result_commerce_offer_page/widget/table_utils.dart';

class DesignOfferFooterWidget extends StatelessWidget {
  const DesignOfferFooterWidget({super.key, required this.results});

  final DesignOfferResultVM results;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        spacing: 8.0,
        children: [
          MoonButton(
            width: 200,
            showBorder: true,
            label: const Text("Выгрузить КП"),
            onTap: () {
              if (Form.of(context).validate()) {
                context.read<DesignOfferCubit>().saveToFile();
              }
            },
          ),
          MoonButton(
            width: 100,
            showBorder: true,
            label: const Text("Закрыть"),
            onTap: () {
              context.read<DesignOfferCubit>().toMainPage();
            },
          ),
        ],
      ),
    );
  }
}

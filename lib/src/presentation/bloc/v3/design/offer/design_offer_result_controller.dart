import 'package:flutter/cupertino.dart';
import 'package:presale/src/domain/models/v3/design/custom_fuctors/custom_factors.dart';
import 'package:presale/src/domain/models/v4/design/design_presale_pojo.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/divisions_margin_table_with_type_pojo.dart';
import 'package:presale/src/domain/models/v5/common/person_sign_dto.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/division_summary_viewmodel.dart';

class DesignOfferResultController {
  late final DesignOfferResultVM? designOfferResultVM;
  final ValueNotifier<List<PersonSignDTO>> signs = ValueNotifier([]);


  bool buildModel(
    DesignPresalePojo designPresalePojo,
    String divisionType,
  ) {
    if (designPresalePojo.divisions.containsKey(divisionType)) {
      DivisionsMarginTableWithTypePojo divisionResult =
          designPresalePojo.divisions[divisionType]!;
      final List<DesignOfferResultRowVM> divisionRows = divisionResult.rows
          .map(
            (e) => DesignOfferResultRowVM(
              id: e.id,
              divisionName: e.divisionName,
              divisionShortName: e.divisionShortName,
              deadline: 1,
              divisionSummaryWithTax: e.summaryCostWithMargin,
            ),
          )
          .toList();

      double personCost = designPresalePojo.divisions.values
          .map(
            (e) => e.rows
                .map((e) => e.summaryCostWithMargin)
                .reduce((value, element) => value + element),
          )
          .reduce((value, element) => value + element);

      double customerCost = designPresalePojo.divisions.values
          .map(
            (e) => e.rows
                .map((e) => e.summaryCostWithTax)
                .reduce((value, element) => value + element),
          )
          .reduce((value, element) => value + element);
      double taxCost = customerCost - customerCost * RussianTax;

      final List<DivisionSummaryVM> divisionSummaries =
          DivisionSummaryVM.generate(customerCost, taxCost);

      designOfferResultVM =  DesignOfferResultVM(
        divisionType: divisionType,
        createdDesignOffer: designPresalePojo.inputDataDesign.created!
            .toLocal().toString().split('.')[0],
        objectName: designPresalePojo.inputDataDesign.objectData.name,
        objectLocation: designPresalePojo.inputDataDesign.objectData.address,
        divisionRows: divisionRows,
        divisionSummaries: divisionSummaries,
        personCost: personCost,
        customerCost: customerCost,
      );
    }

    return designOfferResultVM != null;
  }

  Future<void> fillSign() async {
    List<PersonSignDTO> persons = await DivisionCostDtoBuilder().build();
    signs.value = [...persons];
  }

  void onComments(String value) {
    if (designOfferResultVM != null) {
      designOfferResultVM!.comments = value;
    }
  }

  void onWorkTime(int value) {
    if (designOfferResultVM != null) {
      designOfferResultVM!.totalDays = value;
    }
  }

  void onAvance(double value) {
    if (designOfferResultVM != null) {
      designOfferResultVM!.avance = value;
    }
  }

  void onSelectSign(PersonSignDTO? value) {
    if (designOfferResultVM != null) {
      designOfferResultVM!.signPerson = value;
    }
  }
}

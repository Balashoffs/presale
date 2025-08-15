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
  final ValueNotifier<List<String>> signsNames = ValueNotifier([]);
  final List<PersonSignDTO> sign = [];
  final ValueNotifier<bool> isCorrect = ValueNotifier(false);

  bool buildModel(DesignPresalePojo designPresalePojo) {
    designOfferResultVM = _buildFrom(designPresalePojo);
    return designOfferResultVM != null;
  }

  Future<void> fillSign() async {
    List<PersonSignDTO> persons = await DivisionCostDtoBuilder().build();
    sign.addAll(persons);
    signsNames.value = [...sign.map((e) => e.fullName)];
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

  void onAvance(String value) {
    int? result = int.tryParse(value);
    if (result != null) {
      if (designOfferResultVM != null) {
        designOfferResultVM!.avance = result;
      }
    }
  }

  void onSelectSign(String vale) {
    if (designOfferResultVM != null) {
      PersonSignDTO? found = sign
          .where((element) => element.fullName == vale)
          .firstOrNull;
      if (found != null) {
        designOfferResultVM!.signPerson = found;
      }
    }
  }

  DesignOfferResultVM? _buildFrom(DesignPresalePojo designPresalePojo){
    DivisionsMarginTableWithTypePojo? divisionResult =
        designPresalePojo.divisions;
    if(divisionResult != null){
      final List<DesignOfferResultRowVM> divisionRows = divisionResult.rows
          .map(
            (e) => DesignOfferResultRowVM(
          id: e.id,
          divisionName: e.divisionName,
          divisionShortName: e.divisionShortName,
          divisionSummaryWithTax: e.summaryCostWithMargin,
        ),
      )
          .toList();

      double overPrice =
          designPresalePojo.divisions?.rows
              .map((e) => e.overPriceFactor * e.divisionSummaryCost)
              .reduce((value, element) => value + element) ??
              0.0;

      double marginCost =
          designPresalePojo.divisions?.rows
              .map(
                (e) =>
            e.overPriceFactor * e.divisionSummaryCost * e.marginFactor,
          )
              .reduce((value, element) => value + element) ??
              0.0;

      double summary =
          designPresalePojo.divisions?.rows
              .map((e) => e.summaryCostWithTax)
              .reduce((value, element) => value + element) ??
              0.0;
      summary = double.parse(summary.toStringAsFixed(0));
      double tax = (summary - summary * RussianTax).abs();

      return DesignOfferResultVM(
        divisionType: designPresalePojo.inputDataDesign.divisionType.text,
        createdDesignOffer: designPresalePojo.inputDataDesign.created!
            .toLocal()
            .toString()
            .split(' ')[0],
        objectName: designPresalePojo.inputDataDesign.objectData.name,
        objectLocation: designPresalePojo.inputDataDesign.objectData.address,
        divisionRows: divisionRows,
        summary: summary,
        margin: marginCost,
        tax: tax,
        overPrice: overPrice,
        objectSquare: designPresalePojo.inputDataDesign.objectData.square,
      );
    }
    return null;
  }

}

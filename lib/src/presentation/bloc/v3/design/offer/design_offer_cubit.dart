import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/data/data_sources/v3/input_result_design_source.dart';
import 'package:presale/src/domain/models/v3/design/commercial_offer/commercial_offer.dart';
import 'package:presale/src/domain/models/v3/design/custom_fuctors/custom_factors.dart';
import 'package:presale/src/domain/models/v3/design/extension.dart';
import 'package:presale/src/domain/models/v3/design/input_data/object_data_design.dart';
import 'package:presale/src/domain/models/v4/design/design_presale_pojo.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/divisions_margin_table_with_type_pojo.dart';
import 'package:presale/src/domain/models/v5/common/person_sign_dto.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/division_summary_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/sign_person_viewmodel.dart';

import 'design_offer_result_controller.dart';

part 'design_offer_state.dart';

part 'design_offer_cubit.freezed.dart';

class DesignOfferCubit extends Cubit<DesignOfferState> {
  final DesignOfferResultController _designOfferController;
  final DesignPresaleDataSourceLocal _dataSourceLocal;
  final String _divisionType;

  DesignOfferCubit({
    required DesignOfferResultController controller,
    required String divisionType,
    required DBClient dbClient,
  }) : _divisionType = divisionType,
       _designOfferController = controller,
       _dataSourceLocal = DesignPresaleDataSourceLocal(dbClient),
       super(const DesignOfferState.initial());

  void init() async {
    DesignPresalePojo designPresalePojo = await _dataSourceLocal
        .getDesignPresale(DesignPresaleDataSourceLocal.key);
    await _designOfferController.fillSign();
    bool isBuild = _designOfferController.buildModel(
      designPresalePojo,
      _divisionType,
    );
    if (isBuild) {
      emit(
        DesignOfferState.showPage(_designOfferController.designOfferResultVM!),
      );
    }
  }

  void saveToFile() async {
    DesignPresalePojo designPresalePojo = await _dataSourceLocal
        .getDesignPresale(DesignPresaleDataSourceLocal.key);
    CommercialOfferResult? commercialOfferResult = _designOfferController
        .designOfferResultVM
        ?.toPojo(designPresalePojo.inputDataDesign);
    if(commercialOfferResult != null){
      print(commercialOfferResult.toString());
    }
  }

  void toMainPage() async {}
}

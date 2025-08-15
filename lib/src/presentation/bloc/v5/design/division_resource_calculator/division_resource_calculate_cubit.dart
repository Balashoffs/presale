import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/data/data_sources/v3/input_result_design_source.dart';
import 'package:presale/src/domain/models/v3/design/division_type/division_type.dart';
import 'package:presale/src/domain/models/v4/design/design_presale_pojo.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_row_pojo.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_table_pojo.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_resource_summary_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_with_resources_dto.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/extensions.dart';

part 'division_resource_calculate_state.dart';

part 'division_resource_calculate_cubit.freezed.dart';

class DivisionResourceCalculateCubit
    extends Cubit<DivisionResourceCalculateState> {
  final DivisionResourceSummaryViewController _resourceSummaryViewModel;
  final DesignPresaleDataSourceLocal _dataSourceLocal;

  DivisionResourceCalculateCubit({
    required DBClient dbClient,
    required DivisionResourceSummaryViewController resourceSummaryViewModel,
  }) : _dataSourceLocal = DesignPresaleDataSourceLocal(dbClient),
       _resourceSummaryViewModel = resourceSummaryViewModel,
       super(const DivisionResourceCalculateState.initial());

  void init() async {
    DesignPresalePojo designPresalePojo;
    // if (kDebugMode) {
    //   designPresalePojo =
    //       await DesignPresaleDataTest.getDevInputDesignPresale();
    // } else {
    //   designPresalePojo = await _dataSourceLocal.getDesignPresale(
    //     DesignPresaleDataSourceLocal.key,
    //   );
    // }

    designPresalePojo = await _dataSourceLocal.getDesignPresale(
      DesignPresaleDataSourceLocal.key,
    );

    DivisionWithResourceDTO divisionWithResourceDTO =
        await DivisionWithResourceDTO.build(
          designPresalePojo.inputDataDesign.divisionType,
        );

    _resourceSummaryViewModel.fill(
      divisionWithResourceDTO,
      designPresalePojo.inputDataDesign,
    );
    emit(DivisionResourceCalculateState.showPage());
  }

  void onNextPage() async {
    List<DivisionResourceRowPojo> rows = _resourceSummaryViewModel
        .selectedRows
        .value
        .map((e) => e.toPojo())
        .toList();

    DesignPresalePojo designPresalePojo = await _dataSourceLocal
        .getDesignPresale(DesignPresaleDataSourceLocal.key);

    DivisionResourceTableWithTypePojo updatedResources =
        DivisionResourceTableWithTypePojo(
          divisionType: designPresalePojo.inputDataDesign.divisionType,
          rows: rows,
        );

    DesignPresalePojo updated = designPresalePojo.copyWith(
      resource: updatedResources,
    );

    if (kDebugMode) {
      String result = json.encode(updated.toJson());
      print(result);
    }

    bool isSaves = await _dataSourceLocal.addDesignPresale(updated);
    if (isSaves) {
      emit(DivisionResourceCalculateState.nextPage());
    }
  }
}

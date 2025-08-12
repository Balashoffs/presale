import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/data/data_sources/v3/input_result_design_source.dart';

import 'package:presale/src/domain/models/v5/design/design_presale_pojo/design_presale_pojo.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/divisions_margin_row_pojo.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/divisions_margin_summary_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/extensions.dart';

import 'package:presale/src/domain/models/v5/design/design_presale_pojo/divisions_margin_table_with_type_pojo/division_resource_row_pojo/division_resource_row_pojo.dart';
import 'package:presale/src/domain/models/v5/design/design_presale_pojo/divisions_margin_table_with_type_pojo/divisions_margin_table_with_type_pojo.dart';

part 'divisions_margin_calculate_state.dart';

part 'divisions_margin_calculate_cubit.freezed.dart';

class DivisionsMarginCalculateCubit
    extends Cubit<DivisionsMarginCalculateState> {
  final DivisionsMarginSummaryViewModel _resourceSummaryViewModel;
  final DesignPresaleDataSourceLocal _dataSourceLocal;

  DivisionsMarginCalculateCubit({
    required DBClient dbClient,
    required DivisionsMarginSummaryViewModel resourceSummaryViewModel,
  }) : _dataSourceLocal = DesignPresaleDataSourceLocal(dbClient),
       _resourceSummaryViewModel = resourceSummaryViewModel,
       super(const DivisionsMarginCalculateState.initial());

  void init() async {
    DesignPresale designPresalePojo = await _dataSourceLocal
        .getDesignPresale(DesignPresaleDataSourceLocal.key);
    List<DivisionResourceRowPojo> divisionsByType =
        designPresalePojo.resource?.rows ?? [];
    if (divisionsByType.isNotEmpty) {
      _resourceSummaryViewModel.fill(divisionsByType);
      emit(DivisionsMarginCalculateState.showPage());
    }
  }

  void onNextPage() async {
    List<DivisionsMarginRowPojo> rows = _resourceSummaryViewModel.rows
        .map((e) => e.toRowPojo())
        .toList();

    DesignPresale designPresalePojo = await _dataSourceLocal
        .getDesignPresale(DesignPresaleDataSourceLocal.key);

    final updatesDivisions = DivisionsMarginTableWithTypePojo(
      divisionType: designPresalePojo.inputDataDesign.divisionType,
      rows: rows,
    );

    DesignPresale updated = designPresalePojo.copyWith(
      divisions: updatesDivisions,
    );

    bool isSaves = await _dataSourceLocal.addDesignPresale(updated);
    if (isSaves) {
      emit(DivisionsMarginCalculateState.nextPage());
    }
  }
}

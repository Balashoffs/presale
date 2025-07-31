import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/data/data_sources/v3/input_result_design_source.dart';
import 'package:presale/src/domain/models/v4/design/design_presale_pojo.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_row_pojo.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_resource_summary_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_with_resources_dto.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/division_with_margin_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/divisions_margin_row_pojo.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/divisions_margin_summary_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/extensions.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/extensions.dart';

part 'divisions_margin_calculate_state.dart';

part 'divisions_margin_calculate_cubit.freezed.dart';

class DivisionsMarginCalculateCubit
    extends Cubit<DivisionsMarginCalculateState> {
  final DivisionsMarginSummaryViewModel _resourceSummaryViewModel;
  final DesignPresaleDataSourceLocal _dataSourceLocal;
  final String _divisionType;

  DivisionsMarginCalculateCubit({
    required String divisionType,
    required DBClient dbClient,
    required DivisionsMarginSummaryViewModel resourceSummaryViewModel,
  }) : _divisionType = divisionType,
       _dataSourceLocal = DesignPresaleDataSourceLocal(dbClient),
       _resourceSummaryViewModel = resourceSummaryViewModel,
       super(const DivisionsMarginCalculateState.initial());

  void init() async {
    DesignPresalePojo designPresalePojo = await _dataSourceLocal
        .getDesignPresale(DesignPresaleDataSourceLocal.key);
    List<DivisionResourceRowPojo> divisionsByType =
        designPresalePojo.resource[_divisionType]?.rows ?? [];
    if (divisionsByType.isNotEmpty) {
      _resourceSummaryViewModel.fill(divisionsByType);
      emit(DivisionsMarginCalculateState.showPage());
    }
  }

  void onNextPage() async {
    List<DivisionsMarginRowPojo> rows = _resourceSummaryViewModel.rows
        .map((e) => e.toRowPojo())
        .toList();

    DesignPresalePojo designPresalePojo = await _dataSourceLocal
        .getDesignPresale(DesignPresaleDataSourceLocal.key);

    designPresalePojo.divisions[_divisionType]!.rows.addAll(rows);

    String? divisionType = designPresalePojo.resource.entries
        .where((element) => element.value.rows.isEmpty)
        .firstOrNull
        ?.value
        .divisionType;
    emit(DivisionsMarginCalculateState.nextPage(divisionType));
  }
}

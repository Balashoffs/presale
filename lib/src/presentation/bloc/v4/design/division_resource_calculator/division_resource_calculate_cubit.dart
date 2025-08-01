import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/data/data_sources/v3/input_result_design_source.dart';
import 'package:presale/src/domain/models/v4/design/design_presale_pojo.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_dto.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_row_pojo.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_summary_viewmodel.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/extensions.dart';

part 'division_resource_calculate_state.dart';

part 'division_resource_calculate_cubit.freezed.dart';

class DivisionResourceCalculateCubit
    extends Cubit<DivisionResourceCalculateState> {
  final DivisionWithResourceSummaryVM _resourceSummaryViewModel;
  final DesignPresaleDataSourceLocal _dataSourceLocal;
  final String _divisionType;

  DivisionResourceCalculateCubit({
    required String divisionType,
    required DBClient dbClient,
    required DivisionWithResourceSummaryVM resourceSummaryViewModel,
  }) : _divisionType = divisionType,
       _dataSourceLocal = DesignPresaleDataSourceLocal(dbClient),
       _resourceSummaryViewModel = resourceSummaryViewModel,
       super(const DivisionResourceCalculateState.initial()) {}

  void init() async {
    JobCostDtoBuilder jobCostDtoBuilder = JobCostDtoBuilder();
    List<DivisionResourceDTO> buildDivisions = await jobCostDtoBuilder.build();
    DesignPresalePojo designPresalePojo = await _dataSourceLocal
        .getDesignPresale(DesignPresaleDataSourceLocal.key);

    _resourceSummaryViewModel.fill(
      buildDivisions,
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

    designPresalePojo.resource[_divisionType]!.rows.addAll(rows);

    String? divisionType = designPresalePojo.resource.entries
        .where((element) => element.value.rows.isEmpty)
        .firstOrNull
        ?.value
        .divisionType;
    emit(DivisionResourceCalculateState.nextPage(divisionType));
  }
}

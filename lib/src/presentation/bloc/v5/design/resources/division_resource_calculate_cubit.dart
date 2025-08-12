import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/data/data_sources/v3/input_result_design_source.dart';

import 'package:presale/src/domain/models/v5/design/design_presale_pojo/design_presale_pojo.dart';
import 'package:presale/src/domain/models/v5/design/design_presale_pojo/division_resource_table_pojo/division_resource_table_pojo.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/resources_view_controller.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_with_resources_dto.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/extensions.dart';

import 'package:presale/src/domain/models/v5/design/design_presale_pojo/divisions_margin_table_with_type_pojo/division_resource_row_pojo/division_resource_row_pojo.dart';

part 'division_resource_calculate_state.dart';

part 'division_resource_calculate_cubit.freezed.dart';

class DivisionResourceCalculateCubit
    extends Cubit<DivisionResourceCalculateState> {
  final ResourcesViewController _resourceSummaryViewModel;
  final DesignPresaleDataSourceLocal _dataSourceLocal;

  DivisionResourceCalculateCubit({
    required DBClient dbClient,
    required ResourcesViewController resourceSummaryViewModel,
  }) : _dataSourceLocal = DesignPresaleDataSourceLocal(dbClient),
       _resourceSummaryViewModel = resourceSummaryViewModel,
       super(const DivisionResourceCalculateState.initial());

  void init() async {
    DesignPresale designPresalePojo = await _dataSourceLocal
        .getDesignPresale(DesignPresaleDataSourceLocal.key);


    DivisionWithResourceDTO divisionWithResourceDTO =
        await DivisionWithResourceDTO.build(designPresalePojo.inputDataDesign.divisionType);


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

    DesignPresale designPresalePojo = await _dataSourceLocal
        .getDesignPresale(DesignPresaleDataSourceLocal.key);

    DivisionResourceTableWithTypePojo updatedResources =
        DivisionResourceTableWithTypePojo(
          divisionType: designPresalePojo.inputDataDesign.divisionType,
          rows: rows,
        );

    DesignPresale updated = designPresalePojo.copyWith(
      resource: updatedResources,
    );

    bool isSaves = await _dataSourceLocal.addDesignPresale(updated);
    if (isSaves) {
      emit(DivisionResourceCalculateState.nextPage());
    }
  }
}

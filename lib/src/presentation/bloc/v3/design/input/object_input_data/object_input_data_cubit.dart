import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/data/core/db_client.dart';
import 'package:presale/src/data/data_sources/v3/input_result_design_source.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/input_repository.dart';
import 'package:presale/src/domain/models/v3/design/division_type/division_type.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v4/design/design_presale_pojo.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_table_pojo.dart';
import 'package:presale/src/presentation/bloc/v3/design/input/object_input_data/data/object_data_dto.dart';

import 'data/input_data_dto.dart';

part 'object_input_data_state.dart';

part 'object_input_data_cubit.freezed.dart';

class ObjectDataCubit extends Cubit<ObjectInputDataState> {
  final InputFactorsRepository _inputFactorRepository;
  late final InputFactorsViewModel? _inputFactors;

  final InputDataBuilder _inputResultBuilder;
  final ObjectDataBuilder _objectDataDTOBuilder;
  late final InputDataDTO _inputDataDTO;

  final DesignPresaleDataSourceLocal _dataSourceLocal;

  bool isPercents = false;

  double _percentConvertor(double inputValue) {
    if (isPercents) {
      return double.parse((inputValue / 100).toStringAsFixed(2));
    }
    return inputValue;
  }

  void init() async {
    _inputFactorRepository.readFactors().then((value) {
      _inputFactors = value;
      if (_inputFactors != null) {
        emit(ObjectInputDataState.enterInputData(_inputFactors));
      }
    }, onError: (error) => ObjectInputDataState.errorMessage(""));
  }

  ObjectDataCubit(DBClient dbClient)
    : _dataSourceLocal = DesignPresaleDataSourceLocal(dbClient),
      _inputResultBuilder = InputDataBuilder(),
      _objectDataDTOBuilder = ObjectDataBuilder(),
      _inputFactorRepository = InputFactorsRepository(),
      super(ObjectInputDataState.initial());

  //Данные объекте
  void setObjectName(String name) {
    if (name.isEmpty) return;
    _objectDataDTOBuilder.setObjectName(name);
  }

  void setObjectLocation(String address) {
    if (address.isEmpty) return;
    _objectDataDTOBuilder.setObjectAddress(address);
  }

  void setSquare(String value) {
    double? result = double.tryParse(value);
    if (result != null) {
      _objectDataDTOBuilder.setObjectSquare(result);
    }
  }

  void setDeadline(String value) {
    int? result = int.tryParse(value);
    if (result != null) {
      _objectDataDTOBuilder.setDeadlineValue(result);
    }
  }

  //Закончили вводить данные об объекте

  void setHeightFactor(String value) {
    double? result = _inputFactors!.factorSelectedItem(
      InputFactorType.b.value,
      value,
    );
    if (result != null) {
      result = _percentConvertor(result);
      _inputResultBuilder.setHeightFactor(result);
    }
  }

  void setLocationFactor(String value) {
    double? result = _inputFactors!.factorSelectedItem(
      InputFactorType.c.value,
      value,
    );
    if (result != null) {
      result = _percentConvertor(result);
      _inputResultBuilder.setRemotingFactor(result);
    }
  }

  void setSquareFactor(String value) {
    double? result = _inputFactors!.factorSelectedItem(
      InputFactorType.d.value,
      value,
    );
    if (result != null) {
      result = _percentConvertor(result);
      _inputResultBuilder.setSquareFactor(result);
    }
  }

  void setSpeedFactor(String value) {
    double? result = double.tryParse(value);
    if (result != null) {
      result = _percentConvertor(result);
      _inputResultBuilder.setSpeedFactor(result);
    }
  }

  void setOverPriceFactor(String value) {
    double? result = double.tryParse(value);
    if (result != null) {
      result = _percentConvertor(result);
      _inputResultBuilder.setOverPriceFactor(result);
    }
  }

  void setComplexityFactor(Set<String> selected) {
    double? result = 1.0;
    if (selected.isNotEmpty) {
      result = _inputFactors!.complexity
          .where((element) => selected.contains(element.value))
          .map((e) => e.factor)
          .reduce((value, element) => value * element);
    }
    result = double.parse(_percentConvertor(result).toStringAsFixed(2));
    _inputResultBuilder.setComplexityFactor(result);
  }

  void setConsumerFactor(String value) {
    double? result = double.tryParse(value);
    if (result != null) {
      result = result / 100;
      _inputResultBuilder.setConsumerFactor(result);
    }
  }

  void setRateReturnFactor(String value) {
    double? result = double.tryParse(value);
    if (result != null) {
      result = result / 100;
      _inputResultBuilder.setRateReturnFactor(result);
    }
  }

  void setResultDesignDocumentations(String result) {
    DivisionType dt = DivisionType.fromShortText(result);
    _inputResultBuilder.setDivisionType(dt);
  }

  bool _checkResult() {
    try {
      ObjectDataDTO objectDataDTO = _objectDataDTOBuilder.build();
      try {
        _inputResultBuilder.setObjectData(objectDataDTO);
        _inputDataDTO = _inputResultBuilder.build();
      } catch (e) {
        return false;
      }
    } catch (e) {
      return false;
    }

    return true;
  }

  void nextPage() async {
    if (_checkResult()) {
      InputDataDesign inputData = _inputDataDTO.toModel();
      DesignPresalePojo designPresalePojo = DesignPresalePojo(
        inputDataDesign: inputData,
        resource: _convertDivisionType(inputData.divisionType),
      );
      bool isSaves = await _dataSourceLocal.addDesignPresale(designPresalePojo);
      if (isSaves) {
        if (designPresalePojo.resource.length == 1) {
          String? type =
              designPresalePojo.resource.values.firstOrNull?.divisionType;
          emit(ObjectInputDataState.nextPage(type));
        }
      }
    }
  }

  Map<String, DivisionResourceTableWithTypePojo> _convertDivisionType(
    DivisionType type,
  ) {
    Map<String, DivisionResourceTableWithTypePojo> tables = {};
    if (type == DivisionType.both) {
      tables[DivisionType.project.shortText] =
          DivisionResourceTableWithTypePojo(
            divisionType: DivisionType.project.shortText,
            rows: [],
          );
      tables[DivisionType.working.shortText] =
          DivisionResourceTableWithTypePojo(
            divisionType: DivisionType.working.shortText,
            rows: [],
          );
    } else {
      tables[DivisionType.both.shortText] = DivisionResourceTableWithTypePojo(
        divisionType: DivisionType.both.shortText,
        rows: [],
      );
    }
    return tables;
  }
}

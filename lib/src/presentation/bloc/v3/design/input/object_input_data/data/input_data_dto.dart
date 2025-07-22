// InputData class with Builder pattern
import 'package:presale/src/domain/models/v3/design/division_type/division_type.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';

import 'object_data_dto.dart';

class InputDataDTO {
  final DateTime created;
  final ObjectDataDTO objectData;
  final double heightFactor;
  final double squareFactor;
  final double speedFactor;
  final double remotingFactor;
  final double complexityFactor;
  final double consumerFactor;
  final double rateReturnFactor;
  final double overPriceFactor;
  final DivisionType divisionType;

  InputDataDTO._({
    required this.created,
    required this.objectData,
    required this.speedFactor,
    required this.squareFactor,
    required this.heightFactor,
    required this.remotingFactor,
    required this.complexityFactor,
    required this.consumerFactor,
    required this.rateReturnFactor,
    required this.overPriceFactor,
    required this.divisionType,
  });

  // Static method to create builder
  static InputDataBuilder builder() => InputDataBuilder();
}

// Builder class for InputData
class InputDataBuilder {
  DateTime _created = DateTime.now();
  ObjectDataDTO? _objectData;
  double _speedFactor = 1.0;
  double _squareFactor = 1.0;
  double _heightFactor = 1.0;
  double _remotingFactor = 1.0;
  double _complexityFactor = 1.0;
  double _consumerFactor = 1.0;
  double _rateReturnFactor = 1.0;
  double _overPriceFactor = 0.1;
  DivisionType _divisionType = DivisionType.project;

  InputDataBuilder setCreated(DateTime created) {
    _created = created;
    return this;
  }

  InputDataBuilder setObjectData(ObjectDataDTO objectData) {
    _objectData = objectData;
    return this;
  }

  InputDataBuilder setSpeedFactor(double speedFactor) {
    _speedFactor = speedFactor;
    return this;
  }

  InputDataBuilder setSquareFactor(double squareFactor) {
    _squareFactor = squareFactor;
    return this;
  }

  InputDataBuilder setHeightFactor(double heightFactor) {
    _heightFactor = heightFactor;
    return this;
  }

  InputDataBuilder setRemotingFactor(double remotingFactor) {
    _remotingFactor = remotingFactor;
    return this;
  }

  InputDataBuilder setComplexityFactor(double complexityFactor) {
    _complexityFactor = complexityFactor;
    return this;
  }

  InputDataBuilder setConsumerFactor(double consumerFactor) {
    _consumerFactor = consumerFactor;
    return this;
  }

  InputDataBuilder setRateReturnFactor(double rateReturnFactor) {
    _rateReturnFactor = rateReturnFactor;
    return this;
  }

  InputDataBuilder setOverPriceFactor(double overPriceFactor) {
    _overPriceFactor = overPriceFactor;
    return this;
  }

  InputDataBuilder setDivisionType(DivisionType divisionType) {
    _divisionType = divisionType;
    return this;
  }

  InputDataDTO build() {
    if (_objectData == null ) {
      throw ArgumentError('All fields must be set before building InputData');
    }

    return InputDataDTO._(
      objectData: _objectData!,
      created: _created,
      squareFactor: _squareFactor,
      complexityFactor: _complexityFactor,
      consumerFactor: _consumerFactor,
      divisionType: _divisionType,
      rateReturnFactor: _rateReturnFactor,
      remotingFactor: _remotingFactor,
      speedFactor: _speedFactor,
      overPriceFactor: _overPriceFactor,
      heightFactor: _heightFactor,
    );
  }
}

extension InputDataDtoToModel on InputDataDTO {
  InputDataDesign toModel() {
    return InputDataDesign(
      objectData: objectData.from(),
      created: created,
      complexityFactor: complexityFactor,
      consumerFactor: consumerFactor,
      divisionType: divisionType,
      rateReturnFactor: rateReturnFactor,
      remotingFactor: remotingFactor,
      speedFactor: speedFactor,
      overPriceFactor: overPriceFactor,
      heightFactor: heightFactor,
      squareFactor: squareFactor,
    );
  }
}

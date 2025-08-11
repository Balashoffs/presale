// ObjectDataDTO class with Builder pattern
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v3/design/input_data/object_data_design.dart';
import 'package:presale/src/domain/models/v3/design/input_factors/input_factors_pojo.dart';

class InputDataMV {
  final String objectName;
  final String objectAddress;
  final double objectSquare;
  final String divisionType;
  final int deadlineValue;
  final double overPriceFactor;
  final double marginFactor;
  final double customerFactor;
  final double speedFactor;
  final double heightFactor;
  final double remotingFactor;
  final double complexityFactor;
  final double squareFactor;

  InputDataMV._({
    required this.objectName,
    required this.objectAddress,
    required this.objectSquare,
    required this.divisionType,
    required this.deadlineValue,
    required this.overPriceFactor,
    required this.marginFactor,
    required this.customerFactor,
    required this.speedFactor,
    required this.heightFactor,
    required this.remotingFactor,
    required this.complexityFactor,
    required this.squareFactor,
  });

  // Static method to create builder
  static InputDataBuilder builder() => InputDataBuilder();
}

// Builder class for ObjectDataDTO
class InputDataBuilder {
  String? _objectName;
  String? _objectAddress;
  String? _divisionType;
  double? _objectSquare;
  int? _deadlineValue;
  double _overPriceFactor = 0.8;
  double _marginFactor = 1.2;
  double _customerFactor = 1.0;
  double _speedFactor = 1.0;
  double _heightFactor = 1.0;
  double _remotingFactor = 1.0;
  double _complexityFactor = 1.0;
  double _squareFactor = 1.0;

  InputDataBuilder setObjectName(String objectName) {
    _objectName = objectName;
    return this;
  }

  InputDataBuilder setObjectAddress(String objectAddress) {
    _objectAddress = objectAddress;
    return this;
  }

  InputDataBuilder setDivisionType(String divisionType) {
    _divisionType = divisionType;
    return this;
  }

  InputDataBuilder setObjectSquare(double objectSquare) {
    _objectSquare = objectSquare;
    return this;
  }

  InputDataBuilder setDeadlineValue(int deadlineValue) {
    _deadlineValue = deadlineValue;
    return this;
  }

  InputDataBuilder setOverPriceFactor(double overPriceFactor) {
    _overPriceFactor = overPriceFactor;
    return this;
  }

  InputDataBuilder setMarginFactor(double marginFactor) {
    _marginFactor = marginFactor;
    return this;
  }

  InputDataBuilder setCustomerFactor(double customerFactor) {
    _customerFactor = customerFactor;
    return this;
  }

  InputDataBuilder setSpeedFactor(double speedFactor) {
    _speedFactor = speedFactor;
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

  InputDataBuilder setSquareFactor(double squareFactor) {
    _squareFactor = squareFactor;
    return this;
  }

  InputDataMV build() {
    if (_objectName != null ||
        _objectAddress != null ||
        _divisionType != null ||
        _objectSquare != null ||
        _deadlineValue != null) {
      throw ArgumentError(
        'All fields must be set before building ObjectDataDTO',
      );
    }

    return InputDataMV._(
      objectName: _objectName!,
      objectAddress: _objectAddress!,
      objectSquare: _objectSquare!,
      deadlineValue: _deadlineValue!,
      divisionType: _divisionType!,
      overPriceFactor: _overPriceFactor,
      marginFactor: _marginFactor,
      customerFactor: _customerFactor,
      speedFactor: _speedFactor,
      heightFactor: _heightFactor,
      remotingFactor: _remotingFactor,
      complexityFactor: _complexityFactor,
      squareFactor: _squareFactor,
    );
  }
}

extension InputDataMVExt on InputDataMV {
  ObjectDataDesign toObject() {
    return ObjectDataDesign(
      name: objectName,
      address: objectAddress,
      square: objectSquare,
      deadlineValue: deadlineValue,
    );
  }

  InputFactorsPojo toFactors() {
    return InputFactorsPojo(
      overPriceFactor: overPriceFactor,
      customerFactor: customerFactor,
      speedFactor: speedFactor,
      heightFactor: heightFactor,
      remotingFactor: remotingFactor,
      complexityFactor: complexityFactor,
      squareFactor: squareFactor,
      marginFactor: marginFactor,
    );
  }
}

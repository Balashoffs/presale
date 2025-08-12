// ObjectDataDTO class with Builder pattern
import 'package:presale/src/domain/models/v5/design/input_data/input_factors/input_factors_pojo.dart';
import 'package:presale/src/domain/models/v5/design/input_data/object_data/object_data_design.dart';

class DesignInputDataVM {
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

  DesignInputDataVM._({
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
  static DesignInputDataVMBuilder builder() => DesignInputDataVMBuilder();
}

// Builder class for ObjectDataDTO
class DesignInputDataVMBuilder {
  String? _objectName;
  String? _objectAddress;
  String? _divisionType;
  double _objectSquare = 0;
  int _deadlineValue = 0;
  double _overPriceFactor = 0.8;
  double _marginFactor = 1.2;
  double _customerFactor = 1.0;
  double _speedFactor = 1.0;
  double _heightFactor = 1.0;
  double _remotingFactor = 1.0;
  double _complexityFactor = 1.0;
  double _squareFactor = 1.0;

  DesignInputDataVMBuilder setObjectName(String objectName) {
    _objectName = objectName;
    return this;
  }

  DesignInputDataVMBuilder setObjectAddress(String objectAddress) {
    _objectAddress = objectAddress;
    return this;
  }

  DesignInputDataVMBuilder setDivisionType(String divisionType) {
    _divisionType = divisionType;
    return this;
  }

  DesignInputDataVMBuilder setObjectSquare(double objectSquare) {
    _objectSquare = objectSquare;
    return this;
  }

  DesignInputDataVMBuilder setDeadlineValue(int deadlineValue) {
    _deadlineValue = deadlineValue;
    return this;
  }

  DesignInputDataVMBuilder setOverPriceFactor(double overPriceFactor) {
    _overPriceFactor = overPriceFactor;
    return this;
  }

  DesignInputDataVMBuilder setMarginFactor(double marginFactor) {
    _marginFactor = marginFactor;
    return this;
  }

  DesignInputDataVMBuilder setCustomerFactor(double customerFactor) {
    _customerFactor = customerFactor;
    return this;
  }

  DesignInputDataVMBuilder setSpeedFactor(double speedFactor) {
    _speedFactor = speedFactor;
    return this;
  }

  DesignInputDataVMBuilder setHeightFactor(double heightFactor) {
    _heightFactor = heightFactor;
    return this;
  }

  DesignInputDataVMBuilder setRemotingFactor(double remotingFactor) {
    _remotingFactor = remotingFactor;
    return this;
  }

  DesignInputDataVMBuilder setComplexityFactor(double complexityFactor) {
    _complexityFactor = complexityFactor;
    return this;
  }

  DesignInputDataVMBuilder setSquareFactor(double squareFactor) {
    _squareFactor = squareFactor;
    return this;
  }

  DesignInputDataVM build() {
    return DesignInputDataVM._(
      objectName: _objectName!,
      objectAddress: _objectAddress!,
      objectSquare: _objectSquare,
      deadlineValue: _deadlineValue,
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

extension InputDataMVExt on DesignInputDataVM {
  ObjectDataDesign toObject() {
    return ObjectDataDesign(
      name: objectName,
      address: objectAddress,
      square: objectSquare,
      deadlineValue: deadlineValue,
    );
  }

  InputFactors toFactors() {
    return InputFactors(
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

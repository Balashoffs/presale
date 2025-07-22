// ObjectDataDTO class with Builder pattern
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v3/design/input_data/object_data_design.dart';

class ObjectDataDTO {
  final String objectName;
  final String objectAddress;
  final double objectSquare;
  final int deadlineValue;

  ObjectDataDTO._({
    required this.objectName,
    required this.objectAddress,
    required this.objectSquare,
    required this.deadlineValue,
  });

  // Static method to create builder
  static ObjectDataBuilder builder() => ObjectDataBuilder();

  @override
  String toString() {
    return 'ObjectDataDTO(objectName: $objectName, objectAddress: $objectAddress, objectSquare: $objectSquare, deadlineValue: $deadlineValue)';
  }
}

// Builder class for ObjectDataDTO
class ObjectDataBuilder {
  String? _objectName;
  String? _objectAddress;
  double? _objectSquare;
  int? _deadlineValue;

  ObjectDataBuilder setObjectName(String objectName) {
    _objectName = objectName;
    return this;
  }

  ObjectDataBuilder setObjectAddress(String objectAddress) {
    _objectAddress = objectAddress;
    return this;
  }

  ObjectDataBuilder setObjectSquare(double objectSquare) {
    _objectSquare = objectSquare;
    return this;
  }

  ObjectDataBuilder setDeadlineValue(int deadlineValue) {
    _deadlineValue = deadlineValue;
    return this;
  }

  ObjectDataDTO build() {
    if (_objectName == null ||
        _objectAddress == null ||
        _objectSquare == null ||
        _deadlineValue == null) {
      throw ArgumentError(
          'All fields must be set before building ObjectDataDTO');
    }

    return ObjectDataDTO._(
      objectName: _objectName!,
      objectAddress: _objectAddress!,
      objectSquare: _objectSquare!,
      deadlineValue: _deadlineValue!,
    );
  }
}

extension ObjectionDto on ObjectDataDTO {
  ObjectDataDesign from() {
    return ObjectDataDesign(
      name: objectName,
      address: objectAddress,
      square: objectSquare,
      deadlineValue: deadlineValue,
    );
  }
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_data_design.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InputDataDesign _$InputDataDesignFromJson(Map<String, dynamic> json) {
  return _InputDataDesign.fromJson(json);
}

/// @nodoc
mixin _$InputDataDesign {
  // Дата и время создание КП
  DateTime? get created =>
      throw _privateConstructorUsedError; // Данные об объекте
  ObjectDataDesign get objectData => throw _privateConstructorUsedError;
  InputFactorsPojo get inputFactors =>
      throw _privateConstructorUsedError; // Тип проектной документации на выходе
  DivisionType get divisionType => throw _privateConstructorUsedError;

  /// Serializes this InputDataDesign to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InputDataDesign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InputDataDesignCopyWith<InputDataDesign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputDataDesignCopyWith<$Res> {
  factory $InputDataDesignCopyWith(
    InputDataDesign value,
    $Res Function(InputDataDesign) then,
  ) = _$InputDataDesignCopyWithImpl<$Res, InputDataDesign>;
  @useResult
  $Res call({
    DateTime? created,
    ObjectDataDesign objectData,
    InputFactorsPojo inputFactors,
    DivisionType divisionType,
  });

  $ObjectDataDesignCopyWith<$Res> get objectData;
  $InputFactorsPojoCopyWith<$Res> get inputFactors;
}

/// @nodoc
class _$InputDataDesignCopyWithImpl<$Res, $Val extends InputDataDesign>
    implements $InputDataDesignCopyWith<$Res> {
  _$InputDataDesignCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InputDataDesign
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created = freezed,
    Object? objectData = null,
    Object? inputFactors = null,
    Object? divisionType = null,
  }) {
    return _then(
      _value.copyWith(
            created: freezed == created
                ? _value.created
                : created // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            objectData: null == objectData
                ? _value.objectData
                : objectData // ignore: cast_nullable_to_non_nullable
                      as ObjectDataDesign,
            inputFactors: null == inputFactors
                ? _value.inputFactors
                : inputFactors // ignore: cast_nullable_to_non_nullable
                      as InputFactorsPojo,
            divisionType: null == divisionType
                ? _value.divisionType
                : divisionType // ignore: cast_nullable_to_non_nullable
                      as DivisionType,
          )
          as $Val,
    );
  }

  /// Create a copy of InputDataDesign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ObjectDataDesignCopyWith<$Res> get objectData {
    return $ObjectDataDesignCopyWith<$Res>(_value.objectData, (value) {
      return _then(_value.copyWith(objectData: value) as $Val);
    });
  }

  /// Create a copy of InputDataDesign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputFactorsPojoCopyWith<$Res> get inputFactors {
    return $InputFactorsPojoCopyWith<$Res>(_value.inputFactors, (value) {
      return _then(_value.copyWith(inputFactors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InputDataDesignImplCopyWith<$Res>
    implements $InputDataDesignCopyWith<$Res> {
  factory _$$InputDataDesignImplCopyWith(
    _$InputDataDesignImpl value,
    $Res Function(_$InputDataDesignImpl) then,
  ) = __$$InputDataDesignImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DateTime? created,
    ObjectDataDesign objectData,
    InputFactorsPojo inputFactors,
    DivisionType divisionType,
  });

  @override
  $ObjectDataDesignCopyWith<$Res> get objectData;
  @override
  $InputFactorsPojoCopyWith<$Res> get inputFactors;
}

/// @nodoc
class __$$InputDataDesignImplCopyWithImpl<$Res>
    extends _$InputDataDesignCopyWithImpl<$Res, _$InputDataDesignImpl>
    implements _$$InputDataDesignImplCopyWith<$Res> {
  __$$InputDataDesignImplCopyWithImpl(
    _$InputDataDesignImpl _value,
    $Res Function(_$InputDataDesignImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InputDataDesign
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? created = freezed,
    Object? objectData = null,
    Object? inputFactors = null,
    Object? divisionType = null,
  }) {
    return _then(
      _$InputDataDesignImpl(
        created: freezed == created
            ? _value.created
            : created // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        objectData: null == objectData
            ? _value.objectData
            : objectData // ignore: cast_nullable_to_non_nullable
                  as ObjectDataDesign,
        inputFactors: null == inputFactors
            ? _value.inputFactors
            : inputFactors // ignore: cast_nullable_to_non_nullable
                  as InputFactorsPojo,
        divisionType: null == divisionType
            ? _value.divisionType
            : divisionType // ignore: cast_nullable_to_non_nullable
                  as DivisionType,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InputDataDesignImpl implements _InputDataDesign {
  const _$InputDataDesignImpl({
    required this.created,
    required this.objectData,
    required this.inputFactors,
    required this.divisionType,
  });

  factory _$InputDataDesignImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputDataDesignImplFromJson(json);

  // Дата и время создание КП
  @override
  final DateTime? created;
  // Данные об объекте
  @override
  final ObjectDataDesign objectData;
  @override
  final InputFactorsPojo inputFactors;
  // Тип проектной документации на выходе
  @override
  final DivisionType divisionType;

  @override
  String toString() {
    return 'InputDataDesign(created: $created, objectData: $objectData, inputFactors: $inputFactors, divisionType: $divisionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputDataDesignImpl &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.objectData, objectData) ||
                other.objectData == objectData) &&
            (identical(other.inputFactors, inputFactors) ||
                other.inputFactors == inputFactors) &&
            (identical(other.divisionType, divisionType) ||
                other.divisionType == divisionType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, created, objectData, inputFactors, divisionType);

  /// Create a copy of InputDataDesign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputDataDesignImplCopyWith<_$InputDataDesignImpl> get copyWith =>
      __$$InputDataDesignImplCopyWithImpl<_$InputDataDesignImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InputDataDesignImplToJson(this);
  }
}

abstract class _InputDataDesign implements InputDataDesign {
  const factory _InputDataDesign({
    required final DateTime? created,
    required final ObjectDataDesign objectData,
    required final InputFactorsPojo inputFactors,
    required final DivisionType divisionType,
  }) = _$InputDataDesignImpl;

  factory _InputDataDesign.fromJson(Map<String, dynamic> json) =
      _$InputDataDesignImpl.fromJson;

  // Дата и время создание КП
  @override
  DateTime? get created; // Данные об объекте
  @override
  ObjectDataDesign get objectData;
  @override
  InputFactorsPojo get inputFactors; // Тип проектной документации на выходе
  @override
  DivisionType get divisionType;

  /// Create a copy of InputDataDesign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputDataDesignImplCopyWith<_$InputDataDesignImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

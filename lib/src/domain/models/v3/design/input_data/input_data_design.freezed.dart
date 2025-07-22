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
  ObjectDataDesign get objectData =>
      throw _privateConstructorUsedError; // Коэфициент за срочность
  double get speedFactor =>
      throw _privateConstructorUsedError; // Коэфициент за высотность
  double get heightFactor =>
      throw _privateConstructorUsedError; // Коэфициент за издержки
  double get overPriceFactor =>
      throw _privateConstructorUsedError; // Коэфициент за удаленность
  double get remotingFactor =>
      throw _privateConstructorUsedError; // Коэфициент за сложность
  double get complexityFactor =>
      throw _privateConstructorUsedError; // Коэфициент для заказчика
  double get consumerFactor =>
      throw _privateConstructorUsedError; // Коэфициент нормы прибыли
  double get rateReturnFactor =>
      throw _privateConstructorUsedError; // Коэфициент площади
  double get squareFactor =>
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
    double speedFactor,
    double heightFactor,
    double overPriceFactor,
    double remotingFactor,
    double complexityFactor,
    double consumerFactor,
    double rateReturnFactor,
    double squareFactor,
    DivisionType divisionType,
  });

  $ObjectDataDesignCopyWith<$Res> get objectData;
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
    Object? speedFactor = null,
    Object? heightFactor = null,
    Object? overPriceFactor = null,
    Object? remotingFactor = null,
    Object? complexityFactor = null,
    Object? consumerFactor = null,
    Object? rateReturnFactor = null,
    Object? squareFactor = null,
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
            speedFactor: null == speedFactor
                ? _value.speedFactor
                : speedFactor // ignore: cast_nullable_to_non_nullable
                      as double,
            heightFactor: null == heightFactor
                ? _value.heightFactor
                : heightFactor // ignore: cast_nullable_to_non_nullable
                      as double,
            overPriceFactor: null == overPriceFactor
                ? _value.overPriceFactor
                : overPriceFactor // ignore: cast_nullable_to_non_nullable
                      as double,
            remotingFactor: null == remotingFactor
                ? _value.remotingFactor
                : remotingFactor // ignore: cast_nullable_to_non_nullable
                      as double,
            complexityFactor: null == complexityFactor
                ? _value.complexityFactor
                : complexityFactor // ignore: cast_nullable_to_non_nullable
                      as double,
            consumerFactor: null == consumerFactor
                ? _value.consumerFactor
                : consumerFactor // ignore: cast_nullable_to_non_nullable
                      as double,
            rateReturnFactor: null == rateReturnFactor
                ? _value.rateReturnFactor
                : rateReturnFactor // ignore: cast_nullable_to_non_nullable
                      as double,
            squareFactor: null == squareFactor
                ? _value.squareFactor
                : squareFactor // ignore: cast_nullable_to_non_nullable
                      as double,
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
    double speedFactor,
    double heightFactor,
    double overPriceFactor,
    double remotingFactor,
    double complexityFactor,
    double consumerFactor,
    double rateReturnFactor,
    double squareFactor,
    DivisionType divisionType,
  });

  @override
  $ObjectDataDesignCopyWith<$Res> get objectData;
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
    Object? speedFactor = null,
    Object? heightFactor = null,
    Object? overPriceFactor = null,
    Object? remotingFactor = null,
    Object? complexityFactor = null,
    Object? consumerFactor = null,
    Object? rateReturnFactor = null,
    Object? squareFactor = null,
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
        speedFactor: null == speedFactor
            ? _value.speedFactor
            : speedFactor // ignore: cast_nullable_to_non_nullable
                  as double,
        heightFactor: null == heightFactor
            ? _value.heightFactor
            : heightFactor // ignore: cast_nullable_to_non_nullable
                  as double,
        overPriceFactor: null == overPriceFactor
            ? _value.overPriceFactor
            : overPriceFactor // ignore: cast_nullable_to_non_nullable
                  as double,
        remotingFactor: null == remotingFactor
            ? _value.remotingFactor
            : remotingFactor // ignore: cast_nullable_to_non_nullable
                  as double,
        complexityFactor: null == complexityFactor
            ? _value.complexityFactor
            : complexityFactor // ignore: cast_nullable_to_non_nullable
                  as double,
        consumerFactor: null == consumerFactor
            ? _value.consumerFactor
            : consumerFactor // ignore: cast_nullable_to_non_nullable
                  as double,
        rateReturnFactor: null == rateReturnFactor
            ? _value.rateReturnFactor
            : rateReturnFactor // ignore: cast_nullable_to_non_nullable
                  as double,
        squareFactor: null == squareFactor
            ? _value.squareFactor
            : squareFactor // ignore: cast_nullable_to_non_nullable
                  as double,
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
    required this.speedFactor,
    required this.heightFactor,
    required this.overPriceFactor,
    required this.remotingFactor,
    required this.complexityFactor,
    required this.consumerFactor,
    required this.rateReturnFactor,
    required this.squareFactor,
    this.divisionType = DivisionType.project,
  });

  factory _$InputDataDesignImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputDataDesignImplFromJson(json);

  // Дата и время создание КП
  @override
  final DateTime? created;
  // Данные об объекте
  @override
  final ObjectDataDesign objectData;
  // Коэфициент за срочность
  @override
  final double speedFactor;
  // Коэфициент за высотность
  @override
  final double heightFactor;
  // Коэфициент за издержки
  @override
  final double overPriceFactor;
  // Коэфициент за удаленность
  @override
  final double remotingFactor;
  // Коэфициент за сложность
  @override
  final double complexityFactor;
  // Коэфициент для заказчика
  @override
  final double consumerFactor;
  // Коэфициент нормы прибыли
  @override
  final double rateReturnFactor;
  // Коэфициент площади
  @override
  final double squareFactor;
  // Тип проектной документации на выходе
  @override
  @JsonKey()
  final DivisionType divisionType;

  @override
  String toString() {
    return 'InputDataDesign(created: $created, objectData: $objectData, speedFactor: $speedFactor, heightFactor: $heightFactor, overPriceFactor: $overPriceFactor, remotingFactor: $remotingFactor, complexityFactor: $complexityFactor, consumerFactor: $consumerFactor, rateReturnFactor: $rateReturnFactor, squareFactor: $squareFactor, divisionType: $divisionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputDataDesignImpl &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.objectData, objectData) ||
                other.objectData == objectData) &&
            (identical(other.speedFactor, speedFactor) ||
                other.speedFactor == speedFactor) &&
            (identical(other.heightFactor, heightFactor) ||
                other.heightFactor == heightFactor) &&
            (identical(other.overPriceFactor, overPriceFactor) ||
                other.overPriceFactor == overPriceFactor) &&
            (identical(other.remotingFactor, remotingFactor) ||
                other.remotingFactor == remotingFactor) &&
            (identical(other.complexityFactor, complexityFactor) ||
                other.complexityFactor == complexityFactor) &&
            (identical(other.consumerFactor, consumerFactor) ||
                other.consumerFactor == consumerFactor) &&
            (identical(other.rateReturnFactor, rateReturnFactor) ||
                other.rateReturnFactor == rateReturnFactor) &&
            (identical(other.squareFactor, squareFactor) ||
                other.squareFactor == squareFactor) &&
            (identical(other.divisionType, divisionType) ||
                other.divisionType == divisionType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    created,
    objectData,
    speedFactor,
    heightFactor,
    overPriceFactor,
    remotingFactor,
    complexityFactor,
    consumerFactor,
    rateReturnFactor,
    squareFactor,
    divisionType,
  );

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
    required final double speedFactor,
    required final double heightFactor,
    required final double overPriceFactor,
    required final double remotingFactor,
    required final double complexityFactor,
    required final double consumerFactor,
    required final double rateReturnFactor,
    required final double squareFactor,
    final DivisionType divisionType,
  }) = _$InputDataDesignImpl;

  factory _InputDataDesign.fromJson(Map<String, dynamic> json) =
      _$InputDataDesignImpl.fromJson;

  // Дата и время создание КП
  @override
  DateTime? get created; // Данные об объекте
  @override
  ObjectDataDesign get objectData; // Коэфициент за срочность
  @override
  double get speedFactor; // Коэфициент за высотность
  @override
  double get heightFactor; // Коэфициент за издержки
  @override
  double get overPriceFactor; // Коэфициент за удаленность
  @override
  double get remotingFactor; // Коэфициент за сложность
  @override
  double get complexityFactor; // Коэфициент для заказчика
  @override
  double get consumerFactor; // Коэфициент нормы прибыли
  @override
  double get rateReturnFactor; // Коэфициент площади
  @override
  double get squareFactor; // Тип проектной документации на выходе
  @override
  DivisionType get divisionType;

  /// Create a copy of InputDataDesign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputDataDesignImplCopyWith<_$InputDataDesignImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

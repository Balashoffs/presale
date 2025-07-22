// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calc_division_row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CalcDivisionRow {
  // Информация о разделе
  Division get division =>
      throw _privateConstructorUsedError; // Время выполнения раздела (заполняется при калькуляции)
  double get duration =>
      throw _privateConstructorUsedError; // Коэфициент за сложность раздела
  double get complexityFactor =>
      throw _privateConstructorUsedError; // Коэфициент за объем работ
  double get bySquareFactor =>
      throw _privateConstructorUsedError; // Коэфициент за загруженность специалиста
  double get byEmployeeUsedFactor =>
      throw _privateConstructorUsedError; // Коэфициент за накладные расходы
  dynamic get overheadsValue =>
      throw _privateConstructorUsedError; // Коэфициент за маржу
  dynamic get marginValue => throw _privateConstructorUsedError;

  /// Create a copy of CalcDivisionRow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalcDivisionRowCopyWith<CalcDivisionRow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalcDivisionRowCopyWith<$Res> {
  factory $CalcDivisionRowCopyWith(
    CalcDivisionRow value,
    $Res Function(CalcDivisionRow) then,
  ) = _$CalcDivisionRowCopyWithImpl<$Res, CalcDivisionRow>;
  @useResult
  $Res call({
    Division division,
    double duration,
    double complexityFactor,
    double bySquareFactor,
    double byEmployeeUsedFactor,
    dynamic overheadsValue,
    dynamic marginValue,
  });

  $DivisionCopyWith<$Res> get division;
}

/// @nodoc
class _$CalcDivisionRowCopyWithImpl<$Res, $Val extends CalcDivisionRow>
    implements $CalcDivisionRowCopyWith<$Res> {
  _$CalcDivisionRowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalcDivisionRow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? division = null,
    Object? duration = null,
    Object? complexityFactor = null,
    Object? bySquareFactor = null,
    Object? byEmployeeUsedFactor = null,
    Object? overheadsValue = freezed,
    Object? marginValue = freezed,
  }) {
    return _then(
      _value.copyWith(
            division: null == division
                ? _value.division
                : division // ignore: cast_nullable_to_non_nullable
                      as Division,
            duration: null == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                      as double,
            complexityFactor: null == complexityFactor
                ? _value.complexityFactor
                : complexityFactor // ignore: cast_nullable_to_non_nullable
                      as double,
            bySquareFactor: null == bySquareFactor
                ? _value.bySquareFactor
                : bySquareFactor // ignore: cast_nullable_to_non_nullable
                      as double,
            byEmployeeUsedFactor: null == byEmployeeUsedFactor
                ? _value.byEmployeeUsedFactor
                : byEmployeeUsedFactor // ignore: cast_nullable_to_non_nullable
                      as double,
            overheadsValue: freezed == overheadsValue
                ? _value.overheadsValue
                : overheadsValue // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            marginValue: freezed == marginValue
                ? _value.marginValue
                : marginValue // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }

  /// Create a copy of CalcDivisionRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DivisionCopyWith<$Res> get division {
    return $DivisionCopyWith<$Res>(_value.division, (value) {
      return _then(_value.copyWith(division: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CalcDivisonRowImplCopyWith<$Res>
    implements $CalcDivisionRowCopyWith<$Res> {
  factory _$$CalcDivisonRowImplCopyWith(
    _$CalcDivisonRowImpl value,
    $Res Function(_$CalcDivisonRowImpl) then,
  ) = __$$CalcDivisonRowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Division division,
    double duration,
    double complexityFactor,
    double bySquareFactor,
    double byEmployeeUsedFactor,
    dynamic overheadsValue,
    dynamic marginValue,
  });

  @override
  $DivisionCopyWith<$Res> get division;
}

/// @nodoc
class __$$CalcDivisonRowImplCopyWithImpl<$Res>
    extends _$CalcDivisionRowCopyWithImpl<$Res, _$CalcDivisonRowImpl>
    implements _$$CalcDivisonRowImplCopyWith<$Res> {
  __$$CalcDivisonRowImplCopyWithImpl(
    _$CalcDivisonRowImpl _value,
    $Res Function(_$CalcDivisonRowImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CalcDivisionRow
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? division = null,
    Object? duration = null,
    Object? complexityFactor = null,
    Object? bySquareFactor = null,
    Object? byEmployeeUsedFactor = null,
    Object? overheadsValue = freezed,
    Object? marginValue = freezed,
  }) {
    return _then(
      _$CalcDivisonRowImpl(
        division: null == division
            ? _value.division
            : division // ignore: cast_nullable_to_non_nullable
                  as Division,
        duration: null == duration
            ? _value.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as double,
        complexityFactor: null == complexityFactor
            ? _value.complexityFactor
            : complexityFactor // ignore: cast_nullable_to_non_nullable
                  as double,
        bySquareFactor: null == bySquareFactor
            ? _value.bySquareFactor
            : bySquareFactor // ignore: cast_nullable_to_non_nullable
                  as double,
        byEmployeeUsedFactor: null == byEmployeeUsedFactor
            ? _value.byEmployeeUsedFactor
            : byEmployeeUsedFactor // ignore: cast_nullable_to_non_nullable
                  as double,
        overheadsValue: freezed == overheadsValue
            ? _value.overheadsValue!
            : overheadsValue,
        marginValue: freezed == marginValue ? _value.marginValue! : marginValue,
      ),
    );
  }
}

/// @nodoc

class _$CalcDivisonRowImpl implements _CalcDivisonRow {
  const _$CalcDivisonRowImpl({
    required this.division,
    this.duration = 0.0,
    this.complexityFactor = 1.0,
    this.bySquareFactor = 1.0,
    this.byEmployeeUsedFactor = 1.0,
    this.overheadsValue = 0.0,
    this.marginValue = 0.0,
  });

  // Информация о разделе
  @override
  final Division division;
  // Время выполнения раздела (заполняется при калькуляции)
  @override
  @JsonKey()
  final double duration;
  // Коэфициент за сложность раздела
  @override
  @JsonKey()
  final double complexityFactor;
  // Коэфициент за объем работ
  @override
  @JsonKey()
  final double bySquareFactor;
  // Коэфициент за загруженность специалиста
  @override
  @JsonKey()
  final double byEmployeeUsedFactor;
  // Коэфициент за накладные расходы
  @override
  @JsonKey()
  final dynamic overheadsValue;
  // Коэфициент за маржу
  @override
  @JsonKey()
  final dynamic marginValue;

  @override
  String toString() {
    return 'CalcDivisionRow(division: $division, duration: $duration, complexityFactor: $complexityFactor, bySquareFactor: $bySquareFactor, byEmployeeUsedFactor: $byEmployeeUsedFactor, overheadsValue: $overheadsValue, marginValue: $marginValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalcDivisonRowImpl &&
            (identical(other.division, division) ||
                other.division == division) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.complexityFactor, complexityFactor) ||
                other.complexityFactor == complexityFactor) &&
            (identical(other.bySquareFactor, bySquareFactor) ||
                other.bySquareFactor == bySquareFactor) &&
            (identical(other.byEmployeeUsedFactor, byEmployeeUsedFactor) ||
                other.byEmployeeUsedFactor == byEmployeeUsedFactor) &&
            const DeepCollectionEquality().equals(
              other.overheadsValue,
              overheadsValue,
            ) &&
            const DeepCollectionEquality().equals(
              other.marginValue,
              marginValue,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    division,
    duration,
    complexityFactor,
    bySquareFactor,
    byEmployeeUsedFactor,
    const DeepCollectionEquality().hash(overheadsValue),
    const DeepCollectionEquality().hash(marginValue),
  );

  /// Create a copy of CalcDivisionRow
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalcDivisonRowImplCopyWith<_$CalcDivisonRowImpl> get copyWith =>
      __$$CalcDivisonRowImplCopyWithImpl<_$CalcDivisonRowImpl>(
        this,
        _$identity,
      );
}

abstract class _CalcDivisonRow implements CalcDivisionRow {
  const factory _CalcDivisonRow({
    required final Division division,
    final double duration,
    final double complexityFactor,
    final double bySquareFactor,
    final double byEmployeeUsedFactor,
    final dynamic overheadsValue,
    final dynamic marginValue,
  }) = _$CalcDivisonRowImpl;

  // Информация о разделе
  @override
  Division get division; // Время выполнения раздела (заполняется при калькуляции)
  @override
  double get duration; // Коэфициент за сложность раздела
  @override
  double get complexityFactor; // Коэфициент за объем работ
  @override
  double get bySquareFactor; // Коэфициент за загруженность специалиста
  @override
  double get byEmployeeUsedFactor; // Коэфициент за накладные расходы
  @override
  dynamic get overheadsValue; // Коэфициент за маржу
  @override
  dynamic get marginValue;

  /// Create a copy of CalcDivisionRow
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalcDivisonRowImplCopyWith<_$CalcDivisonRowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

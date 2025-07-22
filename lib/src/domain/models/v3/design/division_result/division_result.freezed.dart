// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DivisionResult _$DivisionResultFromJson(Map<String, dynamic> json) {
  return _DivisionResult.fromJson(json);
}

/// @nodoc
mixin _$DivisionResult {
  // Данные о специалисте
  Division get division =>
      throw _privateConstructorUsedError; // Чистая стоимость за раздел
  double get clearDivisionRate =>
      throw _privateConstructorUsedError; // Стоимость за раздел вместе с расходами и маржой
  double get fullDivisionRate =>
      throw _privateConstructorUsedError; // Полная стоимость с НДС
  double get fullDivisionRateWithTax => throw _privateConstructorUsedError;

  /// Serializes this DivisionResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DivisionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DivisionResultCopyWith<DivisionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionResultCopyWith<$Res> {
  factory $DivisionResultCopyWith(
    DivisionResult value,
    $Res Function(DivisionResult) then,
  ) = _$DivisionResultCopyWithImpl<$Res, DivisionResult>;
  @useResult
  $Res call({
    Division division,
    double clearDivisionRate,
    double fullDivisionRate,
    double fullDivisionRateWithTax,
  });

  $DivisionCopyWith<$Res> get division;
}

/// @nodoc
class _$DivisionResultCopyWithImpl<$Res, $Val extends DivisionResult>
    implements $DivisionResultCopyWith<$Res> {
  _$DivisionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DivisionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? division = null,
    Object? clearDivisionRate = null,
    Object? fullDivisionRate = null,
    Object? fullDivisionRateWithTax = null,
  }) {
    return _then(
      _value.copyWith(
            division: null == division
                ? _value.division
                : division // ignore: cast_nullable_to_non_nullable
                      as Division,
            clearDivisionRate: null == clearDivisionRate
                ? _value.clearDivisionRate
                : clearDivisionRate // ignore: cast_nullable_to_non_nullable
                      as double,
            fullDivisionRate: null == fullDivisionRate
                ? _value.fullDivisionRate
                : fullDivisionRate // ignore: cast_nullable_to_non_nullable
                      as double,
            fullDivisionRateWithTax: null == fullDivisionRateWithTax
                ? _value.fullDivisionRateWithTax
                : fullDivisionRateWithTax // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }

  /// Create a copy of DivisionResult
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
abstract class _$$DivisionResultImplCopyWith<$Res>
    implements $DivisionResultCopyWith<$Res> {
  factory _$$DivisionResultImplCopyWith(
    _$DivisionResultImpl value,
    $Res Function(_$DivisionResultImpl) then,
  ) = __$$DivisionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Division division,
    double clearDivisionRate,
    double fullDivisionRate,
    double fullDivisionRateWithTax,
  });

  @override
  $DivisionCopyWith<$Res> get division;
}

/// @nodoc
class __$$DivisionResultImplCopyWithImpl<$Res>
    extends _$DivisionResultCopyWithImpl<$Res, _$DivisionResultImpl>
    implements _$$DivisionResultImplCopyWith<$Res> {
  __$$DivisionResultImplCopyWithImpl(
    _$DivisionResultImpl _value,
    $Res Function(_$DivisionResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DivisionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? division = null,
    Object? clearDivisionRate = null,
    Object? fullDivisionRate = null,
    Object? fullDivisionRateWithTax = null,
  }) {
    return _then(
      _$DivisionResultImpl(
        division: null == division
            ? _value.division
            : division // ignore: cast_nullable_to_non_nullable
                  as Division,
        clearDivisionRate: null == clearDivisionRate
            ? _value.clearDivisionRate
            : clearDivisionRate // ignore: cast_nullable_to_non_nullable
                  as double,
        fullDivisionRate: null == fullDivisionRate
            ? _value.fullDivisionRate
            : fullDivisionRate // ignore: cast_nullable_to_non_nullable
                  as double,
        fullDivisionRateWithTax: null == fullDivisionRateWithTax
            ? _value.fullDivisionRateWithTax
            : fullDivisionRateWithTax // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionResultImpl implements _DivisionResult {
  const _$DivisionResultImpl({
    required this.division,
    required this.clearDivisionRate,
    required this.fullDivisionRate,
    required this.fullDivisionRateWithTax,
  });

  factory _$DivisionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DivisionResultImplFromJson(json);

  // Данные о специалисте
  @override
  final Division division;
  // Чистая стоимость за раздел
  @override
  final double clearDivisionRate;
  // Стоимость за раздел вместе с расходами и маржой
  @override
  final double fullDivisionRate;
  // Полная стоимость с НДС
  @override
  final double fullDivisionRateWithTax;

  @override
  String toString() {
    return 'DivisionResult(division: $division, clearDivisionRate: $clearDivisionRate, fullDivisionRate: $fullDivisionRate, fullDivisionRateWithTax: $fullDivisionRateWithTax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionResultImpl &&
            (identical(other.division, division) ||
                other.division == division) &&
            (identical(other.clearDivisionRate, clearDivisionRate) ||
                other.clearDivisionRate == clearDivisionRate) &&
            (identical(other.fullDivisionRate, fullDivisionRate) ||
                other.fullDivisionRate == fullDivisionRate) &&
            (identical(
                  other.fullDivisionRateWithTax,
                  fullDivisionRateWithTax,
                ) ||
                other.fullDivisionRateWithTax == fullDivisionRateWithTax));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    division,
    clearDivisionRate,
    fullDivisionRate,
    fullDivisionRateWithTax,
  );

  /// Create a copy of DivisionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisionResultImplCopyWith<_$DivisionResultImpl> get copyWith =>
      __$$DivisionResultImplCopyWithImpl<_$DivisionResultImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DivisionResultImplToJson(this);
  }
}

abstract class _DivisionResult implements DivisionResult {
  const factory _DivisionResult({
    required final Division division,
    required final double clearDivisionRate,
    required final double fullDivisionRate,
    required final double fullDivisionRateWithTax,
  }) = _$DivisionResultImpl;

  factory _DivisionResult.fromJson(Map<String, dynamic> json) =
      _$DivisionResultImpl.fromJson;

  // Данные о специалисте
  @override
  Division get division; // Чистая стоимость за раздел
  @override
  double get clearDivisionRate; // Стоимость за раздел вместе с расходами и маржой
  @override
  double get fullDivisionRate; // Полная стоимость с НДС
  @override
  double get fullDivisionRateWithTax;

  /// Create a copy of DivisionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DivisionResultImplCopyWith<_$DivisionResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stadiya_cost_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StadiyaCostModel {
  String get name => throw _privateConstructorUsedError;
  String get factorRange => throw _privateConstructorUsedError;
  double get factor => throw _privateConstructorUsedError;
  double get moneyValue => throw _privateConstructorUsedError;

  /// Create a copy of StadiyaCostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StadiyaCostModelCopyWith<StadiyaCostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StadiyaCostModelCopyWith<$Res> {
  factory $StadiyaCostModelCopyWith(
    StadiyaCostModel value,
    $Res Function(StadiyaCostModel) then,
  ) = _$StadiyaCostModelCopyWithImpl<$Res, StadiyaCostModel>;
  @useResult
  $Res call({
    String name,
    String factorRange,
    double factor,
    double moneyValue,
  });
}

/// @nodoc
class _$StadiyaCostModelCopyWithImpl<$Res, $Val extends StadiyaCostModel>
    implements $StadiyaCostModelCopyWith<$Res> {
  _$StadiyaCostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StadiyaCostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? factorRange = null,
    Object? factor = null,
    Object? moneyValue = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            factorRange: null == factorRange
                ? _value.factorRange
                : factorRange // ignore: cast_nullable_to_non_nullable
                      as String,
            factor: null == factor
                ? _value.factor
                : factor // ignore: cast_nullable_to_non_nullable
                      as double,
            moneyValue: null == moneyValue
                ? _value.moneyValue
                : moneyValue // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StadiyaCostModelImplCopyWith<$Res>
    implements $StadiyaCostModelCopyWith<$Res> {
  factory _$$StadiyaCostModelImplCopyWith(
    _$StadiyaCostModelImpl value,
    $Res Function(_$StadiyaCostModelImpl) then,
  ) = __$$StadiyaCostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String name,
    String factorRange,
    double factor,
    double moneyValue,
  });
}

/// @nodoc
class __$$StadiyaCostModelImplCopyWithImpl<$Res>
    extends _$StadiyaCostModelCopyWithImpl<$Res, _$StadiyaCostModelImpl>
    implements _$$StadiyaCostModelImplCopyWith<$Res> {
  __$$StadiyaCostModelImplCopyWithImpl(
    _$StadiyaCostModelImpl _value,
    $Res Function(_$StadiyaCostModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StadiyaCostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? factorRange = null,
    Object? factor = null,
    Object? moneyValue = null,
  }) {
    return _then(
      _$StadiyaCostModelImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        factorRange: null == factorRange
            ? _value.factorRange
            : factorRange // ignore: cast_nullable_to_non_nullable
                  as String,
        factor: null == factor
            ? _value.factor
            : factor // ignore: cast_nullable_to_non_nullable
                  as double,
        moneyValue: null == moneyValue
            ? _value.moneyValue
            : moneyValue // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$StadiyaCostModelImpl implements _StadiyaCostModel {
  const _$StadiyaCostModelImpl({
    required this.name,
    required this.factorRange,
    required this.factor,
    this.moneyValue = 0.0,
  });

  @override
  final String name;
  @override
  final String factorRange;
  @override
  final double factor;
  @override
  @JsonKey()
  final double moneyValue;

  @override
  String toString() {
    return 'StadiyaCostModel(name: $name, factorRange: $factorRange, factor: $factor, moneyValue: $moneyValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StadiyaCostModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.factorRange, factorRange) ||
                other.factorRange == factorRange) &&
            (identical(other.factor, factor) || other.factor == factor) &&
            (identical(other.moneyValue, moneyValue) ||
                other.moneyValue == moneyValue));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, factorRange, factor, moneyValue);

  /// Create a copy of StadiyaCostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StadiyaCostModelImplCopyWith<_$StadiyaCostModelImpl> get copyWith =>
      __$$StadiyaCostModelImplCopyWithImpl<_$StadiyaCostModelImpl>(
        this,
        _$identity,
      );
}

abstract class _StadiyaCostModel implements StadiyaCostModel {
  const factory _StadiyaCostModel({
    required final String name,
    required final String factorRange,
    required final double factor,
    final double moneyValue,
  }) = _$StadiyaCostModelImpl;

  @override
  String get name;
  @override
  String get factorRange;
  @override
  double get factor;
  @override
  double get moneyValue;

  /// Create a copy of StadiyaCostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StadiyaCostModelImplCopyWith<_$StadiyaCostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

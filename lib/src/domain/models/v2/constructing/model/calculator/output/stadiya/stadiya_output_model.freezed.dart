// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stadiya_output_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StadiyaOutputModel {
  String get element => throw _privateConstructorUsedError;
  double get cost => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

  /// Create a copy of StadiyaOutputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StadiyaOutputModelCopyWith<StadiyaOutputModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StadiyaOutputModelCopyWith<$Res> {
  factory $StadiyaOutputModelCopyWith(
    StadiyaOutputModel value,
    $Res Function(StadiyaOutputModel) then,
  ) = _$StadiyaOutputModelCopyWithImpl<$Res, StadiyaOutputModel>;
  @useResult
  $Res call({String element, double cost, double quantity, double total});
}

/// @nodoc
class _$StadiyaOutputModelCopyWithImpl<$Res, $Val extends StadiyaOutputModel>
    implements $StadiyaOutputModelCopyWith<$Res> {
  _$StadiyaOutputModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StadiyaOutputModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? element = null,
    Object? cost = null,
    Object? quantity = null,
    Object? total = null,
  }) {
    return _then(
      _value.copyWith(
            element: null == element
                ? _value.element
                : element // ignore: cast_nullable_to_non_nullable
                      as String,
            cost: null == cost
                ? _value.cost
                : cost // ignore: cast_nullable_to_non_nullable
                      as double,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as double,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StadiyaOutputModelImplCopyWith<$Res>
    implements $StadiyaOutputModelCopyWith<$Res> {
  factory _$$StadiyaOutputModelImplCopyWith(
    _$StadiyaOutputModelImpl value,
    $Res Function(_$StadiyaOutputModelImpl) then,
  ) = __$$StadiyaOutputModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String element, double cost, double quantity, double total});
}

/// @nodoc
class __$$StadiyaOutputModelImplCopyWithImpl<$Res>
    extends _$StadiyaOutputModelCopyWithImpl<$Res, _$StadiyaOutputModelImpl>
    implements _$$StadiyaOutputModelImplCopyWith<$Res> {
  __$$StadiyaOutputModelImplCopyWithImpl(
    _$StadiyaOutputModelImpl _value,
    $Res Function(_$StadiyaOutputModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StadiyaOutputModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? element = null,
    Object? cost = null,
    Object? quantity = null,
    Object? total = null,
  }) {
    return _then(
      _$StadiyaOutputModelImpl(
        element: null == element
            ? _value.element
            : element // ignore: cast_nullable_to_non_nullable
                  as String,
        cost: null == cost
            ? _value.cost
            : cost // ignore: cast_nullable_to_non_nullable
                  as double,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as double,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$StadiyaOutputModelImpl implements _StadiyaOutputModel {
  const _$StadiyaOutputModelImpl({
    required this.element,
    required this.cost,
    this.quantity = 1.0,
    this.total = 0.0,
  });

  @override
  final String element;
  @override
  final double cost;
  @override
  @JsonKey()
  final double quantity;
  @override
  @JsonKey()
  final double total;

  @override
  String toString() {
    return 'StadiyaOutputModel(element: $element, cost: $cost, quantity: $quantity, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StadiyaOutputModelImpl &&
            (identical(other.element, element) || other.element == element) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, element, cost, quantity, total);

  /// Create a copy of StadiyaOutputModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StadiyaOutputModelImplCopyWith<_$StadiyaOutputModelImpl> get copyWith =>
      __$$StadiyaOutputModelImplCopyWithImpl<_$StadiyaOutputModelImpl>(
        this,
        _$identity,
      );
}

abstract class _StadiyaOutputModel implements StadiyaOutputModel {
  const factory _StadiyaOutputModel({
    required final String element,
    required final double cost,
    final double quantity,
    final double total,
  }) = _$StadiyaOutputModelImpl;

  @override
  String get element;
  @override
  double get cost;
  @override
  double get quantity;
  @override
  double get total;

  /// Create a copy of StadiyaOutputModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StadiyaOutputModelImplCopyWith<_$StadiyaOutputModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

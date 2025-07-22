// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_cost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SectionCost {
  String get sectionName => throw _privateConstructorUsedError;
  double get factor => throw _privateConstructorUsedError;
  String get factorRange => throw _privateConstructorUsedError;
  SectionCost? get parent => throw _privateConstructorUsedError;

  /// Create a copy of SectionCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionCostCopyWith<SectionCost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionCostCopyWith<$Res> {
  factory $SectionCostCopyWith(
    SectionCost value,
    $Res Function(SectionCost) then,
  ) = _$SectionCostCopyWithImpl<$Res, SectionCost>;
  @useResult
  $Res call({
    String sectionName,
    double factor,
    String factorRange,
    SectionCost? parent,
  });

  $SectionCostCopyWith<$Res>? get parent;
}

/// @nodoc
class _$SectionCostCopyWithImpl<$Res, $Val extends SectionCost>
    implements $SectionCostCopyWith<$Res> {
  _$SectionCostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SectionCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionName = null,
    Object? factor = null,
    Object? factorRange = null,
    Object? parent = freezed,
  }) {
    return _then(
      _value.copyWith(
            sectionName: null == sectionName
                ? _value.sectionName
                : sectionName // ignore: cast_nullable_to_non_nullable
                      as String,
            factor: null == factor
                ? _value.factor
                : factor // ignore: cast_nullable_to_non_nullable
                      as double,
            factorRange: null == factorRange
                ? _value.factorRange
                : factorRange // ignore: cast_nullable_to_non_nullable
                      as String,
            parent: freezed == parent
                ? _value.parent
                : parent // ignore: cast_nullable_to_non_nullable
                      as SectionCost?,
          )
          as $Val,
    );
  }

  /// Create a copy of SectionCost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectionCostCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $SectionCostCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SectionCostImplCopyWith<$Res>
    implements $SectionCostCopyWith<$Res> {
  factory _$$SectionCostImplCopyWith(
    _$SectionCostImpl value,
    $Res Function(_$SectionCostImpl) then,
  ) = __$$SectionCostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String sectionName,
    double factor,
    String factorRange,
    SectionCost? parent,
  });

  @override
  $SectionCostCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$SectionCostImplCopyWithImpl<$Res>
    extends _$SectionCostCopyWithImpl<$Res, _$SectionCostImpl>
    implements _$$SectionCostImplCopyWith<$Res> {
  __$$SectionCostImplCopyWithImpl(
    _$SectionCostImpl _value,
    $Res Function(_$SectionCostImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SectionCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionName = null,
    Object? factor = null,
    Object? factorRange = null,
    Object? parent = freezed,
  }) {
    return _then(
      _$SectionCostImpl(
        sectionName: null == sectionName
            ? _value.sectionName
            : sectionName // ignore: cast_nullable_to_non_nullable
                  as String,
        factor: null == factor
            ? _value.factor
            : factor // ignore: cast_nullable_to_non_nullable
                  as double,
        factorRange: null == factorRange
            ? _value.factorRange
            : factorRange // ignore: cast_nullable_to_non_nullable
                  as String,
        parent: freezed == parent
            ? _value.parent
            : parent // ignore: cast_nullable_to_non_nullable
                  as SectionCost?,
      ),
    );
  }
}

/// @nodoc

class _$SectionCostImpl implements _SectionCost {
  const _$SectionCostImpl({
    required this.sectionName,
    required this.factor,
    required this.factorRange,
    this.parent,
  });

  @override
  final String sectionName;
  @override
  final double factor;
  @override
  final String factorRange;
  @override
  final SectionCost? parent;

  @override
  String toString() {
    return 'SectionCost(sectionName: $sectionName, factor: $factor, factorRange: $factorRange, parent: $parent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionCostImpl &&
            (identical(other.sectionName, sectionName) ||
                other.sectionName == sectionName) &&
            (identical(other.factor, factor) || other.factor == factor) &&
            (identical(other.factorRange, factorRange) ||
                other.factorRange == factorRange) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sectionName, factor, factorRange, parent);

  /// Create a copy of SectionCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionCostImplCopyWith<_$SectionCostImpl> get copyWith =>
      __$$SectionCostImplCopyWithImpl<_$SectionCostImpl>(this, _$identity);
}

abstract class _SectionCost implements SectionCost {
  const factory _SectionCost({
    required final String sectionName,
    required final double factor,
    required final String factorRange,
    final SectionCost? parent,
  }) = _$SectionCostImpl;

  @override
  String get sectionName;
  @override
  double get factor;
  @override
  String get factorRange;
  @override
  SectionCost? get parent;

  /// Create a copy of SectionCost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionCostImplCopyWith<_$SectionCostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

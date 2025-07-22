// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cost_struct_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CostStructView {
  int get pos => throw _privateConstructorUsedError;
  double get factor => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of CostStructView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CostStructViewCopyWith<CostStructView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostStructViewCopyWith<$Res> {
  factory $CostStructViewCopyWith(
    CostStructView value,
    $Res Function(CostStructView) then,
  ) = _$CostStructViewCopyWithImpl<$Res, CostStructView>;
  @useResult
  $Res call({int pos, double factor, String name});
}

/// @nodoc
class _$CostStructViewCopyWithImpl<$Res, $Val extends CostStructView>
    implements $CostStructViewCopyWith<$Res> {
  _$CostStructViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CostStructView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pos = null, Object? factor = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            pos: null == pos
                ? _value.pos
                : pos // ignore: cast_nullable_to_non_nullable
                      as int,
            factor: null == factor
                ? _value.factor
                : factor // ignore: cast_nullable_to_non_nullable
                      as double,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CostStructViewImplCopyWith<$Res>
    implements $CostStructViewCopyWith<$Res> {
  factory _$$CostStructViewImplCopyWith(
    _$CostStructViewImpl value,
    $Res Function(_$CostStructViewImpl) then,
  ) = __$$CostStructViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pos, double factor, String name});
}

/// @nodoc
class __$$CostStructViewImplCopyWithImpl<$Res>
    extends _$CostStructViewCopyWithImpl<$Res, _$CostStructViewImpl>
    implements _$$CostStructViewImplCopyWith<$Res> {
  __$$CostStructViewImplCopyWithImpl(
    _$CostStructViewImpl _value,
    $Res Function(_$CostStructViewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CostStructView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? pos = null, Object? factor = null, Object? name = null}) {
    return _then(
      _$CostStructViewImpl(
        pos: null == pos
            ? _value.pos
            : pos // ignore: cast_nullable_to_non_nullable
                  as int,
        factor: null == factor
            ? _value.factor
            : factor // ignore: cast_nullable_to_non_nullable
                  as double,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CostStructViewImpl implements _CostStructView {
  const _$CostStructViewImpl({
    required this.pos,
    required this.factor,
    required this.name,
  });

  @override
  final int pos;
  @override
  final double factor;
  @override
  final String name;

  @override
  String toString() {
    return 'CostStructView(pos: $pos, factor: $factor, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CostStructViewImpl &&
            (identical(other.pos, pos) || other.pos == pos) &&
            (identical(other.factor, factor) || other.factor == factor) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pos, factor, name);

  /// Create a copy of CostStructView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CostStructViewImplCopyWith<_$CostStructViewImpl> get copyWith =>
      __$$CostStructViewImplCopyWithImpl<_$CostStructViewImpl>(
        this,
        _$identity,
      );
}

abstract class _CostStructView implements CostStructView {
  const factory _CostStructView({
    required final int pos,
    required final double factor,
    required final String name,
  }) = _$CostStructViewImpl;

  @override
  int get pos;
  @override
  double get factor;
  @override
  String get name;

  /// Create a copy of CostStructView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CostStructViewImplCopyWith<_$CostStructViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

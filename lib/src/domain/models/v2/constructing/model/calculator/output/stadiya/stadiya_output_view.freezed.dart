// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stadiya_output_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StadiyaOutputView {
  String get element => throw _privateConstructorUsedError;
  String get clarification => throw _privateConstructorUsedError;
  String get costRange => throw _privateConstructorUsedError;
  String get um => throw _privateConstructorUsedError;
  double get costFactor => throw _privateConstructorUsedError;

  /// Create a copy of StadiyaOutputView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StadiyaOutputViewCopyWith<StadiyaOutputView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StadiyaOutputViewCopyWith<$Res> {
  factory $StadiyaOutputViewCopyWith(
    StadiyaOutputView value,
    $Res Function(StadiyaOutputView) then,
  ) = _$StadiyaOutputViewCopyWithImpl<$Res, StadiyaOutputView>;
  @useResult
  $Res call({
    String element,
    String clarification,
    String costRange,
    String um,
    double costFactor,
  });
}

/// @nodoc
class _$StadiyaOutputViewCopyWithImpl<$Res, $Val extends StadiyaOutputView>
    implements $StadiyaOutputViewCopyWith<$Res> {
  _$StadiyaOutputViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StadiyaOutputView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? element = null,
    Object? clarification = null,
    Object? costRange = null,
    Object? um = null,
    Object? costFactor = null,
  }) {
    return _then(
      _value.copyWith(
            element: null == element
                ? _value.element
                : element // ignore: cast_nullable_to_non_nullable
                      as String,
            clarification: null == clarification
                ? _value.clarification
                : clarification // ignore: cast_nullable_to_non_nullable
                      as String,
            costRange: null == costRange
                ? _value.costRange
                : costRange // ignore: cast_nullable_to_non_nullable
                      as String,
            um: null == um
                ? _value.um
                : um // ignore: cast_nullable_to_non_nullable
                      as String,
            costFactor: null == costFactor
                ? _value.costFactor
                : costFactor // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StadiyaOutputViewImplCopyWith<$Res>
    implements $StadiyaOutputViewCopyWith<$Res> {
  factory _$$StadiyaOutputViewImplCopyWith(
    _$StadiyaOutputViewImpl value,
    $Res Function(_$StadiyaOutputViewImpl) then,
  ) = __$$StadiyaOutputViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String element,
    String clarification,
    String costRange,
    String um,
    double costFactor,
  });
}

/// @nodoc
class __$$StadiyaOutputViewImplCopyWithImpl<$Res>
    extends _$StadiyaOutputViewCopyWithImpl<$Res, _$StadiyaOutputViewImpl>
    implements _$$StadiyaOutputViewImplCopyWith<$Res> {
  __$$StadiyaOutputViewImplCopyWithImpl(
    _$StadiyaOutputViewImpl _value,
    $Res Function(_$StadiyaOutputViewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StadiyaOutputView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? element = null,
    Object? clarification = null,
    Object? costRange = null,
    Object? um = null,
    Object? costFactor = null,
  }) {
    return _then(
      _$StadiyaOutputViewImpl(
        element: null == element
            ? _value.element
            : element // ignore: cast_nullable_to_non_nullable
                  as String,
        clarification: null == clarification
            ? _value.clarification
            : clarification // ignore: cast_nullable_to_non_nullable
                  as String,
        costRange: null == costRange
            ? _value.costRange
            : costRange // ignore: cast_nullable_to_non_nullable
                  as String,
        um: null == um
            ? _value.um
            : um // ignore: cast_nullable_to_non_nullable
                  as String,
        costFactor: null == costFactor
            ? _value.costFactor
            : costFactor // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc

class _$StadiyaOutputViewImpl implements _StadiyaOutputView {
  const _$StadiyaOutputViewImpl({
    required this.element,
    required this.clarification,
    required this.costRange,
    required this.um,
    this.costFactor = 1000.0,
  });

  @override
  final String element;
  @override
  final String clarification;
  @override
  final String costRange;
  @override
  final String um;
  @override
  @JsonKey()
  final double costFactor;

  @override
  String toString() {
    return 'StadiyaOutputView(element: $element, clarification: $clarification, costRange: $costRange, um: $um, costFactor: $costFactor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StadiyaOutputViewImpl &&
            (identical(other.element, element) || other.element == element) &&
            (identical(other.clarification, clarification) ||
                other.clarification == clarification) &&
            (identical(other.costRange, costRange) ||
                other.costRange == costRange) &&
            (identical(other.um, um) || other.um == um) &&
            (identical(other.costFactor, costFactor) ||
                other.costFactor == costFactor));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    element,
    clarification,
    costRange,
    um,
    costFactor,
  );

  /// Create a copy of StadiyaOutputView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StadiyaOutputViewImplCopyWith<_$StadiyaOutputViewImpl> get copyWith =>
      __$$StadiyaOutputViewImplCopyWithImpl<_$StadiyaOutputViewImpl>(
        this,
        _$identity,
      );
}

abstract class _StadiyaOutputView implements StadiyaOutputView {
  const factory _StadiyaOutputView({
    required final String element,
    required final String clarification,
    required final String costRange,
    required final String um,
    final double costFactor,
  }) = _$StadiyaOutputViewImpl;

  @override
  String get element;
  @override
  String get clarification;
  @override
  String get costRange;
  @override
  String get um;
  @override
  double get costFactor;

  /// Create a copy of StadiyaOutputView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StadiyaOutputViewImplCopyWith<_$StadiyaOutputViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  int get id => throw _privateConstructorUsedError;
  String get divisionShortName => throw _privateConstructorUsedError;
  String get divisionName => throw _privateConstructorUsedError;
  double get divisionSummaryWithTax => throw _privateConstructorUsedError;
  double get divisionSummaryWithMargin => throw _privateConstructorUsedError;

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
    int id,
    String divisionShortName,
    String divisionName,
    double divisionSummaryWithTax,
    double divisionSummaryWithMargin,
  });
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
    Object? id = null,
    Object? divisionShortName = null,
    Object? divisionName = null,
    Object? divisionSummaryWithTax = null,
    Object? divisionSummaryWithMargin = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            divisionShortName: null == divisionShortName
                ? _value.divisionShortName
                : divisionShortName // ignore: cast_nullable_to_non_nullable
                      as String,
            divisionName: null == divisionName
                ? _value.divisionName
                : divisionName // ignore: cast_nullable_to_non_nullable
                      as String,
            divisionSummaryWithTax: null == divisionSummaryWithTax
                ? _value.divisionSummaryWithTax
                : divisionSummaryWithTax // ignore: cast_nullable_to_non_nullable
                      as double,
            divisionSummaryWithMargin: null == divisionSummaryWithMargin
                ? _value.divisionSummaryWithMargin
                : divisionSummaryWithMargin // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
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
    int id,
    String divisionShortName,
    String divisionName,
    double divisionSummaryWithTax,
    double divisionSummaryWithMargin,
  });
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
    Object? id = null,
    Object? divisionShortName = null,
    Object? divisionName = null,
    Object? divisionSummaryWithTax = null,
    Object? divisionSummaryWithMargin = null,
  }) {
    return _then(
      _$DivisionResultImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        divisionShortName: null == divisionShortName
            ? _value.divisionShortName
            : divisionShortName // ignore: cast_nullable_to_non_nullable
                  as String,
        divisionName: null == divisionName
            ? _value.divisionName
            : divisionName // ignore: cast_nullable_to_non_nullable
                  as String,
        divisionSummaryWithTax: null == divisionSummaryWithTax
            ? _value.divisionSummaryWithTax
            : divisionSummaryWithTax // ignore: cast_nullable_to_non_nullable
                  as double,
        divisionSummaryWithMargin: null == divisionSummaryWithMargin
            ? _value.divisionSummaryWithMargin
            : divisionSummaryWithMargin // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionResultImpl implements _DivisionResult {
  const _$DivisionResultImpl({
    required this.id,
    required this.divisionShortName,
    required this.divisionName,
    required this.divisionSummaryWithTax,
    required this.divisionSummaryWithMargin,
  });

  factory _$DivisionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DivisionResultImplFromJson(json);

  @override
  final int id;
  @override
  final String divisionShortName;
  @override
  final String divisionName;
  @override
  final double divisionSummaryWithTax;
  @override
  final double divisionSummaryWithMargin;

  @override
  String toString() {
    return 'DivisionResult(id: $id, divisionShortName: $divisionShortName, divisionName: $divisionName, divisionSummaryWithTax: $divisionSummaryWithTax, divisionSummaryWithMargin: $divisionSummaryWithMargin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.divisionShortName, divisionShortName) ||
                other.divisionShortName == divisionShortName) &&
            (identical(other.divisionName, divisionName) ||
                other.divisionName == divisionName) &&
            (identical(other.divisionSummaryWithTax, divisionSummaryWithTax) ||
                other.divisionSummaryWithTax == divisionSummaryWithTax) &&
            (identical(
                  other.divisionSummaryWithMargin,
                  divisionSummaryWithMargin,
                ) ||
                other.divisionSummaryWithMargin == divisionSummaryWithMargin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    divisionShortName,
    divisionName,
    divisionSummaryWithTax,
    divisionSummaryWithMargin,
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
    required final int id,
    required final String divisionShortName,
    required final String divisionName,
    required final double divisionSummaryWithTax,
    required final double divisionSummaryWithMargin,
  }) = _$DivisionResultImpl;

  factory _DivisionResult.fromJson(Map<String, dynamic> json) =
      _$DivisionResultImpl.fromJson;

  @override
  int get id;
  @override
  String get divisionShortName;
  @override
  String get divisionName;
  @override
  double get divisionSummaryWithTax;
  @override
  double get divisionSummaryWithMargin;

  /// Create a copy of DivisionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DivisionResultImplCopyWith<_$DivisionResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

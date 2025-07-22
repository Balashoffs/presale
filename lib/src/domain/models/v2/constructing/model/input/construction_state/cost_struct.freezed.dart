// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cost_struct.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CostStruct _$CostStructFromJson(Map<String, dynamic> json) {
  return _CostStruct.fromJson(json);
}

/// @nodoc
mixin _$CostStruct {
  double get jobFactor => throw _privateConstructorUsedError;
  String get jobName => throw _privateConstructorUsedError;

  /// Serializes this CostStruct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CostStruct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CostStructCopyWith<CostStruct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CostStructCopyWith<$Res> {
  factory $CostStructCopyWith(
    CostStruct value,
    $Res Function(CostStruct) then,
  ) = _$CostStructCopyWithImpl<$Res, CostStruct>;
  @useResult
  $Res call({double jobFactor, String jobName});
}

/// @nodoc
class _$CostStructCopyWithImpl<$Res, $Val extends CostStruct>
    implements $CostStructCopyWith<$Res> {
  _$CostStructCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CostStruct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? jobFactor = null, Object? jobName = null}) {
    return _then(
      _value.copyWith(
            jobFactor: null == jobFactor
                ? _value.jobFactor
                : jobFactor // ignore: cast_nullable_to_non_nullable
                      as double,
            jobName: null == jobName
                ? _value.jobName
                : jobName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CostStructImplCopyWith<$Res>
    implements $CostStructCopyWith<$Res> {
  factory _$$CostStructImplCopyWith(
    _$CostStructImpl value,
    $Res Function(_$CostStructImpl) then,
  ) = __$$CostStructImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double jobFactor, String jobName});
}

/// @nodoc
class __$$CostStructImplCopyWithImpl<$Res>
    extends _$CostStructCopyWithImpl<$Res, _$CostStructImpl>
    implements _$$CostStructImplCopyWith<$Res> {
  __$$CostStructImplCopyWithImpl(
    _$CostStructImpl _value,
    $Res Function(_$CostStructImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CostStruct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? jobFactor = null, Object? jobName = null}) {
    return _then(
      _$CostStructImpl(
        jobFactor: null == jobFactor
            ? _value.jobFactor
            : jobFactor // ignore: cast_nullable_to_non_nullable
                  as double,
        jobName: null == jobName
            ? _value.jobName
            : jobName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CostStructImpl implements _CostStruct {
  const _$CostStructImpl({required this.jobFactor, required this.jobName});

  factory _$CostStructImpl.fromJson(Map<String, dynamic> json) =>
      _$$CostStructImplFromJson(json);

  @override
  final double jobFactor;
  @override
  final String jobName;

  @override
  String toString() {
    return 'CostStruct(jobFactor: $jobFactor, jobName: $jobName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CostStructImpl &&
            (identical(other.jobFactor, jobFactor) ||
                other.jobFactor == jobFactor) &&
            (identical(other.jobName, jobName) || other.jobName == jobName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jobFactor, jobName);

  /// Create a copy of CostStruct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CostStructImplCopyWith<_$CostStructImpl> get copyWith =>
      __$$CostStructImplCopyWithImpl<_$CostStructImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CostStructImplToJson(this);
  }
}

abstract class _CostStruct implements CostStruct {
  const factory _CostStruct({
    required final double jobFactor,
    required final String jobName,
  }) = _$CostStructImpl;

  factory _CostStruct.fromJson(Map<String, dynamic> json) =
      _$CostStructImpl.fromJson;

  @override
  double get jobFactor;
  @override
  String get jobName;

  /// Create a copy of CostStruct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CostStructImplCopyWith<_$CostStructImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

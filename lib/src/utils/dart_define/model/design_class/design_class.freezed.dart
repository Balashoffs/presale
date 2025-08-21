// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'design_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DesignClass _$DesignClassFromJson(Map<String, dynamic> json) {
  return _DesignClass.fromJson(json);
}

/// @nodoc
mixin _$DesignClass {
  String get resources => throw _privateConstructorUsedError;
  @JsonKey(name: 'job_divisions')
  String get workDivisions => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_divisions')
  String get projectDivisions => throw _privateConstructorUsedError;
  String? get sign => throw _privateConstructorUsedError;

  /// Serializes this DesignClass to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DesignClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DesignClassCopyWith<DesignClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignClassCopyWith<$Res> {
  factory $DesignClassCopyWith(
    DesignClass value,
    $Res Function(DesignClass) then,
  ) = _$DesignClassCopyWithImpl<$Res, DesignClass>;
  @useResult
  $Res call({
    String resources,
    @JsonKey(name: 'job_divisions') String workDivisions,
    @JsonKey(name: 'project_divisions') String projectDivisions,
    String? sign,
  });
}

/// @nodoc
class _$DesignClassCopyWithImpl<$Res, $Val extends DesignClass>
    implements $DesignClassCopyWith<$Res> {
  _$DesignClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DesignClass
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resources = null,
    Object? workDivisions = null,
    Object? projectDivisions = null,
    Object? sign = freezed,
  }) {
    return _then(
      _value.copyWith(
            resources: null == resources
                ? _value.resources
                : resources // ignore: cast_nullable_to_non_nullable
                      as String,
            workDivisions: null == workDivisions
                ? _value.workDivisions
                : workDivisions // ignore: cast_nullable_to_non_nullable
                      as String,
            projectDivisions: null == projectDivisions
                ? _value.projectDivisions
                : projectDivisions // ignore: cast_nullable_to_non_nullable
                      as String,
            sign: freezed == sign
                ? _value.sign
                : sign // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DesignClassImplCopyWith<$Res>
    implements $DesignClassCopyWith<$Res> {
  factory _$$DesignClassImplCopyWith(
    _$DesignClassImpl value,
    $Res Function(_$DesignClassImpl) then,
  ) = __$$DesignClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String resources,
    @JsonKey(name: 'job_divisions') String workDivisions,
    @JsonKey(name: 'project_divisions') String projectDivisions,
    String? sign,
  });
}

/// @nodoc
class __$$DesignClassImplCopyWithImpl<$Res>
    extends _$DesignClassCopyWithImpl<$Res, _$DesignClassImpl>
    implements _$$DesignClassImplCopyWith<$Res> {
  __$$DesignClassImplCopyWithImpl(
    _$DesignClassImpl _value,
    $Res Function(_$DesignClassImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DesignClass
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resources = null,
    Object? workDivisions = null,
    Object? projectDivisions = null,
    Object? sign = freezed,
  }) {
    return _then(
      _$DesignClassImpl(
        resources: null == resources
            ? _value.resources
            : resources // ignore: cast_nullable_to_non_nullable
                  as String,
        workDivisions: null == workDivisions
            ? _value.workDivisions
            : workDivisions // ignore: cast_nullable_to_non_nullable
                  as String,
        projectDivisions: null == projectDivisions
            ? _value.projectDivisions
            : projectDivisions // ignore: cast_nullable_to_non_nullable
                  as String,
        sign: freezed == sign
            ? _value.sign
            : sign // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DesignClassImpl implements _DesignClass {
  const _$DesignClassImpl({
    required this.resources,
    @JsonKey(name: 'job_divisions') required this.workDivisions,
    @JsonKey(name: 'project_divisions') required this.projectDivisions,
    this.sign,
  });

  factory _$DesignClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$DesignClassImplFromJson(json);

  @override
  final String resources;
  @override
  @JsonKey(name: 'job_divisions')
  final String workDivisions;
  @override
  @JsonKey(name: 'project_divisions')
  final String projectDivisions;
  @override
  final String? sign;

  @override
  String toString() {
    return 'DesignClass(resources: $resources, workDivisions: $workDivisions, projectDivisions: $projectDivisions, sign: $sign)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesignClassImpl &&
            (identical(other.resources, resources) ||
                other.resources == resources) &&
            (identical(other.workDivisions, workDivisions) ||
                other.workDivisions == workDivisions) &&
            (identical(other.projectDivisions, projectDivisions) ||
                other.projectDivisions == projectDivisions) &&
            (identical(other.sign, sign) || other.sign == sign));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    resources,
    workDivisions,
    projectDivisions,
    sign,
  );

  /// Create a copy of DesignClass
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DesignClassImplCopyWith<_$DesignClassImpl> get copyWith =>
      __$$DesignClassImplCopyWithImpl<_$DesignClassImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DesignClassImplToJson(this);
  }
}

abstract class _DesignClass implements DesignClass {
  const factory _DesignClass({
    required final String resources,
    @JsonKey(name: 'job_divisions') required final String workDivisions,
    @JsonKey(name: 'project_divisions') required final String projectDivisions,
    final String? sign,
  }) = _$DesignClassImpl;

  factory _DesignClass.fromJson(Map<String, dynamic> json) =
      _$DesignClassImpl.fromJson;

  @override
  String get resources;
  @override
  @JsonKey(name: 'job_divisions')
  String get workDivisions;
  @override
  @JsonKey(name: 'project_divisions')
  String get projectDivisions;
  @override
  String? get sign;

  /// Create a copy of DesignClass
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DesignClassImplCopyWith<_$DesignClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

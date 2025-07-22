// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Section _$SectionFromJson(Map<String, dynamic> json) {
  return _Section.fromJson(json);
}

/// @nodoc
mixin _$Section {
  ServiceStage get stage => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get shortName => throw _privateConstructorUsedError;
  String get employeeString => throw _privateConstructorUsedError;
  Employee? get employee => throw _privateConstructorUsedError;

  /// Serializes this Section to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionCopyWith<Section> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionCopyWith<$Res> {
  factory $SectionCopyWith(Section value, $Res Function(Section) then) =
      _$SectionCopyWithImpl<$Res, Section>;
  @useResult
  $Res call({
    ServiceStage stage,
    String name,
    String? shortName,
    String employeeString,
    Employee? employee,
  });

  $EmployeeCopyWith<$Res>? get employee;
}

/// @nodoc
class _$SectionCopyWithImpl<$Res, $Val extends Section>
    implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
    Object? name = null,
    Object? shortName = freezed,
    Object? employeeString = null,
    Object? employee = freezed,
  }) {
    return _then(
      _value.copyWith(
            stage: null == stage
                ? _value.stage
                : stage // ignore: cast_nullable_to_non_nullable
                      as ServiceStage,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            shortName: freezed == shortName
                ? _value.shortName
                : shortName // ignore: cast_nullable_to_non_nullable
                      as String?,
            employeeString: null == employeeString
                ? _value.employeeString
                : employeeString // ignore: cast_nullable_to_non_nullable
                      as String,
            employee: freezed == employee
                ? _value.employee
                : employee // ignore: cast_nullable_to_non_nullable
                      as Employee?,
          )
          as $Val,
    );
  }

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeCopyWith<$Res>? get employee {
    if (_value.employee == null) {
      return null;
    }

    return $EmployeeCopyWith<$Res>(_value.employee!, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SectionImplCopyWith<$Res> implements $SectionCopyWith<$Res> {
  factory _$$SectionImplCopyWith(
    _$SectionImpl value,
    $Res Function(_$SectionImpl) then,
  ) = __$$SectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ServiceStage stage,
    String name,
    String? shortName,
    String employeeString,
    Employee? employee,
  });

  @override
  $EmployeeCopyWith<$Res>? get employee;
}

/// @nodoc
class __$$SectionImplCopyWithImpl<$Res>
    extends _$SectionCopyWithImpl<$Res, _$SectionImpl>
    implements _$$SectionImplCopyWith<$Res> {
  __$$SectionImplCopyWithImpl(
    _$SectionImpl _value,
    $Res Function(_$SectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
    Object? name = null,
    Object? shortName = freezed,
    Object? employeeString = null,
    Object? employee = freezed,
  }) {
    return _then(
      _$SectionImpl(
        stage: null == stage
            ? _value.stage
            : stage // ignore: cast_nullable_to_non_nullable
                  as ServiceStage,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        shortName: freezed == shortName
            ? _value.shortName
            : shortName // ignore: cast_nullable_to_non_nullable
                  as String?,
        employeeString: null == employeeString
            ? _value.employeeString
            : employeeString // ignore: cast_nullable_to_non_nullable
                  as String,
        employee: freezed == employee
            ? _value.employee
            : employee // ignore: cast_nullable_to_non_nullable
                  as Employee?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionImpl extends _Section {
  const _$SectionImpl({
    required this.stage,
    required this.name,
    this.shortName,
    required this.employeeString,
    this.employee,
  }) : super._();

  factory _$SectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionImplFromJson(json);

  @override
  final ServiceStage stage;
  @override
  final String name;
  @override
  final String? shortName;
  @override
  final String employeeString;
  @override
  final Employee? employee;

  @override
  String toString() {
    return 'Section(stage: $stage, name: $name, shortName: $shortName, employeeString: $employeeString, employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionImpl &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.employeeString, employeeString) ||
                other.employeeString == employeeString) &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    stage,
    name,
    shortName,
    employeeString,
    employee,
  );

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionImplCopyWith<_$SectionImpl> get copyWith =>
      __$$SectionImplCopyWithImpl<_$SectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionImplToJson(this);
  }
}

abstract class _Section extends Section {
  const factory _Section({
    required final ServiceStage stage,
    required final String name,
    final String? shortName,
    required final String employeeString,
    final Employee? employee,
  }) = _$SectionImpl;
  const _Section._() : super._();

  factory _Section.fromJson(Map<String, dynamic> json) = _$SectionImpl.fromJson;

  @override
  ServiceStage get stage;
  @override
  String get name;
  @override
  String? get shortName;
  @override
  String get employeeString;
  @override
  Employee? get employee;

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionImplCopyWith<_$SectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

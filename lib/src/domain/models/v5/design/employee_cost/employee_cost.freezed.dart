// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_cost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EmployeeCost _$EmployeeCostFromJson(Map<String, dynamic> json) {
  return _EmployeeCost.fromJson(json);
}

/// @nodoc
mixin _$EmployeeCost {
  // Порядковый номер, смотри в файле
  int get id => throw _privateConstructorUsedError; // Название специальности
  String get name =>
      throw _privateConstructorUsedError; // Стоимость работы специалиста за 1 день
  double get workingRatePerDay =>
      throw _privateConstructorUsedError; // Коэфициент корректировки
  double get correctionFactor => throw _privateConstructorUsedError;

  /// Serializes this EmployeeCost to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EmployeeCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeeCostCopyWith<EmployeeCost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeCostCopyWith<$Res> {
  factory $EmployeeCostCopyWith(
    EmployeeCost value,
    $Res Function(EmployeeCost) then,
  ) = _$EmployeeCostCopyWithImpl<$Res, EmployeeCost>;
  @useResult
  $Res call({
    int id,
    String name,
    double workingRatePerDay,
    double correctionFactor,
  });
}

/// @nodoc
class _$EmployeeCostCopyWithImpl<$Res, $Val extends EmployeeCost>
    implements $EmployeeCostCopyWith<$Res> {
  _$EmployeeCostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeeCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? workingRatePerDay = null,
    Object? correctionFactor = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            workingRatePerDay: null == workingRatePerDay
                ? _value.workingRatePerDay
                : workingRatePerDay // ignore: cast_nullable_to_non_nullable
                      as double,
            correctionFactor: null == correctionFactor
                ? _value.correctionFactor
                : correctionFactor // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EmployeeCostImplCopyWith<$Res>
    implements $EmployeeCostCopyWith<$Res> {
  factory _$$EmployeeCostImplCopyWith(
    _$EmployeeCostImpl value,
    $Res Function(_$EmployeeCostImpl) then,
  ) = __$$EmployeeCostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    double workingRatePerDay,
    double correctionFactor,
  });
}

/// @nodoc
class __$$EmployeeCostImplCopyWithImpl<$Res>
    extends _$EmployeeCostCopyWithImpl<$Res, _$EmployeeCostImpl>
    implements _$$EmployeeCostImplCopyWith<$Res> {
  __$$EmployeeCostImplCopyWithImpl(
    _$EmployeeCostImpl _value,
    $Res Function(_$EmployeeCostImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EmployeeCost
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? workingRatePerDay = null,
    Object? correctionFactor = null,
  }) {
    return _then(
      _$EmployeeCostImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        workingRatePerDay: null == workingRatePerDay
            ? _value.workingRatePerDay
            : workingRatePerDay // ignore: cast_nullable_to_non_nullable
                  as double,
        correctionFactor: null == correctionFactor
            ? _value.correctionFactor
            : correctionFactor // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeeCostImpl extends _EmployeeCost {
  const _$EmployeeCostImpl({
    required this.id,
    required this.name,
    required this.workingRatePerDay,
    this.correctionFactor = 1.0,
  }) : super._();

  factory _$EmployeeCostImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeeCostImplFromJson(json);

  // Порядковый номер, смотри в файле
  @override
  final int id;
  // Название специальности
  @override
  final String name;
  // Стоимость работы специалиста за 1 день
  @override
  final double workingRatePerDay;
  // Коэфициент корректировки
  @override
  @JsonKey()
  final double correctionFactor;

  @override
  String toString() {
    return 'EmployeeCost(id: $id, name: $name, workingRatePerDay: $workingRatePerDay, correctionFactor: $correctionFactor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeCostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.workingRatePerDay, workingRatePerDay) ||
                other.workingRatePerDay == workingRatePerDay) &&
            (identical(other.correctionFactor, correctionFactor) ||
                other.correctionFactor == correctionFactor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, workingRatePerDay, correctionFactor);

  /// Create a copy of EmployeeCost
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeCostImplCopyWith<_$EmployeeCostImpl> get copyWith =>
      __$$EmployeeCostImplCopyWithImpl<_$EmployeeCostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeeCostImplToJson(this);
  }
}

abstract class _EmployeeCost extends EmployeeCost {
  const factory _EmployeeCost({
    required final int id,
    required final String name,
    required final double workingRatePerDay,
    final double correctionFactor,
  }) = _$EmployeeCostImpl;
  const _EmployeeCost._() : super._();

  factory _EmployeeCost.fromJson(Map<String, dynamic> json) =
      _$EmployeeCostImpl.fromJson;

  // Порядковый номер, смотри в файле
  @override
  int get id; // Название специальности
  @override
  String get name; // Стоимость работы специалиста за 1 день
  @override
  double get workingRatePerDay; // Коэфициент корректировки
  @override
  double get correctionFactor;

  /// Create a copy of EmployeeCost
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeeCostImplCopyWith<_$EmployeeCostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

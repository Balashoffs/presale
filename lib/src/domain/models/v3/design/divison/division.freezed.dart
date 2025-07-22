// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Division _$DivisionFromJson(Map<String, dynamic> json) {
  return _Division.fromJson(json);
}

/// @nodoc
mixin _$Division {
  // Виды проектирования - Испольнительная, Рабочая, Обе
  DivisionType get type =>
      throw _privateConstructorUsedError; // Полное имя раздела
  String get name => throw _privateConstructorUsedError; // Аббвеатура раздела
  String get shortName =>
      throw _privateConstructorUsedError; // Порядковый номер
  int get id => throw _privateConstructorUsedError; // Данные о специалисте
  EmployeeCost get employee => throw _privateConstructorUsedError;

  /// Serializes this Division to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DivisionCopyWith<Division> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionCopyWith<$Res> {
  factory $DivisionCopyWith(Division value, $Res Function(Division) then) =
      _$DivisionCopyWithImpl<$Res, Division>;
  @useResult
  $Res call({
    DivisionType type,
    String name,
    String shortName,
    int id,
    EmployeeCost employee,
  });

  $EmployeeCostCopyWith<$Res> get employee;
}

/// @nodoc
class _$DivisionCopyWithImpl<$Res, $Val extends Division>
    implements $DivisionCopyWith<$Res> {
  _$DivisionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? shortName = null,
    Object? id = null,
    Object? employee = null,
  }) {
    return _then(
      _value.copyWith(
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as DivisionType,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            shortName: null == shortName
                ? _value.shortName
                : shortName // ignore: cast_nullable_to_non_nullable
                      as String,
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            employee: null == employee
                ? _value.employee
                : employee // ignore: cast_nullable_to_non_nullable
                      as EmployeeCost,
          )
          as $Val,
    );
  }

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeCostCopyWith<$Res> get employee {
    return $EmployeeCostCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DivisionImplCopyWith<$Res>
    implements $DivisionCopyWith<$Res> {
  factory _$$DivisionImplCopyWith(
    _$DivisionImpl value,
    $Res Function(_$DivisionImpl) then,
  ) = __$$DivisionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    DivisionType type,
    String name,
    String shortName,
    int id,
    EmployeeCost employee,
  });

  @override
  $EmployeeCostCopyWith<$Res> get employee;
}

/// @nodoc
class __$$DivisionImplCopyWithImpl<$Res>
    extends _$DivisionCopyWithImpl<$Res, _$DivisionImpl>
    implements _$$DivisionImplCopyWith<$Res> {
  __$$DivisionImplCopyWithImpl(
    _$DivisionImpl _value,
    $Res Function(_$DivisionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? shortName = null,
    Object? id = null,
    Object? employee = null,
  }) {
    return _then(
      _$DivisionImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as DivisionType,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        shortName: null == shortName
            ? _value.shortName
            : shortName // ignore: cast_nullable_to_non_nullable
                  as String,
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        employee: null == employee
            ? _value.employee
            : employee // ignore: cast_nullable_to_non_nullable
                  as EmployeeCost,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionImpl implements _Division {
  const _$DivisionImpl({
    this.type = DivisionType.both,
    required this.name,
    required this.shortName,
    required this.id,
    required this.employee,
  });

  factory _$DivisionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DivisionImplFromJson(json);

  // Виды проектирования - Испольнительная, Рабочая, Обе
  @override
  @JsonKey()
  final DivisionType type;
  // Полное имя раздела
  @override
  final String name;
  // Аббвеатура раздела
  @override
  final String shortName;
  // Порядковый номер
  @override
  final int id;
  // Данные о специалисте
  @override
  final EmployeeCost employee;

  @override
  String toString() {
    return 'Division(type: $type, name: $name, shortName: $shortName, id: $id, employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, name, shortName, id, employee);

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisionImplCopyWith<_$DivisionImpl> get copyWith =>
      __$$DivisionImplCopyWithImpl<_$DivisionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DivisionImplToJson(this);
  }
}

abstract class _Division implements Division {
  const factory _Division({
    final DivisionType type,
    required final String name,
    required final String shortName,
    required final int id,
    required final EmployeeCost employee,
  }) = _$DivisionImpl;

  factory _Division.fromJson(Map<String, dynamic> json) =
      _$DivisionImpl.fromJson;

  // Виды проектирования - Испольнительная, Рабочая, Обе
  @override
  DivisionType get type; // Полное имя раздела
  @override
  String get name; // Аббвеатура раздела
  @override
  String get shortName; // Порядковый номер
  @override
  int get id; // Данные о специалисте
  @override
  EmployeeCost get employee;

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DivisionImplCopyWith<_$DivisionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

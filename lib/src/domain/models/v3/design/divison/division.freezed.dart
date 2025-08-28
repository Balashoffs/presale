// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Division {

// Виды проектирования - Испольнительная, Рабочая, Обе
 DivisionType? get type;// Полное имя раздела
 String get name;// Аббвеатура раздела
 String get shortName;// Порядковый номер
 int get id;// Данные о специалисте
 EmployeeCost get employee;
/// Create a copy of Division
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivisionCopyWith<Division> get copyWith => _$DivisionCopyWithImpl<Division>(this as Division, _$identity);

  /// Serializes this Division to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Division&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.id, id) || other.id == id)&&(identical(other.employee, employee) || other.employee == employee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,shortName,id,employee);

@override
String toString() {
  return 'Division(type: $type, name: $name, shortName: $shortName, id: $id, employee: $employee)';
}


}

/// @nodoc
abstract mixin class $DivisionCopyWith<$Res>  {
  factory $DivisionCopyWith(Division value, $Res Function(Division) _then) = _$DivisionCopyWithImpl;
@useResult
$Res call({
 DivisionType? type, String name, String shortName, int id, EmployeeCost employee
});


$EmployeeCostCopyWith<$Res> get employee;

}
/// @nodoc
class _$DivisionCopyWithImpl<$Res>
    implements $DivisionCopyWith<$Res> {
  _$DivisionCopyWithImpl(this._self, this._then);

  final Division _self;
  final $Res Function(Division) _then;

/// Create a copy of Division
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? name = null,Object? shortName = null,Object? id = null,Object? employee = null,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DivisionType?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,shortName: null == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as EmployeeCost,
  ));
}
/// Create a copy of Division
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeCostCopyWith<$Res> get employee {
  
  return $EmployeeCostCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}


/// Adds pattern-matching-related methods to [Division].
extension DivisionPatterns on Division {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Division value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Division() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Division value)  $default,){
final _that = this;
switch (_that) {
case _Division():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Division value)?  $default,){
final _that = this;
switch (_that) {
case _Division() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DivisionType? type,  String name,  String shortName,  int id,  EmployeeCost employee)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Division() when $default != null:
return $default(_that.type,_that.name,_that.shortName,_that.id,_that.employee);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DivisionType? type,  String name,  String shortName,  int id,  EmployeeCost employee)  $default,) {final _that = this;
switch (_that) {
case _Division():
return $default(_that.type,_that.name,_that.shortName,_that.id,_that.employee);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DivisionType? type,  String name,  String shortName,  int id,  EmployeeCost employee)?  $default,) {final _that = this;
switch (_that) {
case _Division() when $default != null:
return $default(_that.type,_that.name,_that.shortName,_that.id,_that.employee);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Division implements Division {
  const _Division({this.type, required this.name, required this.shortName, required this.id, required this.employee});
  factory _Division.fromJson(Map<String, dynamic> json) => _$DivisionFromJson(json);

// Виды проектирования - Испольнительная, Рабочая, Обе
@override final  DivisionType? type;
// Полное имя раздела
@override final  String name;
// Аббвеатура раздела
@override final  String shortName;
// Порядковый номер
@override final  int id;
// Данные о специалисте
@override final  EmployeeCost employee;

/// Create a copy of Division
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DivisionCopyWith<_Division> get copyWith => __$DivisionCopyWithImpl<_Division>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DivisionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Division&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.id, id) || other.id == id)&&(identical(other.employee, employee) || other.employee == employee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,name,shortName,id,employee);

@override
String toString() {
  return 'Division(type: $type, name: $name, shortName: $shortName, id: $id, employee: $employee)';
}


}

/// @nodoc
abstract mixin class _$DivisionCopyWith<$Res> implements $DivisionCopyWith<$Res> {
  factory _$DivisionCopyWith(_Division value, $Res Function(_Division) _then) = __$DivisionCopyWithImpl;
@override @useResult
$Res call({
 DivisionType? type, String name, String shortName, int id, EmployeeCost employee
});


@override $EmployeeCostCopyWith<$Res> get employee;

}
/// @nodoc
class __$DivisionCopyWithImpl<$Res>
    implements _$DivisionCopyWith<$Res> {
  __$DivisionCopyWithImpl(this._self, this._then);

  final _Division _self;
  final $Res Function(_Division) _then;

/// Create a copy of Division
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? name = null,Object? shortName = null,Object? id = null,Object? employee = null,}) {
  return _then(_Division(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DivisionType?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,shortName: null == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,employee: null == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as EmployeeCost,
  ));
}

/// Create a copy of Division
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeCostCopyWith<$Res> get employee {
  
  return $EmployeeCostCopyWith<$Res>(_self.employee, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}

// dart format on

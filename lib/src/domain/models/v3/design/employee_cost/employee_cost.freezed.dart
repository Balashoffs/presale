// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_cost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeeCost {

// Порядковый номер, смотри в файле
 int get id;// Название специальности
 String get name;// Стоимость работы специалиста за 1 день
 double get workingRatePerDay;// Коэфициент корректировки
 double get correctionFactor;
/// Create a copy of EmployeeCost
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeCostCopyWith<EmployeeCost> get copyWith => _$EmployeeCostCopyWithImpl<EmployeeCost>(this as EmployeeCost, _$identity);

  /// Serializes this EmployeeCost to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeCost&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.workingRatePerDay, workingRatePerDay) || other.workingRatePerDay == workingRatePerDay)&&(identical(other.correctionFactor, correctionFactor) || other.correctionFactor == correctionFactor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,workingRatePerDay,correctionFactor);

@override
String toString() {
  return 'EmployeeCost(id: $id, name: $name, workingRatePerDay: $workingRatePerDay, correctionFactor: $correctionFactor)';
}


}

/// @nodoc
abstract mixin class $EmployeeCostCopyWith<$Res>  {
  factory $EmployeeCostCopyWith(EmployeeCost value, $Res Function(EmployeeCost) _then) = _$EmployeeCostCopyWithImpl;
@useResult
$Res call({
 int id, String name, double workingRatePerDay, double correctionFactor
});




}
/// @nodoc
class _$EmployeeCostCopyWithImpl<$Res>
    implements $EmployeeCostCopyWith<$Res> {
  _$EmployeeCostCopyWithImpl(this._self, this._then);

  final EmployeeCost _self;
  final $Res Function(EmployeeCost) _then;

/// Create a copy of EmployeeCost
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? workingRatePerDay = null,Object? correctionFactor = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,workingRatePerDay: null == workingRatePerDay ? _self.workingRatePerDay : workingRatePerDay // ignore: cast_nullable_to_non_nullable
as double,correctionFactor: null == correctionFactor ? _self.correctionFactor : correctionFactor // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [EmployeeCost].
extension EmployeeCostPatterns on EmployeeCost {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeCost value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeCost() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeCost value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeCost():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeCost value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeCost() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  double workingRatePerDay,  double correctionFactor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeCost() when $default != null:
return $default(_that.id,_that.name,_that.workingRatePerDay,_that.correctionFactor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  double workingRatePerDay,  double correctionFactor)  $default,) {final _that = this;
switch (_that) {
case _EmployeeCost():
return $default(_that.id,_that.name,_that.workingRatePerDay,_that.correctionFactor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  double workingRatePerDay,  double correctionFactor)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeCost() when $default != null:
return $default(_that.id,_that.name,_that.workingRatePerDay,_that.correctionFactor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeCost extends EmployeeCost {
  const _EmployeeCost({required this.id, required this.name, required this.workingRatePerDay, this.correctionFactor = 1.0}): super._();
  factory _EmployeeCost.fromJson(Map<String, dynamic> json) => _$EmployeeCostFromJson(json);

// Порядковый номер, смотри в файле
@override final  int id;
// Название специальности
@override final  String name;
// Стоимость работы специалиста за 1 день
@override final  double workingRatePerDay;
// Коэфициент корректировки
@override@JsonKey() final  double correctionFactor;

/// Create a copy of EmployeeCost
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeCostCopyWith<_EmployeeCost> get copyWith => __$EmployeeCostCopyWithImpl<_EmployeeCost>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeCostToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeCost&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.workingRatePerDay, workingRatePerDay) || other.workingRatePerDay == workingRatePerDay)&&(identical(other.correctionFactor, correctionFactor) || other.correctionFactor == correctionFactor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,workingRatePerDay,correctionFactor);

@override
String toString() {
  return 'EmployeeCost(id: $id, name: $name, workingRatePerDay: $workingRatePerDay, correctionFactor: $correctionFactor)';
}


}

/// @nodoc
abstract mixin class _$EmployeeCostCopyWith<$Res> implements $EmployeeCostCopyWith<$Res> {
  factory _$EmployeeCostCopyWith(_EmployeeCost value, $Res Function(_EmployeeCost) _then) = __$EmployeeCostCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, double workingRatePerDay, double correctionFactor
});




}
/// @nodoc
class __$EmployeeCostCopyWithImpl<$Res>
    implements _$EmployeeCostCopyWith<$Res> {
  __$EmployeeCostCopyWithImpl(this._self, this._then);

  final _EmployeeCost _self;
  final $Res Function(_EmployeeCost) _then;

/// Create a copy of EmployeeCost
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? workingRatePerDay = null,Object? correctionFactor = null,}) {
  return _then(_EmployeeCost(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,workingRatePerDay: null == workingRatePerDay ? _self.workingRatePerDay : workingRatePerDay // ignore: cast_nullable_to_non_nullable
as double,correctionFactor: null == correctionFactor ? _self.correctionFactor : correctionFactor // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on

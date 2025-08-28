// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Section {

 ServiceStage get stage; String get name; String? get shortName; String get employeeString; Employee? get employee;
/// Create a copy of Section
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionCopyWith<Section> get copyWith => _$SectionCopyWithImpl<Section>(this as Section, _$identity);

  /// Serializes this Section to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Section&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.employeeString, employeeString) || other.employeeString == employeeString)&&(identical(other.employee, employee) || other.employee == employee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stage,name,shortName,employeeString,employee);

@override
String toString() {
  return 'Section(stage: $stage, name: $name, shortName: $shortName, employeeString: $employeeString, employee: $employee)';
}


}

/// @nodoc
abstract mixin class $SectionCopyWith<$Res>  {
  factory $SectionCopyWith(Section value, $Res Function(Section) _then) = _$SectionCopyWithImpl;
@useResult
$Res call({
 ServiceStage stage, String name, String? shortName, String employeeString, Employee? employee
});


$EmployeeCopyWith<$Res>? get employee;

}
/// @nodoc
class _$SectionCopyWithImpl<$Res>
    implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(this._self, this._then);

  final Section _self;
  final $Res Function(Section) _then;

/// Create a copy of Section
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stage = null,Object? name = null,Object? shortName = freezed,Object? employeeString = null,Object? employee = freezed,}) {
  return _then(_self.copyWith(
stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as ServiceStage,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,employeeString: null == employeeString ? _self.employeeString : employeeString // ignore: cast_nullable_to_non_nullable
as String,employee: freezed == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as Employee?,
  ));
}
/// Create a copy of Section
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeCopyWith<$Res>? get employee {
    if (_self.employee == null) {
    return null;
  }

  return $EmployeeCopyWith<$Res>(_self.employee!, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}


/// Adds pattern-matching-related methods to [Section].
extension SectionPatterns on Section {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Section value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Section() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Section value)  $default,){
final _that = this;
switch (_that) {
case _Section():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Section value)?  $default,){
final _that = this;
switch (_that) {
case _Section() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ServiceStage stage,  String name,  String? shortName,  String employeeString,  Employee? employee)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Section() when $default != null:
return $default(_that.stage,_that.name,_that.shortName,_that.employeeString,_that.employee);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ServiceStage stage,  String name,  String? shortName,  String employeeString,  Employee? employee)  $default,) {final _that = this;
switch (_that) {
case _Section():
return $default(_that.stage,_that.name,_that.shortName,_that.employeeString,_that.employee);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ServiceStage stage,  String name,  String? shortName,  String employeeString,  Employee? employee)?  $default,) {final _that = this;
switch (_that) {
case _Section() when $default != null:
return $default(_that.stage,_that.name,_that.shortName,_that.employeeString,_that.employee);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Section extends Section {
  const _Section({required this.stage, required this.name, this.shortName, required this.employeeString, this.employee}): super._();
  factory _Section.fromJson(Map<String, dynamic> json) => _$SectionFromJson(json);

@override final  ServiceStage stage;
@override final  String name;
@override final  String? shortName;
@override final  String employeeString;
@override final  Employee? employee;

/// Create a copy of Section
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionCopyWith<_Section> get copyWith => __$SectionCopyWithImpl<_Section>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SectionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Section&&(identical(other.stage, stage) || other.stage == stage)&&(identical(other.name, name) || other.name == name)&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.employeeString, employeeString) || other.employeeString == employeeString)&&(identical(other.employee, employee) || other.employee == employee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stage,name,shortName,employeeString,employee);

@override
String toString() {
  return 'Section(stage: $stage, name: $name, shortName: $shortName, employeeString: $employeeString, employee: $employee)';
}


}

/// @nodoc
abstract mixin class _$SectionCopyWith<$Res> implements $SectionCopyWith<$Res> {
  factory _$SectionCopyWith(_Section value, $Res Function(_Section) _then) = __$SectionCopyWithImpl;
@override @useResult
$Res call({
 ServiceStage stage, String name, String? shortName, String employeeString, Employee? employee
});


@override $EmployeeCopyWith<$Res>? get employee;

}
/// @nodoc
class __$SectionCopyWithImpl<$Res>
    implements _$SectionCopyWith<$Res> {
  __$SectionCopyWithImpl(this._self, this._then);

  final _Section _self;
  final $Res Function(_Section) _then;

/// Create a copy of Section
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stage = null,Object? name = null,Object? shortName = freezed,Object? employeeString = null,Object? employee = freezed,}) {
  return _then(_Section(
stage: null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as ServiceStage,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,shortName: freezed == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String?,employeeString: null == employeeString ? _self.employeeString : employeeString // ignore: cast_nullable_to_non_nullable
as String,employee: freezed == employee ? _self.employee : employee // ignore: cast_nullable_to_non_nullable
as Employee?,
  ));
}

/// Create a copy of Section
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmployeeCopyWith<$Res>? get employee {
    if (_self.employee == null) {
    return null;
  }

  return $EmployeeCopyWith<$Res>(_self.employee!, (value) {
    return _then(_self.copyWith(employee: value));
  });
}
}

// dart format on

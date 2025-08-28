// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'design_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DesignClass {

 String get resources;@JsonKey(name: 'job_divisions') String get workDivisions;@JsonKey(name: 'project_divisions') String get projectDivisions; String? get sign;
/// Create a copy of DesignClass
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DesignClassCopyWith<DesignClass> get copyWith => _$DesignClassCopyWithImpl<DesignClass>(this as DesignClass, _$identity);

  /// Serializes this DesignClass to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DesignClass&&(identical(other.resources, resources) || other.resources == resources)&&(identical(other.workDivisions, workDivisions) || other.workDivisions == workDivisions)&&(identical(other.projectDivisions, projectDivisions) || other.projectDivisions == projectDivisions)&&(identical(other.sign, sign) || other.sign == sign));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resources,workDivisions,projectDivisions,sign);

@override
String toString() {
  return 'DesignClass(resources: $resources, workDivisions: $workDivisions, projectDivisions: $projectDivisions, sign: $sign)';
}


}

/// @nodoc
abstract mixin class $DesignClassCopyWith<$Res>  {
  factory $DesignClassCopyWith(DesignClass value, $Res Function(DesignClass) _then) = _$DesignClassCopyWithImpl;
@useResult
$Res call({
 String resources,@JsonKey(name: 'job_divisions') String workDivisions,@JsonKey(name: 'project_divisions') String projectDivisions, String? sign
});




}
/// @nodoc
class _$DesignClassCopyWithImpl<$Res>
    implements $DesignClassCopyWith<$Res> {
  _$DesignClassCopyWithImpl(this._self, this._then);

  final DesignClass _self;
  final $Res Function(DesignClass) _then;

/// Create a copy of DesignClass
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? resources = null,Object? workDivisions = null,Object? projectDivisions = null,Object? sign = freezed,}) {
  return _then(_self.copyWith(
resources: null == resources ? _self.resources : resources // ignore: cast_nullable_to_non_nullable
as String,workDivisions: null == workDivisions ? _self.workDivisions : workDivisions // ignore: cast_nullable_to_non_nullable
as String,projectDivisions: null == projectDivisions ? _self.projectDivisions : projectDivisions // ignore: cast_nullable_to_non_nullable
as String,sign: freezed == sign ? _self.sign : sign // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DesignClass].
extension DesignClassPatterns on DesignClass {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DesignClass value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DesignClass() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DesignClass value)  $default,){
final _that = this;
switch (_that) {
case _DesignClass():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DesignClass value)?  $default,){
final _that = this;
switch (_that) {
case _DesignClass() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String resources, @JsonKey(name: 'job_divisions')  String workDivisions, @JsonKey(name: 'project_divisions')  String projectDivisions,  String? sign)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DesignClass() when $default != null:
return $default(_that.resources,_that.workDivisions,_that.projectDivisions,_that.sign);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String resources, @JsonKey(name: 'job_divisions')  String workDivisions, @JsonKey(name: 'project_divisions')  String projectDivisions,  String? sign)  $default,) {final _that = this;
switch (_that) {
case _DesignClass():
return $default(_that.resources,_that.workDivisions,_that.projectDivisions,_that.sign);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String resources, @JsonKey(name: 'job_divisions')  String workDivisions, @JsonKey(name: 'project_divisions')  String projectDivisions,  String? sign)?  $default,) {final _that = this;
switch (_that) {
case _DesignClass() when $default != null:
return $default(_that.resources,_that.workDivisions,_that.projectDivisions,_that.sign);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DesignClass implements DesignClass {
  const _DesignClass({required this.resources, @JsonKey(name: 'job_divisions') required this.workDivisions, @JsonKey(name: 'project_divisions') required this.projectDivisions, this.sign});
  factory _DesignClass.fromJson(Map<String, dynamic> json) => _$DesignClassFromJson(json);

@override final  String resources;
@override@JsonKey(name: 'job_divisions') final  String workDivisions;
@override@JsonKey(name: 'project_divisions') final  String projectDivisions;
@override final  String? sign;

/// Create a copy of DesignClass
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DesignClassCopyWith<_DesignClass> get copyWith => __$DesignClassCopyWithImpl<_DesignClass>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DesignClassToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DesignClass&&(identical(other.resources, resources) || other.resources == resources)&&(identical(other.workDivisions, workDivisions) || other.workDivisions == workDivisions)&&(identical(other.projectDivisions, projectDivisions) || other.projectDivisions == projectDivisions)&&(identical(other.sign, sign) || other.sign == sign));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,resources,workDivisions,projectDivisions,sign);

@override
String toString() {
  return 'DesignClass(resources: $resources, workDivisions: $workDivisions, projectDivisions: $projectDivisions, sign: $sign)';
}


}

/// @nodoc
abstract mixin class _$DesignClassCopyWith<$Res> implements $DesignClassCopyWith<$Res> {
  factory _$DesignClassCopyWith(_DesignClass value, $Res Function(_DesignClass) _then) = __$DesignClassCopyWithImpl;
@override @useResult
$Res call({
 String resources,@JsonKey(name: 'job_divisions') String workDivisions,@JsonKey(name: 'project_divisions') String projectDivisions, String? sign
});




}
/// @nodoc
class __$DesignClassCopyWithImpl<$Res>
    implements _$DesignClassCopyWith<$Res> {
  __$DesignClassCopyWithImpl(this._self, this._then);

  final _DesignClass _self;
  final $Res Function(_DesignClass) _then;

/// Create a copy of DesignClass
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? resources = null,Object? workDivisions = null,Object? projectDivisions = null,Object? sign = freezed,}) {
  return _then(_DesignClass(
resources: null == resources ? _self.resources : resources // ignore: cast_nullable_to_non_nullable
as String,workDivisions: null == workDivisions ? _self.workDivisions : workDivisions // ignore: cast_nullable_to_non_nullable
as String,projectDivisions: null == projectDivisions ? _self.projectDivisions : projectDivisions // ignore: cast_nullable_to_non_nullable
as String,sign: freezed == sign ? _self.sign : sign // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

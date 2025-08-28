// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stage_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StageData {

 String get id; String get parentId; String get type; double get factor; double get value; String get name; bool get isSection;
/// Create a copy of StageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StageDataCopyWith<StageData> get copyWith => _$StageDataCopyWithImpl<StageData>(this as StageData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StageData&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.type, type) || other.type == type)&&(identical(other.factor, factor) || other.factor == factor)&&(identical(other.value, value) || other.value == value)&&(identical(other.name, name) || other.name == name)&&(identical(other.isSection, isSection) || other.isSection == isSection));
}


@override
int get hashCode => Object.hash(runtimeType,id,parentId,type,factor,value,name,isSection);

@override
String toString() {
  return 'StageData(id: $id, parentId: $parentId, type: $type, factor: $factor, value: $value, name: $name, isSection: $isSection)';
}


}

/// @nodoc
abstract mixin class $StageDataCopyWith<$Res>  {
  factory $StageDataCopyWith(StageData value, $Res Function(StageData) _then) = _$StageDataCopyWithImpl;
@useResult
$Res call({
 String id, String parentId, String type, double factor, double value, String name, bool isSection
});




}
/// @nodoc
class _$StageDataCopyWithImpl<$Res>
    implements $StageDataCopyWith<$Res> {
  _$StageDataCopyWithImpl(this._self, this._then);

  final StageData _self;
  final $Res Function(StageData) _then;

/// Create a copy of StageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? parentId = null,Object? type = null,Object? factor = null,Object? value = null,Object? name = null,Object? isSection = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,factor: null == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as double,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isSection: null == isSection ? _self.isSection : isSection // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StageData].
extension StageDataPatterns on StageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StageData value)  $default,){
final _that = this;
switch (_that) {
case _StageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StageData value)?  $default,){
final _that = this;
switch (_that) {
case _StageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String parentId,  String type,  double factor,  double value,  String name,  bool isSection)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StageData() when $default != null:
return $default(_that.id,_that.parentId,_that.type,_that.factor,_that.value,_that.name,_that.isSection);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String parentId,  String type,  double factor,  double value,  String name,  bool isSection)  $default,) {final _that = this;
switch (_that) {
case _StageData():
return $default(_that.id,_that.parentId,_that.type,_that.factor,_that.value,_that.name,_that.isSection);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String parentId,  String type,  double factor,  double value,  String name,  bool isSection)?  $default,) {final _that = this;
switch (_that) {
case _StageData() when $default != null:
return $default(_that.id,_that.parentId,_that.type,_that.factor,_that.value,_that.name,_that.isSection);case _:
  return null;

}
}

}

/// @nodoc


class _StageData implements StageData {
  const _StageData({required this.id, required this.parentId, required this.type, required this.factor, required this.value, required this.name, this.isSection = false});
  

@override final  String id;
@override final  String parentId;
@override final  String type;
@override final  double factor;
@override final  double value;
@override final  String name;
@override@JsonKey() final  bool isSection;

/// Create a copy of StageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StageDataCopyWith<_StageData> get copyWith => __$StageDataCopyWithImpl<_StageData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StageData&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.type, type) || other.type == type)&&(identical(other.factor, factor) || other.factor == factor)&&(identical(other.value, value) || other.value == value)&&(identical(other.name, name) || other.name == name)&&(identical(other.isSection, isSection) || other.isSection == isSection));
}


@override
int get hashCode => Object.hash(runtimeType,id,parentId,type,factor,value,name,isSection);

@override
String toString() {
  return 'StageData(id: $id, parentId: $parentId, type: $type, factor: $factor, value: $value, name: $name, isSection: $isSection)';
}


}

/// @nodoc
abstract mixin class _$StageDataCopyWith<$Res> implements $StageDataCopyWith<$Res> {
  factory _$StageDataCopyWith(_StageData value, $Res Function(_StageData) _then) = __$StageDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String parentId, String type, double factor, double value, String name, bool isSection
});




}
/// @nodoc
class __$StageDataCopyWithImpl<$Res>
    implements _$StageDataCopyWith<$Res> {
  __$StageDataCopyWithImpl(this._self, this._then);

  final _StageData _self;
  final $Res Function(_StageData) _then;

/// Create a copy of StageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? parentId = null,Object? type = null,Object? factor = null,Object? value = null,Object? name = null,Object? isSection = null,}) {
  return _then(_StageData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,factor: null == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as double,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isSection: null == isSection ? _self.isSection : isSection // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

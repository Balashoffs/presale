// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SectionData {

 String get id; String get parentId; String get className; String get typeName; String get subtypeName; String get um; String get costRange; double get cost; List<CostStruct> get jobCosts;
/// Create a copy of SectionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionDataCopyWith<SectionData> get copyWith => _$SectionDataCopyWithImpl<SectionData>(this as SectionData, _$identity);

  /// Serializes this SectionData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionData&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.className, className) || other.className == className)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.subtypeName, subtypeName) || other.subtypeName == subtypeName)&&(identical(other.um, um) || other.um == um)&&(identical(other.costRange, costRange) || other.costRange == costRange)&&(identical(other.cost, cost) || other.cost == cost)&&const DeepCollectionEquality().equals(other.jobCosts, jobCosts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,parentId,className,typeName,subtypeName,um,costRange,cost,const DeepCollectionEquality().hash(jobCosts));

@override
String toString() {
  return 'SectionData(id: $id, parentId: $parentId, className: $className, typeName: $typeName, subtypeName: $subtypeName, um: $um, costRange: $costRange, cost: $cost, jobCosts: $jobCosts)';
}


}

/// @nodoc
abstract mixin class $SectionDataCopyWith<$Res>  {
  factory $SectionDataCopyWith(SectionData value, $Res Function(SectionData) _then) = _$SectionDataCopyWithImpl;
@useResult
$Res call({
 String id, String parentId, String className, String typeName, String subtypeName, String um, String costRange, double cost, List<CostStruct> jobCosts
});




}
/// @nodoc
class _$SectionDataCopyWithImpl<$Res>
    implements $SectionDataCopyWith<$Res> {
  _$SectionDataCopyWithImpl(this._self, this._then);

  final SectionData _self;
  final $Res Function(SectionData) _then;

/// Create a copy of SectionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? parentId = null,Object? className = null,Object? typeName = null,Object? subtypeName = null,Object? um = null,Object? costRange = null,Object? cost = null,Object? jobCosts = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String,className: null == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,subtypeName: null == subtypeName ? _self.subtypeName : subtypeName // ignore: cast_nullable_to_non_nullable
as String,um: null == um ? _self.um : um // ignore: cast_nullable_to_non_nullable
as String,costRange: null == costRange ? _self.costRange : costRange // ignore: cast_nullable_to_non_nullable
as String,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,jobCosts: null == jobCosts ? _self.jobCosts : jobCosts // ignore: cast_nullable_to_non_nullable
as List<CostStruct>,
  ));
}

}


/// Adds pattern-matching-related methods to [SectionData].
extension SectionDataPatterns on SectionData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SectionData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SectionData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SectionData value)  $default,){
final _that = this;
switch (_that) {
case _SectionData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SectionData value)?  $default,){
final _that = this;
switch (_that) {
case _SectionData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String parentId,  String className,  String typeName,  String subtypeName,  String um,  String costRange,  double cost,  List<CostStruct> jobCosts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SectionData() when $default != null:
return $default(_that.id,_that.parentId,_that.className,_that.typeName,_that.subtypeName,_that.um,_that.costRange,_that.cost,_that.jobCosts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String parentId,  String className,  String typeName,  String subtypeName,  String um,  String costRange,  double cost,  List<CostStruct> jobCosts)  $default,) {final _that = this;
switch (_that) {
case _SectionData():
return $default(_that.id,_that.parentId,_that.className,_that.typeName,_that.subtypeName,_that.um,_that.costRange,_that.cost,_that.jobCosts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String parentId,  String className,  String typeName,  String subtypeName,  String um,  String costRange,  double cost,  List<CostStruct> jobCosts)?  $default,) {final _that = this;
switch (_that) {
case _SectionData() when $default != null:
return $default(_that.id,_that.parentId,_that.className,_that.typeName,_that.subtypeName,_that.um,_that.costRange,_that.cost,_that.jobCosts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SectionData implements SectionData {
  const _SectionData({required this.id, required this.parentId, required this.className, required this.typeName, required this.subtypeName, required this.um, required this.costRange, required this.cost, required final  List<CostStruct> jobCosts}): _jobCosts = jobCosts;
  factory _SectionData.fromJson(Map<String, dynamic> json) => _$SectionDataFromJson(json);

@override final  String id;
@override final  String parentId;
@override final  String className;
@override final  String typeName;
@override final  String subtypeName;
@override final  String um;
@override final  String costRange;
@override final  double cost;
 final  List<CostStruct> _jobCosts;
@override List<CostStruct> get jobCosts {
  if (_jobCosts is EqualUnmodifiableListView) return _jobCosts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_jobCosts);
}


/// Create a copy of SectionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionDataCopyWith<_SectionData> get copyWith => __$SectionDataCopyWithImpl<_SectionData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SectionDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SectionData&&(identical(other.id, id) || other.id == id)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.className, className) || other.className == className)&&(identical(other.typeName, typeName) || other.typeName == typeName)&&(identical(other.subtypeName, subtypeName) || other.subtypeName == subtypeName)&&(identical(other.um, um) || other.um == um)&&(identical(other.costRange, costRange) || other.costRange == costRange)&&(identical(other.cost, cost) || other.cost == cost)&&const DeepCollectionEquality().equals(other._jobCosts, _jobCosts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,parentId,className,typeName,subtypeName,um,costRange,cost,const DeepCollectionEquality().hash(_jobCosts));

@override
String toString() {
  return 'SectionData(id: $id, parentId: $parentId, className: $className, typeName: $typeName, subtypeName: $subtypeName, um: $um, costRange: $costRange, cost: $cost, jobCosts: $jobCosts)';
}


}

/// @nodoc
abstract mixin class _$SectionDataCopyWith<$Res> implements $SectionDataCopyWith<$Res> {
  factory _$SectionDataCopyWith(_SectionData value, $Res Function(_SectionData) _then) = __$SectionDataCopyWithImpl;
@override @useResult
$Res call({
 String id, String parentId, String className, String typeName, String subtypeName, String um, String costRange, double cost, List<CostStruct> jobCosts
});




}
/// @nodoc
class __$SectionDataCopyWithImpl<$Res>
    implements _$SectionDataCopyWith<$Res> {
  __$SectionDataCopyWithImpl(this._self, this._then);

  final _SectionData _self;
  final $Res Function(_SectionData) _then;

/// Create a copy of SectionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? parentId = null,Object? className = null,Object? typeName = null,Object? subtypeName = null,Object? um = null,Object? costRange = null,Object? cost = null,Object? jobCosts = null,}) {
  return _then(_SectionData(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String,className: null == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String,typeName: null == typeName ? _self.typeName : typeName // ignore: cast_nullable_to_non_nullable
as String,subtypeName: null == subtypeName ? _self.subtypeName : subtypeName // ignore: cast_nullable_to_non_nullable
as String,um: null == um ? _self.um : um // ignore: cast_nullable_to_non_nullable
as String,costRange: null == costRange ? _self.costRange : costRange // ignore: cast_nullable_to_non_nullable
as String,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,jobCosts: null == jobCosts ? _self._jobCosts : jobCosts // ignore: cast_nullable_to_non_nullable
as List<CostStruct>,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputResult {

 String get id; String get objectName; String get estateCostType; String get estateClassType; double get totalFactor; double get totalPlannedCost; double get plannedSquare; double get averageMeterPerSquare;
/// Create a copy of InputResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputResultCopyWith<InputResult> get copyWith => _$InputResultCopyWithImpl<InputResult>(this as InputResult, _$identity);

  /// Serializes this InputResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputResult&&(identical(other.id, id) || other.id == id)&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.estateCostType, estateCostType) || other.estateCostType == estateCostType)&&(identical(other.estateClassType, estateClassType) || other.estateClassType == estateClassType)&&(identical(other.totalFactor, totalFactor) || other.totalFactor == totalFactor)&&(identical(other.totalPlannedCost, totalPlannedCost) || other.totalPlannedCost == totalPlannedCost)&&(identical(other.plannedSquare, plannedSquare) || other.plannedSquare == plannedSquare)&&(identical(other.averageMeterPerSquare, averageMeterPerSquare) || other.averageMeterPerSquare == averageMeterPerSquare));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,objectName,estateCostType,estateClassType,totalFactor,totalPlannedCost,plannedSquare,averageMeterPerSquare);

@override
String toString() {
  return 'InputResult(id: $id, objectName: $objectName, estateCostType: $estateCostType, estateClassType: $estateClassType, totalFactor: $totalFactor, totalPlannedCost: $totalPlannedCost, plannedSquare: $plannedSquare, averageMeterPerSquare: $averageMeterPerSquare)';
}


}

/// @nodoc
abstract mixin class $InputResultCopyWith<$Res>  {
  factory $InputResultCopyWith(InputResult value, $Res Function(InputResult) _then) = _$InputResultCopyWithImpl;
@useResult
$Res call({
 String id, String objectName, String estateCostType, String estateClassType, double totalFactor, double totalPlannedCost, double plannedSquare, double averageMeterPerSquare
});




}
/// @nodoc
class _$InputResultCopyWithImpl<$Res>
    implements $InputResultCopyWith<$Res> {
  _$InputResultCopyWithImpl(this._self, this._then);

  final InputResult _self;
  final $Res Function(InputResult) _then;

/// Create a copy of InputResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? objectName = null,Object? estateCostType = null,Object? estateClassType = null,Object? totalFactor = null,Object? totalPlannedCost = null,Object? plannedSquare = null,Object? averageMeterPerSquare = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,estateCostType: null == estateCostType ? _self.estateCostType : estateCostType // ignore: cast_nullable_to_non_nullable
as String,estateClassType: null == estateClassType ? _self.estateClassType : estateClassType // ignore: cast_nullable_to_non_nullable
as String,totalFactor: null == totalFactor ? _self.totalFactor : totalFactor // ignore: cast_nullable_to_non_nullable
as double,totalPlannedCost: null == totalPlannedCost ? _self.totalPlannedCost : totalPlannedCost // ignore: cast_nullable_to_non_nullable
as double,plannedSquare: null == plannedSquare ? _self.plannedSquare : plannedSquare // ignore: cast_nullable_to_non_nullable
as double,averageMeterPerSquare: null == averageMeterPerSquare ? _self.averageMeterPerSquare : averageMeterPerSquare // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [InputResult].
extension InputResultPatterns on InputResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InputResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InputResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InputResult value)  $default,){
final _that = this;
switch (_that) {
case _InputResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InputResult value)?  $default,){
final _that = this;
switch (_that) {
case _InputResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String objectName,  String estateCostType,  String estateClassType,  double totalFactor,  double totalPlannedCost,  double plannedSquare,  double averageMeterPerSquare)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InputResult() when $default != null:
return $default(_that.id,_that.objectName,_that.estateCostType,_that.estateClassType,_that.totalFactor,_that.totalPlannedCost,_that.plannedSquare,_that.averageMeterPerSquare);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String objectName,  String estateCostType,  String estateClassType,  double totalFactor,  double totalPlannedCost,  double plannedSquare,  double averageMeterPerSquare)  $default,) {final _that = this;
switch (_that) {
case _InputResult():
return $default(_that.id,_that.objectName,_that.estateCostType,_that.estateClassType,_that.totalFactor,_that.totalPlannedCost,_that.plannedSquare,_that.averageMeterPerSquare);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String objectName,  String estateCostType,  String estateClassType,  double totalFactor,  double totalPlannedCost,  double plannedSquare,  double averageMeterPerSquare)?  $default,) {final _that = this;
switch (_that) {
case _InputResult() when $default != null:
return $default(_that.id,_that.objectName,_that.estateCostType,_that.estateClassType,_that.totalFactor,_that.totalPlannedCost,_that.plannedSquare,_that.averageMeterPerSquare);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InputResult implements InputResult {
  const _InputResult({required this.id, this.objectName = '', this.estateCostType = '', this.estateClassType = '', this.totalFactor = 0.0, this.totalPlannedCost = 0.0, this.plannedSquare = 0.0, this.averageMeterPerSquare = 0.0});
  factory _InputResult.fromJson(Map<String, dynamic> json) => _$InputResultFromJson(json);

@override final  String id;
@override@JsonKey() final  String objectName;
@override@JsonKey() final  String estateCostType;
@override@JsonKey() final  String estateClassType;
@override@JsonKey() final  double totalFactor;
@override@JsonKey() final  double totalPlannedCost;
@override@JsonKey() final  double plannedSquare;
@override@JsonKey() final  double averageMeterPerSquare;

/// Create a copy of InputResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputResultCopyWith<_InputResult> get copyWith => __$InputResultCopyWithImpl<_InputResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InputResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputResult&&(identical(other.id, id) || other.id == id)&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.estateCostType, estateCostType) || other.estateCostType == estateCostType)&&(identical(other.estateClassType, estateClassType) || other.estateClassType == estateClassType)&&(identical(other.totalFactor, totalFactor) || other.totalFactor == totalFactor)&&(identical(other.totalPlannedCost, totalPlannedCost) || other.totalPlannedCost == totalPlannedCost)&&(identical(other.plannedSquare, plannedSquare) || other.plannedSquare == plannedSquare)&&(identical(other.averageMeterPerSquare, averageMeterPerSquare) || other.averageMeterPerSquare == averageMeterPerSquare));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,objectName,estateCostType,estateClassType,totalFactor,totalPlannedCost,plannedSquare,averageMeterPerSquare);

@override
String toString() {
  return 'InputResult(id: $id, objectName: $objectName, estateCostType: $estateCostType, estateClassType: $estateClassType, totalFactor: $totalFactor, totalPlannedCost: $totalPlannedCost, plannedSquare: $plannedSquare, averageMeterPerSquare: $averageMeterPerSquare)';
}


}

/// @nodoc
abstract mixin class _$InputResultCopyWith<$Res> implements $InputResultCopyWith<$Res> {
  factory _$InputResultCopyWith(_InputResult value, $Res Function(_InputResult) _then) = __$InputResultCopyWithImpl;
@override @useResult
$Res call({
 String id, String objectName, String estateCostType, String estateClassType, double totalFactor, double totalPlannedCost, double plannedSquare, double averageMeterPerSquare
});




}
/// @nodoc
class __$InputResultCopyWithImpl<$Res>
    implements _$InputResultCopyWith<$Res> {
  __$InputResultCopyWithImpl(this._self, this._then);

  final _InputResult _self;
  final $Res Function(_InputResult) _then;

/// Create a copy of InputResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? objectName = null,Object? estateCostType = null,Object? estateClassType = null,Object? totalFactor = null,Object? totalPlannedCost = null,Object? plannedSquare = null,Object? averageMeterPerSquare = null,}) {
  return _then(_InputResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,objectName: null == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String,estateCostType: null == estateCostType ? _self.estateCostType : estateCostType // ignore: cast_nullable_to_non_nullable
as String,estateClassType: null == estateClassType ? _self.estateClassType : estateClassType // ignore: cast_nullable_to_non_nullable
as String,totalFactor: null == totalFactor ? _self.totalFactor : totalFactor // ignore: cast_nullable_to_non_nullable
as double,totalPlannedCost: null == totalPlannedCost ? _self.totalPlannedCost : totalPlannedCost // ignore: cast_nullable_to_non_nullable
as double,plannedSquare: null == plannedSquare ? _self.plannedSquare : plannedSquare // ignore: cast_nullable_to_non_nullable
as double,averageMeterPerSquare: null == averageMeterPerSquare ? _self.averageMeterPerSquare : averageMeterPerSquare // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on

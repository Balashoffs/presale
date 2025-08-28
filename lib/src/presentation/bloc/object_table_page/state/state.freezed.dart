// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ObjectTableState {

 String? get objectName; String? get address; double? get square; int get workDuration; double get profitNorm; double get distanceCoefficient; double get durationCoefficient; double get customerCoefficient; double get difficultyCoefficient;
/// Create a copy of ObjectTableState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ObjectTableStateCopyWith<ObjectTableState> get copyWith => _$ObjectTableStateCopyWithImpl<ObjectTableState>(this as ObjectTableState, _$identity);

  /// Serializes this ObjectTableState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ObjectTableState&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.address, address) || other.address == address)&&(identical(other.square, square) || other.square == square)&&(identical(other.workDuration, workDuration) || other.workDuration == workDuration)&&(identical(other.profitNorm, profitNorm) || other.profitNorm == profitNorm)&&(identical(other.distanceCoefficient, distanceCoefficient) || other.distanceCoefficient == distanceCoefficient)&&(identical(other.durationCoefficient, durationCoefficient) || other.durationCoefficient == durationCoefficient)&&(identical(other.customerCoefficient, customerCoefficient) || other.customerCoefficient == customerCoefficient)&&(identical(other.difficultyCoefficient, difficultyCoefficient) || other.difficultyCoefficient == difficultyCoefficient));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectName,address,square,workDuration,profitNorm,distanceCoefficient,durationCoefficient,customerCoefficient,difficultyCoefficient);

@override
String toString() {
  return 'ObjectTableState(objectName: $objectName, address: $address, square: $square, workDuration: $workDuration, profitNorm: $profitNorm, distanceCoefficient: $distanceCoefficient, durationCoefficient: $durationCoefficient, customerCoefficient: $customerCoefficient, difficultyCoefficient: $difficultyCoefficient)';
}


}

/// @nodoc
abstract mixin class $ObjectTableStateCopyWith<$Res>  {
  factory $ObjectTableStateCopyWith(ObjectTableState value, $Res Function(ObjectTableState) _then) = _$ObjectTableStateCopyWithImpl;
@useResult
$Res call({
 String? objectName, String? address, double? square, int workDuration, double profitNorm, double distanceCoefficient, double durationCoefficient, double customerCoefficient, double difficultyCoefficient
});




}
/// @nodoc
class _$ObjectTableStateCopyWithImpl<$Res>
    implements $ObjectTableStateCopyWith<$Res> {
  _$ObjectTableStateCopyWithImpl(this._self, this._then);

  final ObjectTableState _self;
  final $Res Function(ObjectTableState) _then;

/// Create a copy of ObjectTableState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? objectName = freezed,Object? address = freezed,Object? square = freezed,Object? workDuration = null,Object? profitNorm = null,Object? distanceCoefficient = null,Object? durationCoefficient = null,Object? customerCoefficient = null,Object? difficultyCoefficient = null,}) {
  return _then(_self.copyWith(
objectName: freezed == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,square: freezed == square ? _self.square : square // ignore: cast_nullable_to_non_nullable
as double?,workDuration: null == workDuration ? _self.workDuration : workDuration // ignore: cast_nullable_to_non_nullable
as int,profitNorm: null == profitNorm ? _self.profitNorm : profitNorm // ignore: cast_nullable_to_non_nullable
as double,distanceCoefficient: null == distanceCoefficient ? _self.distanceCoefficient : distanceCoefficient // ignore: cast_nullable_to_non_nullable
as double,durationCoefficient: null == durationCoefficient ? _self.durationCoefficient : durationCoefficient // ignore: cast_nullable_to_non_nullable
as double,customerCoefficient: null == customerCoefficient ? _self.customerCoefficient : customerCoefficient // ignore: cast_nullable_to_non_nullable
as double,difficultyCoefficient: null == difficultyCoefficient ? _self.difficultyCoefficient : difficultyCoefficient // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ObjectTableState].
extension ObjectTableStatePatterns on ObjectTableState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ObjectTableState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ObjectTableState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ObjectTableState value)  $default,){
final _that = this;
switch (_that) {
case _ObjectTableState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ObjectTableState value)?  $default,){
final _that = this;
switch (_that) {
case _ObjectTableState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? objectName,  String? address,  double? square,  int workDuration,  double profitNorm,  double distanceCoefficient,  double durationCoefficient,  double customerCoefficient,  double difficultyCoefficient)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ObjectTableState() when $default != null:
return $default(_that.objectName,_that.address,_that.square,_that.workDuration,_that.profitNorm,_that.distanceCoefficient,_that.durationCoefficient,_that.customerCoefficient,_that.difficultyCoefficient);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? objectName,  String? address,  double? square,  int workDuration,  double profitNorm,  double distanceCoefficient,  double durationCoefficient,  double customerCoefficient,  double difficultyCoefficient)  $default,) {final _that = this;
switch (_that) {
case _ObjectTableState():
return $default(_that.objectName,_that.address,_that.square,_that.workDuration,_that.profitNorm,_that.distanceCoefficient,_that.durationCoefficient,_that.customerCoefficient,_that.difficultyCoefficient);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? objectName,  String? address,  double? square,  int workDuration,  double profitNorm,  double distanceCoefficient,  double durationCoefficient,  double customerCoefficient,  double difficultyCoefficient)?  $default,) {final _that = this;
switch (_that) {
case _ObjectTableState() when $default != null:
return $default(_that.objectName,_that.address,_that.square,_that.workDuration,_that.profitNorm,_that.distanceCoefficient,_that.durationCoefficient,_that.customerCoefficient,_that.difficultyCoefficient);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ObjectTableState extends ObjectTableState {
  const _ObjectTableState({this.objectName, this.address, this.square, this.workDuration = 100, this.profitNorm = 1, this.distanceCoefficient = 1, this.durationCoefficient = 1, this.customerCoefficient = 1, this.difficultyCoefficient = 1}): super._();
  factory _ObjectTableState.fromJson(Map<String, dynamic> json) => _$ObjectTableStateFromJson(json);

@override final  String? objectName;
@override final  String? address;
@override final  double? square;
@override@JsonKey() final  int workDuration;
@override@JsonKey() final  double profitNorm;
@override@JsonKey() final  double distanceCoefficient;
@override@JsonKey() final  double durationCoefficient;
@override@JsonKey() final  double customerCoefficient;
@override@JsonKey() final  double difficultyCoefficient;

/// Create a copy of ObjectTableState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ObjectTableStateCopyWith<_ObjectTableState> get copyWith => __$ObjectTableStateCopyWithImpl<_ObjectTableState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ObjectTableStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ObjectTableState&&(identical(other.objectName, objectName) || other.objectName == objectName)&&(identical(other.address, address) || other.address == address)&&(identical(other.square, square) || other.square == square)&&(identical(other.workDuration, workDuration) || other.workDuration == workDuration)&&(identical(other.profitNorm, profitNorm) || other.profitNorm == profitNorm)&&(identical(other.distanceCoefficient, distanceCoefficient) || other.distanceCoefficient == distanceCoefficient)&&(identical(other.durationCoefficient, durationCoefficient) || other.durationCoefficient == durationCoefficient)&&(identical(other.customerCoefficient, customerCoefficient) || other.customerCoefficient == customerCoefficient)&&(identical(other.difficultyCoefficient, difficultyCoefficient) || other.difficultyCoefficient == difficultyCoefficient));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,objectName,address,square,workDuration,profitNorm,distanceCoefficient,durationCoefficient,customerCoefficient,difficultyCoefficient);

@override
String toString() {
  return 'ObjectTableState(objectName: $objectName, address: $address, square: $square, workDuration: $workDuration, profitNorm: $profitNorm, distanceCoefficient: $distanceCoefficient, durationCoefficient: $durationCoefficient, customerCoefficient: $customerCoefficient, difficultyCoefficient: $difficultyCoefficient)';
}


}

/// @nodoc
abstract mixin class _$ObjectTableStateCopyWith<$Res> implements $ObjectTableStateCopyWith<$Res> {
  factory _$ObjectTableStateCopyWith(_ObjectTableState value, $Res Function(_ObjectTableState) _then) = __$ObjectTableStateCopyWithImpl;
@override @useResult
$Res call({
 String? objectName, String? address, double? square, int workDuration, double profitNorm, double distanceCoefficient, double durationCoefficient, double customerCoefficient, double difficultyCoefficient
});




}
/// @nodoc
class __$ObjectTableStateCopyWithImpl<$Res>
    implements _$ObjectTableStateCopyWith<$Res> {
  __$ObjectTableStateCopyWithImpl(this._self, this._then);

  final _ObjectTableState _self;
  final $Res Function(_ObjectTableState) _then;

/// Create a copy of ObjectTableState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? objectName = freezed,Object? address = freezed,Object? square = freezed,Object? workDuration = null,Object? profitNorm = null,Object? distanceCoefficient = null,Object? durationCoefficient = null,Object? customerCoefficient = null,Object? difficultyCoefficient = null,}) {
  return _then(_ObjectTableState(
objectName: freezed == objectName ? _self.objectName : objectName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,square: freezed == square ? _self.square : square // ignore: cast_nullable_to_non_nullable
as double?,workDuration: null == workDuration ? _self.workDuration : workDuration // ignore: cast_nullable_to_non_nullable
as int,profitNorm: null == profitNorm ? _self.profitNorm : profitNorm // ignore: cast_nullable_to_non_nullable
as double,distanceCoefficient: null == distanceCoefficient ? _self.distanceCoefficient : distanceCoefficient // ignore: cast_nullable_to_non_nullable
as double,durationCoefficient: null == durationCoefficient ? _self.durationCoefficient : durationCoefficient // ignore: cast_nullable_to_non_nullable
as double,customerCoefficient: null == customerCoefficient ? _self.customerCoefficient : customerCoefficient // ignore: cast_nullable_to_non_nullable
as double,difficultyCoefficient: null == difficultyCoefficient ? _self.difficultyCoefficient : difficultyCoefficient // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on

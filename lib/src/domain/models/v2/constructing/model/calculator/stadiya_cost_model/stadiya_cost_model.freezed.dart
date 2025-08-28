// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stadiya_cost_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StadiyaCostModel {

 String get name; String get factorRange; double get factor; double get moneyValue;
/// Create a copy of StadiyaCostModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StadiyaCostModelCopyWith<StadiyaCostModel> get copyWith => _$StadiyaCostModelCopyWithImpl<StadiyaCostModel>(this as StadiyaCostModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StadiyaCostModel&&(identical(other.name, name) || other.name == name)&&(identical(other.factorRange, factorRange) || other.factorRange == factorRange)&&(identical(other.factor, factor) || other.factor == factor)&&(identical(other.moneyValue, moneyValue) || other.moneyValue == moneyValue));
}


@override
int get hashCode => Object.hash(runtimeType,name,factorRange,factor,moneyValue);

@override
String toString() {
  return 'StadiyaCostModel(name: $name, factorRange: $factorRange, factor: $factor, moneyValue: $moneyValue)';
}


}

/// @nodoc
abstract mixin class $StadiyaCostModelCopyWith<$Res>  {
  factory $StadiyaCostModelCopyWith(StadiyaCostModel value, $Res Function(StadiyaCostModel) _then) = _$StadiyaCostModelCopyWithImpl;
@useResult
$Res call({
 String name, String factorRange, double factor, double moneyValue
});




}
/// @nodoc
class _$StadiyaCostModelCopyWithImpl<$Res>
    implements $StadiyaCostModelCopyWith<$Res> {
  _$StadiyaCostModelCopyWithImpl(this._self, this._then);

  final StadiyaCostModel _self;
  final $Res Function(StadiyaCostModel) _then;

/// Create a copy of StadiyaCostModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? factorRange = null,Object? factor = null,Object? moneyValue = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,factorRange: null == factorRange ? _self.factorRange : factorRange // ignore: cast_nullable_to_non_nullable
as String,factor: null == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as double,moneyValue: null == moneyValue ? _self.moneyValue : moneyValue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [StadiyaCostModel].
extension StadiyaCostModelPatterns on StadiyaCostModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StadiyaCostModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StadiyaCostModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StadiyaCostModel value)  $default,){
final _that = this;
switch (_that) {
case _StadiyaCostModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StadiyaCostModel value)?  $default,){
final _that = this;
switch (_that) {
case _StadiyaCostModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String factorRange,  double factor,  double moneyValue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StadiyaCostModel() when $default != null:
return $default(_that.name,_that.factorRange,_that.factor,_that.moneyValue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String factorRange,  double factor,  double moneyValue)  $default,) {final _that = this;
switch (_that) {
case _StadiyaCostModel():
return $default(_that.name,_that.factorRange,_that.factor,_that.moneyValue);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String factorRange,  double factor,  double moneyValue)?  $default,) {final _that = this;
switch (_that) {
case _StadiyaCostModel() when $default != null:
return $default(_that.name,_that.factorRange,_that.factor,_that.moneyValue);case _:
  return null;

}
}

}

/// @nodoc


class _StadiyaCostModel implements StadiyaCostModel {
  const _StadiyaCostModel({required this.name, required this.factorRange, required this.factor, this.moneyValue = 0.0});
  

@override final  String name;
@override final  String factorRange;
@override final  double factor;
@override@JsonKey() final  double moneyValue;

/// Create a copy of StadiyaCostModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StadiyaCostModelCopyWith<_StadiyaCostModel> get copyWith => __$StadiyaCostModelCopyWithImpl<_StadiyaCostModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StadiyaCostModel&&(identical(other.name, name) || other.name == name)&&(identical(other.factorRange, factorRange) || other.factorRange == factorRange)&&(identical(other.factor, factor) || other.factor == factor)&&(identical(other.moneyValue, moneyValue) || other.moneyValue == moneyValue));
}


@override
int get hashCode => Object.hash(runtimeType,name,factorRange,factor,moneyValue);

@override
String toString() {
  return 'StadiyaCostModel(name: $name, factorRange: $factorRange, factor: $factor, moneyValue: $moneyValue)';
}


}

/// @nodoc
abstract mixin class _$StadiyaCostModelCopyWith<$Res> implements $StadiyaCostModelCopyWith<$Res> {
  factory _$StadiyaCostModelCopyWith(_StadiyaCostModel value, $Res Function(_StadiyaCostModel) _then) = __$StadiyaCostModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String factorRange, double factor, double moneyValue
});




}
/// @nodoc
class __$StadiyaCostModelCopyWithImpl<$Res>
    implements _$StadiyaCostModelCopyWith<$Res> {
  __$StadiyaCostModelCopyWithImpl(this._self, this._then);

  final _StadiyaCostModel _self;
  final $Res Function(_StadiyaCostModel) _then;

/// Create a copy of StadiyaCostModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? factorRange = null,Object? factor = null,Object? moneyValue = null,}) {
  return _then(_StadiyaCostModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,factorRange: null == factorRange ? _self.factorRange : factorRange // ignore: cast_nullable_to_non_nullable
as String,factor: null == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as double,moneyValue: null == moneyValue ? _self.moneyValue : moneyValue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on

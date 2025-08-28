// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_factors_pojo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InputFactorsPojo {

// Коэфициент за срочность
 double get speedFactor;// Коэфициент за высотность
 double get heightFactor;// Коэфициент за издержки
 double get overPriceFactor;// Коэфициент за удаленность
 double get remotingFactor;// Коэфициент за сложность
 double get complexityFactor;// Коэфициент для заказчика
 double get customerFactor;// Коэфициент нормы прибыли
 double get marginFactor;// Коэфициент площади
 double get squareFactor;
/// Create a copy of InputFactorsPojo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InputFactorsPojoCopyWith<InputFactorsPojo> get copyWith => _$InputFactorsPojoCopyWithImpl<InputFactorsPojo>(this as InputFactorsPojo, _$identity);

  /// Serializes this InputFactorsPojo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InputFactorsPojo&&(identical(other.speedFactor, speedFactor) || other.speedFactor == speedFactor)&&(identical(other.heightFactor, heightFactor) || other.heightFactor == heightFactor)&&(identical(other.overPriceFactor, overPriceFactor) || other.overPriceFactor == overPriceFactor)&&(identical(other.remotingFactor, remotingFactor) || other.remotingFactor == remotingFactor)&&(identical(other.complexityFactor, complexityFactor) || other.complexityFactor == complexityFactor)&&(identical(other.customerFactor, customerFactor) || other.customerFactor == customerFactor)&&(identical(other.marginFactor, marginFactor) || other.marginFactor == marginFactor)&&(identical(other.squareFactor, squareFactor) || other.squareFactor == squareFactor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speedFactor,heightFactor,overPriceFactor,remotingFactor,complexityFactor,customerFactor,marginFactor,squareFactor);

@override
String toString() {
  return 'InputFactorsPojo(speedFactor: $speedFactor, heightFactor: $heightFactor, overPriceFactor: $overPriceFactor, remotingFactor: $remotingFactor, complexityFactor: $complexityFactor, customerFactor: $customerFactor, marginFactor: $marginFactor, squareFactor: $squareFactor)';
}


}

/// @nodoc
abstract mixin class $InputFactorsPojoCopyWith<$Res>  {
  factory $InputFactorsPojoCopyWith(InputFactorsPojo value, $Res Function(InputFactorsPojo) _then) = _$InputFactorsPojoCopyWithImpl;
@useResult
$Res call({
 double speedFactor, double heightFactor, double overPriceFactor, double remotingFactor, double complexityFactor, double customerFactor, double marginFactor, double squareFactor
});




}
/// @nodoc
class _$InputFactorsPojoCopyWithImpl<$Res>
    implements $InputFactorsPojoCopyWith<$Res> {
  _$InputFactorsPojoCopyWithImpl(this._self, this._then);

  final InputFactorsPojo _self;
  final $Res Function(InputFactorsPojo) _then;

/// Create a copy of InputFactorsPojo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? speedFactor = null,Object? heightFactor = null,Object? overPriceFactor = null,Object? remotingFactor = null,Object? complexityFactor = null,Object? customerFactor = null,Object? marginFactor = null,Object? squareFactor = null,}) {
  return _then(_self.copyWith(
speedFactor: null == speedFactor ? _self.speedFactor : speedFactor // ignore: cast_nullable_to_non_nullable
as double,heightFactor: null == heightFactor ? _self.heightFactor : heightFactor // ignore: cast_nullable_to_non_nullable
as double,overPriceFactor: null == overPriceFactor ? _self.overPriceFactor : overPriceFactor // ignore: cast_nullable_to_non_nullable
as double,remotingFactor: null == remotingFactor ? _self.remotingFactor : remotingFactor // ignore: cast_nullable_to_non_nullable
as double,complexityFactor: null == complexityFactor ? _self.complexityFactor : complexityFactor // ignore: cast_nullable_to_non_nullable
as double,customerFactor: null == customerFactor ? _self.customerFactor : customerFactor // ignore: cast_nullable_to_non_nullable
as double,marginFactor: null == marginFactor ? _self.marginFactor : marginFactor // ignore: cast_nullable_to_non_nullable
as double,squareFactor: null == squareFactor ? _self.squareFactor : squareFactor // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [InputFactorsPojo].
extension InputFactorsPojoPatterns on InputFactorsPojo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InputFactorsPojo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InputFactorsPojo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InputFactorsPojo value)  $default,){
final _that = this;
switch (_that) {
case _InputFactorsPojo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InputFactorsPojo value)?  $default,){
final _that = this;
switch (_that) {
case _InputFactorsPojo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double speedFactor,  double heightFactor,  double overPriceFactor,  double remotingFactor,  double complexityFactor,  double customerFactor,  double marginFactor,  double squareFactor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InputFactorsPojo() when $default != null:
return $default(_that.speedFactor,_that.heightFactor,_that.overPriceFactor,_that.remotingFactor,_that.complexityFactor,_that.customerFactor,_that.marginFactor,_that.squareFactor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double speedFactor,  double heightFactor,  double overPriceFactor,  double remotingFactor,  double complexityFactor,  double customerFactor,  double marginFactor,  double squareFactor)  $default,) {final _that = this;
switch (_that) {
case _InputFactorsPojo():
return $default(_that.speedFactor,_that.heightFactor,_that.overPriceFactor,_that.remotingFactor,_that.complexityFactor,_that.customerFactor,_that.marginFactor,_that.squareFactor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double speedFactor,  double heightFactor,  double overPriceFactor,  double remotingFactor,  double complexityFactor,  double customerFactor,  double marginFactor,  double squareFactor)?  $default,) {final _that = this;
switch (_that) {
case _InputFactorsPojo() when $default != null:
return $default(_that.speedFactor,_that.heightFactor,_that.overPriceFactor,_that.remotingFactor,_that.complexityFactor,_that.customerFactor,_that.marginFactor,_that.squareFactor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InputFactorsPojo implements InputFactorsPojo {
  const _InputFactorsPojo({required this.speedFactor, required this.heightFactor, required this.overPriceFactor, required this.remotingFactor, required this.complexityFactor, required this.customerFactor, required this.marginFactor, required this.squareFactor});
  factory _InputFactorsPojo.fromJson(Map<String, dynamic> json) => _$InputFactorsPojoFromJson(json);

// Коэфициент за срочность
@override final  double speedFactor;
// Коэфициент за высотность
@override final  double heightFactor;
// Коэфициент за издержки
@override final  double overPriceFactor;
// Коэфициент за удаленность
@override final  double remotingFactor;
// Коэфициент за сложность
@override final  double complexityFactor;
// Коэфициент для заказчика
@override final  double customerFactor;
// Коэфициент нормы прибыли
@override final  double marginFactor;
// Коэфициент площади
@override final  double squareFactor;

/// Create a copy of InputFactorsPojo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InputFactorsPojoCopyWith<_InputFactorsPojo> get copyWith => __$InputFactorsPojoCopyWithImpl<_InputFactorsPojo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InputFactorsPojoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InputFactorsPojo&&(identical(other.speedFactor, speedFactor) || other.speedFactor == speedFactor)&&(identical(other.heightFactor, heightFactor) || other.heightFactor == heightFactor)&&(identical(other.overPriceFactor, overPriceFactor) || other.overPriceFactor == overPriceFactor)&&(identical(other.remotingFactor, remotingFactor) || other.remotingFactor == remotingFactor)&&(identical(other.complexityFactor, complexityFactor) || other.complexityFactor == complexityFactor)&&(identical(other.customerFactor, customerFactor) || other.customerFactor == customerFactor)&&(identical(other.marginFactor, marginFactor) || other.marginFactor == marginFactor)&&(identical(other.squareFactor, squareFactor) || other.squareFactor == squareFactor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,speedFactor,heightFactor,overPriceFactor,remotingFactor,complexityFactor,customerFactor,marginFactor,squareFactor);

@override
String toString() {
  return 'InputFactorsPojo(speedFactor: $speedFactor, heightFactor: $heightFactor, overPriceFactor: $overPriceFactor, remotingFactor: $remotingFactor, complexityFactor: $complexityFactor, customerFactor: $customerFactor, marginFactor: $marginFactor, squareFactor: $squareFactor)';
}


}

/// @nodoc
abstract mixin class _$InputFactorsPojoCopyWith<$Res> implements $InputFactorsPojoCopyWith<$Res> {
  factory _$InputFactorsPojoCopyWith(_InputFactorsPojo value, $Res Function(_InputFactorsPojo) _then) = __$InputFactorsPojoCopyWithImpl;
@override @useResult
$Res call({
 double speedFactor, double heightFactor, double overPriceFactor, double remotingFactor, double complexityFactor, double customerFactor, double marginFactor, double squareFactor
});




}
/// @nodoc
class __$InputFactorsPojoCopyWithImpl<$Res>
    implements _$InputFactorsPojoCopyWith<$Res> {
  __$InputFactorsPojoCopyWithImpl(this._self, this._then);

  final _InputFactorsPojo _self;
  final $Res Function(_InputFactorsPojo) _then;

/// Create a copy of InputFactorsPojo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? speedFactor = null,Object? heightFactor = null,Object? overPriceFactor = null,Object? remotingFactor = null,Object? complexityFactor = null,Object? customerFactor = null,Object? marginFactor = null,Object? squareFactor = null,}) {
  return _then(_InputFactorsPojo(
speedFactor: null == speedFactor ? _self.speedFactor : speedFactor // ignore: cast_nullable_to_non_nullable
as double,heightFactor: null == heightFactor ? _self.heightFactor : heightFactor // ignore: cast_nullable_to_non_nullable
as double,overPriceFactor: null == overPriceFactor ? _self.overPriceFactor : overPriceFactor // ignore: cast_nullable_to_non_nullable
as double,remotingFactor: null == remotingFactor ? _self.remotingFactor : remotingFactor // ignore: cast_nullable_to_non_nullable
as double,complexityFactor: null == complexityFactor ? _self.complexityFactor : complexityFactor // ignore: cast_nullable_to_non_nullable
as double,customerFactor: null == customerFactor ? _self.customerFactor : customerFactor // ignore: cast_nullable_to_non_nullable
as double,marginFactor: null == marginFactor ? _self.marginFactor : marginFactor // ignore: cast_nullable_to_non_nullable
as double,squareFactor: null == squareFactor ? _self.squareFactor : squareFactor // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on

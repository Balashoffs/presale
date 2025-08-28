// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stadiya_output_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StadiyaOutputModel {

 String get element; double get cost; double get quantity; double get total;
/// Create a copy of StadiyaOutputModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StadiyaOutputModelCopyWith<StadiyaOutputModel> get copyWith => _$StadiyaOutputModelCopyWithImpl<StadiyaOutputModel>(this as StadiyaOutputModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StadiyaOutputModel&&(identical(other.element, element) || other.element == element)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,element,cost,quantity,total);

@override
String toString() {
  return 'StadiyaOutputModel(element: $element, cost: $cost, quantity: $quantity, total: $total)';
}


}

/// @nodoc
abstract mixin class $StadiyaOutputModelCopyWith<$Res>  {
  factory $StadiyaOutputModelCopyWith(StadiyaOutputModel value, $Res Function(StadiyaOutputModel) _then) = _$StadiyaOutputModelCopyWithImpl;
@useResult
$Res call({
 String element, double cost, double quantity, double total
});




}
/// @nodoc
class _$StadiyaOutputModelCopyWithImpl<$Res>
    implements $StadiyaOutputModelCopyWith<$Res> {
  _$StadiyaOutputModelCopyWithImpl(this._self, this._then);

  final StadiyaOutputModel _self;
  final $Res Function(StadiyaOutputModel) _then;

/// Create a copy of StadiyaOutputModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? element = null,Object? cost = null,Object? quantity = null,Object? total = null,}) {
  return _then(_self.copyWith(
element: null == element ? _self.element : element // ignore: cast_nullable_to_non_nullable
as String,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [StadiyaOutputModel].
extension StadiyaOutputModelPatterns on StadiyaOutputModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StadiyaOutputModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StadiyaOutputModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StadiyaOutputModel value)  $default,){
final _that = this;
switch (_that) {
case _StadiyaOutputModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StadiyaOutputModel value)?  $default,){
final _that = this;
switch (_that) {
case _StadiyaOutputModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String element,  double cost,  double quantity,  double total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StadiyaOutputModel() when $default != null:
return $default(_that.element,_that.cost,_that.quantity,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String element,  double cost,  double quantity,  double total)  $default,) {final _that = this;
switch (_that) {
case _StadiyaOutputModel():
return $default(_that.element,_that.cost,_that.quantity,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String element,  double cost,  double quantity,  double total)?  $default,) {final _that = this;
switch (_that) {
case _StadiyaOutputModel() when $default != null:
return $default(_that.element,_that.cost,_that.quantity,_that.total);case _:
  return null;

}
}

}

/// @nodoc


class _StadiyaOutputModel implements StadiyaOutputModel {
  const _StadiyaOutputModel({required this.element, required this.cost, this.quantity = 1.0, this.total = 0.0});
  

@override final  String element;
@override final  double cost;
@override@JsonKey() final  double quantity;
@override@JsonKey() final  double total;

/// Create a copy of StadiyaOutputModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StadiyaOutputModelCopyWith<_StadiyaOutputModel> get copyWith => __$StadiyaOutputModelCopyWithImpl<_StadiyaOutputModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StadiyaOutputModel&&(identical(other.element, element) || other.element == element)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.total, total) || other.total == total));
}


@override
int get hashCode => Object.hash(runtimeType,element,cost,quantity,total);

@override
String toString() {
  return 'StadiyaOutputModel(element: $element, cost: $cost, quantity: $quantity, total: $total)';
}


}

/// @nodoc
abstract mixin class _$StadiyaOutputModelCopyWith<$Res> implements $StadiyaOutputModelCopyWith<$Res> {
  factory _$StadiyaOutputModelCopyWith(_StadiyaOutputModel value, $Res Function(_StadiyaOutputModel) _then) = __$StadiyaOutputModelCopyWithImpl;
@override @useResult
$Res call({
 String element, double cost, double quantity, double total
});




}
/// @nodoc
class __$StadiyaOutputModelCopyWithImpl<$Res>
    implements _$StadiyaOutputModelCopyWith<$Res> {
  __$StadiyaOutputModelCopyWithImpl(this._self, this._then);

  final _StadiyaOutputModel _self;
  final $Res Function(_StadiyaOutputModel) _then;

/// Create a copy of StadiyaOutputModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? element = null,Object? cost = null,Object? quantity = null,Object? total = null,}) {
  return _then(_StadiyaOutputModel(
element: null == element ? _self.element : element // ignore: cast_nullable_to_non_nullable
as String,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on

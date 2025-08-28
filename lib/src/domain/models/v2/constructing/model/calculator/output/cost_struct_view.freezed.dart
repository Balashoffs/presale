// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cost_struct_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CostStructView {

 int get pos; double get factor; String get name;
/// Create a copy of CostStructView
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CostStructViewCopyWith<CostStructView> get copyWith => _$CostStructViewCopyWithImpl<CostStructView>(this as CostStructView, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CostStructView&&(identical(other.pos, pos) || other.pos == pos)&&(identical(other.factor, factor) || other.factor == factor)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,pos,factor,name);

@override
String toString() {
  return 'CostStructView(pos: $pos, factor: $factor, name: $name)';
}


}

/// @nodoc
abstract mixin class $CostStructViewCopyWith<$Res>  {
  factory $CostStructViewCopyWith(CostStructView value, $Res Function(CostStructView) _then) = _$CostStructViewCopyWithImpl;
@useResult
$Res call({
 int pos, double factor, String name
});




}
/// @nodoc
class _$CostStructViewCopyWithImpl<$Res>
    implements $CostStructViewCopyWith<$Res> {
  _$CostStructViewCopyWithImpl(this._self, this._then);

  final CostStructView _self;
  final $Res Function(CostStructView) _then;

/// Create a copy of CostStructView
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pos = null,Object? factor = null,Object? name = null,}) {
  return _then(_self.copyWith(
pos: null == pos ? _self.pos : pos // ignore: cast_nullable_to_non_nullable
as int,factor: null == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as double,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CostStructView].
extension CostStructViewPatterns on CostStructView {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CostStructView value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CostStructView() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CostStructView value)  $default,){
final _that = this;
switch (_that) {
case _CostStructView():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CostStructView value)?  $default,){
final _that = this;
switch (_that) {
case _CostStructView() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int pos,  double factor,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CostStructView() when $default != null:
return $default(_that.pos,_that.factor,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int pos,  double factor,  String name)  $default,) {final _that = this;
switch (_that) {
case _CostStructView():
return $default(_that.pos,_that.factor,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int pos,  double factor,  String name)?  $default,) {final _that = this;
switch (_that) {
case _CostStructView() when $default != null:
return $default(_that.pos,_that.factor,_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _CostStructView implements CostStructView {
  const _CostStructView({required this.pos, required this.factor, required this.name});
  

@override final  int pos;
@override final  double factor;
@override final  String name;

/// Create a copy of CostStructView
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CostStructViewCopyWith<_CostStructView> get copyWith => __$CostStructViewCopyWithImpl<_CostStructView>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CostStructView&&(identical(other.pos, pos) || other.pos == pos)&&(identical(other.factor, factor) || other.factor == factor)&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,pos,factor,name);

@override
String toString() {
  return 'CostStructView(pos: $pos, factor: $factor, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CostStructViewCopyWith<$Res> implements $CostStructViewCopyWith<$Res> {
  factory _$CostStructViewCopyWith(_CostStructView value, $Res Function(_CostStructView) _then) = __$CostStructViewCopyWithImpl;
@override @useResult
$Res call({
 int pos, double factor, String name
});




}
/// @nodoc
class __$CostStructViewCopyWithImpl<$Res>
    implements _$CostStructViewCopyWith<$Res> {
  __$CostStructViewCopyWithImpl(this._self, this._then);

  final _CostStructView _self;
  final $Res Function(_CostStructView) _then;

/// Create a copy of CostStructView
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pos = null,Object? factor = null,Object? name = null,}) {
  return _then(_CostStructView(
pos: null == pos ? _self.pos : pos // ignore: cast_nullable_to_non_nullable
as int,factor: null == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as double,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stadiya_output_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StadiyaOutputView {

 String get element; String get clarification; String get costRange; String get um; double get costFactor;
/// Create a copy of StadiyaOutputView
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StadiyaOutputViewCopyWith<StadiyaOutputView> get copyWith => _$StadiyaOutputViewCopyWithImpl<StadiyaOutputView>(this as StadiyaOutputView, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StadiyaOutputView&&(identical(other.element, element) || other.element == element)&&(identical(other.clarification, clarification) || other.clarification == clarification)&&(identical(other.costRange, costRange) || other.costRange == costRange)&&(identical(other.um, um) || other.um == um)&&(identical(other.costFactor, costFactor) || other.costFactor == costFactor));
}


@override
int get hashCode => Object.hash(runtimeType,element,clarification,costRange,um,costFactor);

@override
String toString() {
  return 'StadiyaOutputView(element: $element, clarification: $clarification, costRange: $costRange, um: $um, costFactor: $costFactor)';
}


}

/// @nodoc
abstract mixin class $StadiyaOutputViewCopyWith<$Res>  {
  factory $StadiyaOutputViewCopyWith(StadiyaOutputView value, $Res Function(StadiyaOutputView) _then) = _$StadiyaOutputViewCopyWithImpl;
@useResult
$Res call({
 String element, String clarification, String costRange, String um, double costFactor
});




}
/// @nodoc
class _$StadiyaOutputViewCopyWithImpl<$Res>
    implements $StadiyaOutputViewCopyWith<$Res> {
  _$StadiyaOutputViewCopyWithImpl(this._self, this._then);

  final StadiyaOutputView _self;
  final $Res Function(StadiyaOutputView) _then;

/// Create a copy of StadiyaOutputView
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? element = null,Object? clarification = null,Object? costRange = null,Object? um = null,Object? costFactor = null,}) {
  return _then(_self.copyWith(
element: null == element ? _self.element : element // ignore: cast_nullable_to_non_nullable
as String,clarification: null == clarification ? _self.clarification : clarification // ignore: cast_nullable_to_non_nullable
as String,costRange: null == costRange ? _self.costRange : costRange // ignore: cast_nullable_to_non_nullable
as String,um: null == um ? _self.um : um // ignore: cast_nullable_to_non_nullable
as String,costFactor: null == costFactor ? _self.costFactor : costFactor // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [StadiyaOutputView].
extension StadiyaOutputViewPatterns on StadiyaOutputView {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StadiyaOutputView value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StadiyaOutputView() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StadiyaOutputView value)  $default,){
final _that = this;
switch (_that) {
case _StadiyaOutputView():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StadiyaOutputView value)?  $default,){
final _that = this;
switch (_that) {
case _StadiyaOutputView() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String element,  String clarification,  String costRange,  String um,  double costFactor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StadiyaOutputView() when $default != null:
return $default(_that.element,_that.clarification,_that.costRange,_that.um,_that.costFactor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String element,  String clarification,  String costRange,  String um,  double costFactor)  $default,) {final _that = this;
switch (_that) {
case _StadiyaOutputView():
return $default(_that.element,_that.clarification,_that.costRange,_that.um,_that.costFactor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String element,  String clarification,  String costRange,  String um,  double costFactor)?  $default,) {final _that = this;
switch (_that) {
case _StadiyaOutputView() when $default != null:
return $default(_that.element,_that.clarification,_that.costRange,_that.um,_that.costFactor);case _:
  return null;

}
}

}

/// @nodoc


class _StadiyaOutputView implements StadiyaOutputView {
  const _StadiyaOutputView({required this.element, required this.clarification, required this.costRange, required this.um, this.costFactor = 1000.0});
  

@override final  String element;
@override final  String clarification;
@override final  String costRange;
@override final  String um;
@override@JsonKey() final  double costFactor;

/// Create a copy of StadiyaOutputView
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StadiyaOutputViewCopyWith<_StadiyaOutputView> get copyWith => __$StadiyaOutputViewCopyWithImpl<_StadiyaOutputView>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StadiyaOutputView&&(identical(other.element, element) || other.element == element)&&(identical(other.clarification, clarification) || other.clarification == clarification)&&(identical(other.costRange, costRange) || other.costRange == costRange)&&(identical(other.um, um) || other.um == um)&&(identical(other.costFactor, costFactor) || other.costFactor == costFactor));
}


@override
int get hashCode => Object.hash(runtimeType,element,clarification,costRange,um,costFactor);

@override
String toString() {
  return 'StadiyaOutputView(element: $element, clarification: $clarification, costRange: $costRange, um: $um, costFactor: $costFactor)';
}


}

/// @nodoc
abstract mixin class _$StadiyaOutputViewCopyWith<$Res> implements $StadiyaOutputViewCopyWith<$Res> {
  factory _$StadiyaOutputViewCopyWith(_StadiyaOutputView value, $Res Function(_StadiyaOutputView) _then) = __$StadiyaOutputViewCopyWithImpl;
@override @useResult
$Res call({
 String element, String clarification, String costRange, String um, double costFactor
});




}
/// @nodoc
class __$StadiyaOutputViewCopyWithImpl<$Res>
    implements _$StadiyaOutputViewCopyWith<$Res> {
  __$StadiyaOutputViewCopyWithImpl(this._self, this._then);

  final _StadiyaOutputView _self;
  final $Res Function(_StadiyaOutputView) _then;

/// Create a copy of StadiyaOutputView
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? element = null,Object? clarification = null,Object? costRange = null,Object? um = null,Object? costFactor = null,}) {
  return _then(_StadiyaOutputView(
element: null == element ? _self.element : element // ignore: cast_nullable_to_non_nullable
as String,clarification: null == clarification ? _self.clarification : clarification // ignore: cast_nullable_to_non_nullable
as String,costRange: null == costRange ? _self.costRange : costRange // ignore: cast_nullable_to_non_nullable
as String,um: null == um ? _self.um : um // ignore: cast_nullable_to_non_nullable
as String,costFactor: null == costFactor ? _self.costFactor : costFactor // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on

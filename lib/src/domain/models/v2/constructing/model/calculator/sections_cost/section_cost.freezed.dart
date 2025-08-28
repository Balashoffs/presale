// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_cost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SectionCost {

 String get sectionName; double get factor; String get factorRange; SectionCost? get parent;
/// Create a copy of SectionCost
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionCostCopyWith<SectionCost> get copyWith => _$SectionCostCopyWithImpl<SectionCost>(this as SectionCost, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionCost&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.factor, factor) || other.factor == factor)&&(identical(other.factorRange, factorRange) || other.factorRange == factorRange)&&(identical(other.parent, parent) || other.parent == parent));
}


@override
int get hashCode => Object.hash(runtimeType,sectionName,factor,factorRange,parent);

@override
String toString() {
  return 'SectionCost(sectionName: $sectionName, factor: $factor, factorRange: $factorRange, parent: $parent)';
}


}

/// @nodoc
abstract mixin class $SectionCostCopyWith<$Res>  {
  factory $SectionCostCopyWith(SectionCost value, $Res Function(SectionCost) _then) = _$SectionCostCopyWithImpl;
@useResult
$Res call({
 String sectionName, double factor, String factorRange, SectionCost? parent
});


$SectionCostCopyWith<$Res>? get parent;

}
/// @nodoc
class _$SectionCostCopyWithImpl<$Res>
    implements $SectionCostCopyWith<$Res> {
  _$SectionCostCopyWithImpl(this._self, this._then);

  final SectionCost _self;
  final $Res Function(SectionCost) _then;

/// Create a copy of SectionCost
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sectionName = null,Object? factor = null,Object? factorRange = null,Object? parent = freezed,}) {
  return _then(_self.copyWith(
sectionName: null == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String,factor: null == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as double,factorRange: null == factorRange ? _self.factorRange : factorRange // ignore: cast_nullable_to_non_nullable
as String,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as SectionCost?,
  ));
}
/// Create a copy of SectionCost
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionCostCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $SectionCostCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}


/// Adds pattern-matching-related methods to [SectionCost].
extension SectionCostPatterns on SectionCost {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SectionCost value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SectionCost() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SectionCost value)  $default,){
final _that = this;
switch (_that) {
case _SectionCost():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SectionCost value)?  $default,){
final _that = this;
switch (_that) {
case _SectionCost() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sectionName,  double factor,  String factorRange,  SectionCost? parent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SectionCost() when $default != null:
return $default(_that.sectionName,_that.factor,_that.factorRange,_that.parent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sectionName,  double factor,  String factorRange,  SectionCost? parent)  $default,) {final _that = this;
switch (_that) {
case _SectionCost():
return $default(_that.sectionName,_that.factor,_that.factorRange,_that.parent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sectionName,  double factor,  String factorRange,  SectionCost? parent)?  $default,) {final _that = this;
switch (_that) {
case _SectionCost() when $default != null:
return $default(_that.sectionName,_that.factor,_that.factorRange,_that.parent);case _:
  return null;

}
}

}

/// @nodoc


class _SectionCost implements SectionCost {
  const _SectionCost({required this.sectionName, required this.factor, required this.factorRange, this.parent});
  

@override final  String sectionName;
@override final  double factor;
@override final  String factorRange;
@override final  SectionCost? parent;

/// Create a copy of SectionCost
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionCostCopyWith<_SectionCost> get copyWith => __$SectionCostCopyWithImpl<_SectionCost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SectionCost&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.factor, factor) || other.factor == factor)&&(identical(other.factorRange, factorRange) || other.factorRange == factorRange)&&(identical(other.parent, parent) || other.parent == parent));
}


@override
int get hashCode => Object.hash(runtimeType,sectionName,factor,factorRange,parent);

@override
String toString() {
  return 'SectionCost(sectionName: $sectionName, factor: $factor, factorRange: $factorRange, parent: $parent)';
}


}

/// @nodoc
abstract mixin class _$SectionCostCopyWith<$Res> implements $SectionCostCopyWith<$Res> {
  factory _$SectionCostCopyWith(_SectionCost value, $Res Function(_SectionCost) _then) = __$SectionCostCopyWithImpl;
@override @useResult
$Res call({
 String sectionName, double factor, String factorRange, SectionCost? parent
});


@override $SectionCostCopyWith<$Res>? get parent;

}
/// @nodoc
class __$SectionCostCopyWithImpl<$Res>
    implements _$SectionCostCopyWith<$Res> {
  __$SectionCostCopyWithImpl(this._self, this._then);

  final _SectionCost _self;
  final $Res Function(_SectionCost) _then;

/// Create a copy of SectionCost
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sectionName = null,Object? factor = null,Object? factorRange = null,Object? parent = freezed,}) {
  return _then(_SectionCost(
sectionName: null == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String,factor: null == factor ? _self.factor : factor // ignore: cast_nullable_to_non_nullable
as double,factorRange: null == factorRange ? _self.factorRange : factorRange // ignore: cast_nullable_to_non_nullable
as String,parent: freezed == parent ? _self.parent : parent // ignore: cast_nullable_to_non_nullable
as SectionCost?,
  ));
}

/// Create a copy of SectionCost
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionCostCopyWith<$Res>? get parent {
    if (_self.parent == null) {
    return null;
  }

  return $SectionCostCopyWith<$Res>(_self.parent!, (value) {
    return _then(_self.copyWith(parent: value));
  });
}
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dart_define_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DartDefineModel {

 String get type; DesignClass get design;
/// Create a copy of DartDefineModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DartDefineModelCopyWith<DartDefineModel> get copyWith => _$DartDefineModelCopyWithImpl<DartDefineModel>(this as DartDefineModel, _$identity);

  /// Serializes this DartDefineModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DartDefineModel&&(identical(other.type, type) || other.type == type)&&(identical(other.design, design) || other.design == design));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,design);

@override
String toString() {
  return 'DartDefineModel(type: $type, design: $design)';
}


}

/// @nodoc
abstract mixin class $DartDefineModelCopyWith<$Res>  {
  factory $DartDefineModelCopyWith(DartDefineModel value, $Res Function(DartDefineModel) _then) = _$DartDefineModelCopyWithImpl;
@useResult
$Res call({
 String type, DesignClass design
});


$DesignClassCopyWith<$Res> get design;

}
/// @nodoc
class _$DartDefineModelCopyWithImpl<$Res>
    implements $DartDefineModelCopyWith<$Res> {
  _$DartDefineModelCopyWithImpl(this._self, this._then);

  final DartDefineModel _self;
  final $Res Function(DartDefineModel) _then;

/// Create a copy of DartDefineModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? design = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,design: null == design ? _self.design : design // ignore: cast_nullable_to_non_nullable
as DesignClass,
  ));
}
/// Create a copy of DartDefineModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DesignClassCopyWith<$Res> get design {
  
  return $DesignClassCopyWith<$Res>(_self.design, (value) {
    return _then(_self.copyWith(design: value));
  });
}
}


/// Adds pattern-matching-related methods to [DartDefineModel].
extension DartDefineModelPatterns on DartDefineModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DartDefineModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DartDefineModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DartDefineModel value)  $default,){
final _that = this;
switch (_that) {
case _DartDefineModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DartDefineModel value)?  $default,){
final _that = this;
switch (_that) {
case _DartDefineModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  DesignClass design)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DartDefineModel() when $default != null:
return $default(_that.type,_that.design);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  DesignClass design)  $default,) {final _that = this;
switch (_that) {
case _DartDefineModel():
return $default(_that.type,_that.design);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  DesignClass design)?  $default,) {final _that = this;
switch (_that) {
case _DartDefineModel() when $default != null:
return $default(_that.type,_that.design);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DartDefineModel implements DartDefineModel {
  const _DartDefineModel({required this.type, required this.design});
  factory _DartDefineModel.fromJson(Map<String, dynamic> json) => _$DartDefineModelFromJson(json);

@override final  String type;
@override final  DesignClass design;

/// Create a copy of DartDefineModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DartDefineModelCopyWith<_DartDefineModel> get copyWith => __$DartDefineModelCopyWithImpl<_DartDefineModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DartDefineModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DartDefineModel&&(identical(other.type, type) || other.type == type)&&(identical(other.design, design) || other.design == design));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,design);

@override
String toString() {
  return 'DartDefineModel(type: $type, design: $design)';
}


}

/// @nodoc
abstract mixin class _$DartDefineModelCopyWith<$Res> implements $DartDefineModelCopyWith<$Res> {
  factory _$DartDefineModelCopyWith(_DartDefineModel value, $Res Function(_DartDefineModel) _then) = __$DartDefineModelCopyWithImpl;
@override @useResult
$Res call({
 String type, DesignClass design
});


@override $DesignClassCopyWith<$Res> get design;

}
/// @nodoc
class __$DartDefineModelCopyWithImpl<$Res>
    implements _$DartDefineModelCopyWith<$Res> {
  __$DartDefineModelCopyWithImpl(this._self, this._then);

  final _DartDefineModel _self;
  final $Res Function(_DartDefineModel) _then;

/// Create a copy of DartDefineModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? design = null,}) {
  return _then(_DartDefineModel(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,design: null == design ? _self.design : design // ignore: cast_nullable_to_non_nullable
as DesignClass,
  ));
}

/// Create a copy of DartDefineModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DesignClassCopyWith<$Res> get design {
  
  return $DesignClassCopyWith<$Res>(_self.design, (value) {
    return _then(_self.copyWith(design: value));
  });
}
}

// dart format on

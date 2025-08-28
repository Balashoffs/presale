// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stages_selector_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StagesSelectorState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StagesSelectorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StagesSelectorState()';
}


}

/// @nodoc
class $StagesSelectorStateCopyWith<$Res>  {
$StagesSelectorStateCopyWith(StagesSelectorState _, $Res Function(StagesSelectorState) __);
}


/// Adds pattern-matching-related methods to [StagesSelectorState].
extension StagesSelectorStatePatterns on StagesSelectorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Stage value)?  stage,TResult Function( _Section value)?  section,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Stage() when stage != null:
return stage(_that);case _Section() when section != null:
return section(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Stage value)  stage,required TResult Function( _Section value)  section,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Stage():
return stage(_that);case _Section():
return section(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Stage value)?  stage,TResult? Function( _Section value)?  section,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Stage() when stage != null:
return stage(_that);case _Section() when section != null:
return section(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( StageDataViewModel stage)?  stage,TResult Function( SectionDataVewModel section)?  section,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Stage() when stage != null:
return stage(_that.stage);case _Section() when section != null:
return section(_that.section);case _Error() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( StageDataViewModel stage)  stage,required TResult Function( SectionDataVewModel section)  section,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Stage():
return stage(_that.stage);case _Section():
return section(_that.section);case _Error():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( StageDataViewModel stage)?  stage,TResult? Function( SectionDataVewModel section)?  section,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Stage() when stage != null:
return stage(_that.stage);case _Section() when section != null:
return section(_that.section);case _Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements StagesSelectorState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StagesSelectorState.initial()';
}


}




/// @nodoc


class _Stage implements StagesSelectorState {
  const _Stage(this.stage);
  

 final  StageDataViewModel stage;

/// Create a copy of StagesSelectorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StageCopyWith<_Stage> get copyWith => __$StageCopyWithImpl<_Stage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Stage&&(identical(other.stage, stage) || other.stage == stage));
}


@override
int get hashCode => Object.hash(runtimeType,stage);

@override
String toString() {
  return 'StagesSelectorState.stage(stage: $stage)';
}


}

/// @nodoc
abstract mixin class _$StageCopyWith<$Res> implements $StagesSelectorStateCopyWith<$Res> {
  factory _$StageCopyWith(_Stage value, $Res Function(_Stage) _then) = __$StageCopyWithImpl;
@useResult
$Res call({
 StageDataViewModel stage
});


$StageDataViewModelCopyWith<$Res> get stage;

}
/// @nodoc
class __$StageCopyWithImpl<$Res>
    implements _$StageCopyWith<$Res> {
  __$StageCopyWithImpl(this._self, this._then);

  final _Stage _self;
  final $Res Function(_Stage) _then;

/// Create a copy of StagesSelectorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stage = null,}) {
  return _then(_Stage(
null == stage ? _self.stage : stage // ignore: cast_nullable_to_non_nullable
as StageDataViewModel,
  ));
}

/// Create a copy of StagesSelectorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StageDataViewModelCopyWith<$Res> get stage {
  
  return $StageDataViewModelCopyWith<$Res>(_self.stage, (value) {
    return _then(_self.copyWith(stage: value));
  });
}
}

/// @nodoc


class _Section implements StagesSelectorState {
  const _Section(this.section);
  

 final  SectionDataVewModel section;

/// Create a copy of StagesSelectorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionCopyWith<_Section> get copyWith => __$SectionCopyWithImpl<_Section>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Section&&(identical(other.section, section) || other.section == section));
}


@override
int get hashCode => Object.hash(runtimeType,section);

@override
String toString() {
  return 'StagesSelectorState.section(section: $section)';
}


}

/// @nodoc
abstract mixin class _$SectionCopyWith<$Res> implements $StagesSelectorStateCopyWith<$Res> {
  factory _$SectionCopyWith(_Section value, $Res Function(_Section) _then) = __$SectionCopyWithImpl;
@useResult
$Res call({
 SectionDataVewModel section
});


$SectionDataVewModelCopyWith<$Res> get section;

}
/// @nodoc
class __$SectionCopyWithImpl<$Res>
    implements _$SectionCopyWith<$Res> {
  __$SectionCopyWithImpl(this._self, this._then);

  final _Section _self;
  final $Res Function(_Section) _then;

/// Create a copy of StagesSelectorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? section = null,}) {
  return _then(_Section(
null == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as SectionDataVewModel,
  ));
}

/// Create a copy of StagesSelectorState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionDataVewModelCopyWith<$Res> get section {
  
  return $SectionDataVewModelCopyWith<$Res>(_self.section, (value) {
    return _then(_self.copyWith(section: value));
  });
}
}

/// @nodoc


class _Error implements StagesSelectorState {
  const _Error(this.error);
  

 final  String error;

/// Create a copy of StagesSelectorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'StagesSelectorState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $StagesSelectorStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of StagesSelectorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_Error(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sections_table_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SectionsTableState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionsTableState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SectionsTableState()';
}


}

/// @nodoc
class $SectionsTableStateCopyWith<$Res>  {
$SectionsTableStateCopyWith(SectionsTableState _, $Res Function(SectionsTableState) __);
}


/// Adds pattern-matching-related methods to [SectionsTableState].
extension SectionsTableStatePatterns on SectionsTableState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Error value)?  error,TResult Function( _Sections value)?  sections,TResult Function( _nextPage value)?  nextPage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Error() when error != null:
return error(_that);case _Sections() when sections != null:
return sections(_that);case _nextPage() when nextPage != null:
return nextPage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Error value)  error,required TResult Function( _Sections value)  sections,required TResult Function( _nextPage value)  nextPage,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Error():
return error(_that);case _Sections():
return sections(_that);case _nextPage():
return nextPage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Error value)?  error,TResult? Function( _Sections value)?  sections,TResult? Function( _nextPage value)?  nextPage,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Error() when error != null:
return error(_that);case _Sections() when sections != null:
return sections(_that);case _nextPage() when nextPage != null:
return nextPage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String errorText)?  error,TResult Function( Map<String, List<SectionData>> sectionsData)?  sections,TResult Function()?  nextPage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Error() when error != null:
return error(_that.errorText);case _Sections() when sections != null:
return sections(_that.sectionsData);case _nextPage() when nextPage != null:
return nextPage();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String errorText)  error,required TResult Function( Map<String, List<SectionData>> sectionsData)  sections,required TResult Function()  nextPage,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Error():
return error(_that.errorText);case _Sections():
return sections(_that.sectionsData);case _nextPage():
return nextPage();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String errorText)?  error,TResult? Function( Map<String, List<SectionData>> sectionsData)?  sections,TResult? Function()?  nextPage,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Error() when error != null:
return error(_that.errorText);case _Sections() when sections != null:
return sections(_that.sectionsData);case _nextPage() when nextPage != null:
return nextPage();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements SectionsTableState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SectionsTableState.initial()';
}


}




/// @nodoc


class _Error implements SectionsTableState {
  const _Error(this.errorText);
  

 final  String errorText;

/// Create a copy of SectionsTableState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.errorText, errorText) || other.errorText == errorText));
}


@override
int get hashCode => Object.hash(runtimeType,errorText);

@override
String toString() {
  return 'SectionsTableState.error(errorText: $errorText)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $SectionsTableStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String errorText
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of SectionsTableState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorText = null,}) {
  return _then(_Error(
null == errorText ? _self.errorText : errorText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Sections implements SectionsTableState {
  const _Sections(final  Map<String, List<SectionData>> sectionsData): _sectionsData = sectionsData;
  

 final  Map<String, List<SectionData>> _sectionsData;
 Map<String, List<SectionData>> get sectionsData {
  if (_sectionsData is EqualUnmodifiableMapView) return _sectionsData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_sectionsData);
}


/// Create a copy of SectionsTableState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionsCopyWith<_Sections> get copyWith => __$SectionsCopyWithImpl<_Sections>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sections&&const DeepCollectionEquality().equals(other._sectionsData, _sectionsData));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_sectionsData));

@override
String toString() {
  return 'SectionsTableState.sections(sectionsData: $sectionsData)';
}


}

/// @nodoc
abstract mixin class _$SectionsCopyWith<$Res> implements $SectionsTableStateCopyWith<$Res> {
  factory _$SectionsCopyWith(_Sections value, $Res Function(_Sections) _then) = __$SectionsCopyWithImpl;
@useResult
$Res call({
 Map<String, List<SectionData>> sectionsData
});




}
/// @nodoc
class __$SectionsCopyWithImpl<$Res>
    implements _$SectionsCopyWith<$Res> {
  __$SectionsCopyWithImpl(this._self, this._then);

  final _Sections _self;
  final $Res Function(_Sections) _then;

/// Create a copy of SectionsTableState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sectionsData = null,}) {
  return _then(_Sections(
null == sectionsData ? _self._sectionsData : sectionsData // ignore: cast_nullable_to_non_nullable
as Map<String, List<SectionData>>,
  ));
}


}

/// @nodoc


class _nextPage implements SectionsTableState {
  const _nextPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _nextPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SectionsTableState.nextPage()';
}


}




// dart format on

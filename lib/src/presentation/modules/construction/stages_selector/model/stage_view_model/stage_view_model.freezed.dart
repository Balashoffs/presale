// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stage_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StageDataViewModel {

 StageData get stageInfo; List<StageData> get subStages;
/// Create a copy of StageDataViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StageDataViewModelCopyWith<StageDataViewModel> get copyWith => _$StageDataViewModelCopyWithImpl<StageDataViewModel>(this as StageDataViewModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StageDataViewModel&&(identical(other.stageInfo, stageInfo) || other.stageInfo == stageInfo)&&const DeepCollectionEquality().equals(other.subStages, subStages));
}


@override
int get hashCode => Object.hash(runtimeType,stageInfo,const DeepCollectionEquality().hash(subStages));

@override
String toString() {
  return 'StageDataViewModel(stageInfo: $stageInfo, subStages: $subStages)';
}


}

/// @nodoc
abstract mixin class $StageDataViewModelCopyWith<$Res>  {
  factory $StageDataViewModelCopyWith(StageDataViewModel value, $Res Function(StageDataViewModel) _then) = _$StageDataViewModelCopyWithImpl;
@useResult
$Res call({
 StageData stageInfo, List<StageData> subStages
});


$StageDataCopyWith<$Res> get stageInfo;

}
/// @nodoc
class _$StageDataViewModelCopyWithImpl<$Res>
    implements $StageDataViewModelCopyWith<$Res> {
  _$StageDataViewModelCopyWithImpl(this._self, this._then);

  final StageDataViewModel _self;
  final $Res Function(StageDataViewModel) _then;

/// Create a copy of StageDataViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stageInfo = null,Object? subStages = null,}) {
  return _then(_self.copyWith(
stageInfo: null == stageInfo ? _self.stageInfo : stageInfo // ignore: cast_nullable_to_non_nullable
as StageData,subStages: null == subStages ? _self.subStages : subStages // ignore: cast_nullable_to_non_nullable
as List<StageData>,
  ));
}
/// Create a copy of StageDataViewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StageDataCopyWith<$Res> get stageInfo {
  
  return $StageDataCopyWith<$Res>(_self.stageInfo, (value) {
    return _then(_self.copyWith(stageInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [StageDataViewModel].
extension StageDataViewModelPatterns on StageDataViewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StageDataViewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StageDataViewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StageDataViewModel value)  $default,){
final _that = this;
switch (_that) {
case _StageDataViewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StageDataViewModel value)?  $default,){
final _that = this;
switch (_that) {
case _StageDataViewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StageData stageInfo,  List<StageData> subStages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StageDataViewModel() when $default != null:
return $default(_that.stageInfo,_that.subStages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StageData stageInfo,  List<StageData> subStages)  $default,) {final _that = this;
switch (_that) {
case _StageDataViewModel():
return $default(_that.stageInfo,_that.subStages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StageData stageInfo,  List<StageData> subStages)?  $default,) {final _that = this;
switch (_that) {
case _StageDataViewModel() when $default != null:
return $default(_that.stageInfo,_that.subStages);case _:
  return null;

}
}

}

/// @nodoc


class _StageDataViewModel implements StageDataViewModel {
  const _StageDataViewModel({required this.stageInfo, required final  List<StageData> subStages}): _subStages = subStages;
  

@override final  StageData stageInfo;
 final  List<StageData> _subStages;
@override List<StageData> get subStages {
  if (_subStages is EqualUnmodifiableListView) return _subStages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subStages);
}


/// Create a copy of StageDataViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StageDataViewModelCopyWith<_StageDataViewModel> get copyWith => __$StageDataViewModelCopyWithImpl<_StageDataViewModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StageDataViewModel&&(identical(other.stageInfo, stageInfo) || other.stageInfo == stageInfo)&&const DeepCollectionEquality().equals(other._subStages, _subStages));
}


@override
int get hashCode => Object.hash(runtimeType,stageInfo,const DeepCollectionEquality().hash(_subStages));

@override
String toString() {
  return 'StageDataViewModel(stageInfo: $stageInfo, subStages: $subStages)';
}


}

/// @nodoc
abstract mixin class _$StageDataViewModelCopyWith<$Res> implements $StageDataViewModelCopyWith<$Res> {
  factory _$StageDataViewModelCopyWith(_StageDataViewModel value, $Res Function(_StageDataViewModel) _then) = __$StageDataViewModelCopyWithImpl;
@override @useResult
$Res call({
 StageData stageInfo, List<StageData> subStages
});


@override $StageDataCopyWith<$Res> get stageInfo;

}
/// @nodoc
class __$StageDataViewModelCopyWithImpl<$Res>
    implements _$StageDataViewModelCopyWith<$Res> {
  __$StageDataViewModelCopyWithImpl(this._self, this._then);

  final _StageDataViewModel _self;
  final $Res Function(_StageDataViewModel) _then;

/// Create a copy of StageDataViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stageInfo = null,Object? subStages = null,}) {
  return _then(_StageDataViewModel(
stageInfo: null == stageInfo ? _self.stageInfo : stageInfo // ignore: cast_nullable_to_non_nullable
as StageData,subStages: null == subStages ? _self._subStages : subStages // ignore: cast_nullable_to_non_nullable
as List<StageData>,
  ));
}

/// Create a copy of StageDataViewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StageDataCopyWith<$Res> get stageInfo {
  
  return $StageDataCopyWith<$Res>(_self.stageInfo, (value) {
    return _then(_self.copyWith(stageInfo: value));
  });
}
}

/// @nodoc
mixin _$SectionDataVewModel {

 StageData get stageInfo; List<SectionData> get subStages;
/// Create a copy of SectionDataVewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SectionDataVewModelCopyWith<SectionDataVewModel> get copyWith => _$SectionDataVewModelCopyWithImpl<SectionDataVewModel>(this as SectionDataVewModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SectionDataVewModel&&(identical(other.stageInfo, stageInfo) || other.stageInfo == stageInfo)&&const DeepCollectionEquality().equals(other.subStages, subStages));
}


@override
int get hashCode => Object.hash(runtimeType,stageInfo,const DeepCollectionEquality().hash(subStages));

@override
String toString() {
  return 'SectionDataVewModel(stageInfo: $stageInfo, subStages: $subStages)';
}


}

/// @nodoc
abstract mixin class $SectionDataVewModelCopyWith<$Res>  {
  factory $SectionDataVewModelCopyWith(SectionDataVewModel value, $Res Function(SectionDataVewModel) _then) = _$SectionDataVewModelCopyWithImpl;
@useResult
$Res call({
 StageData stageInfo, List<SectionData> subStages
});


$StageDataCopyWith<$Res> get stageInfo;

}
/// @nodoc
class _$SectionDataVewModelCopyWithImpl<$Res>
    implements $SectionDataVewModelCopyWith<$Res> {
  _$SectionDataVewModelCopyWithImpl(this._self, this._then);

  final SectionDataVewModel _self;
  final $Res Function(SectionDataVewModel) _then;

/// Create a copy of SectionDataVewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stageInfo = null,Object? subStages = null,}) {
  return _then(_self.copyWith(
stageInfo: null == stageInfo ? _self.stageInfo : stageInfo // ignore: cast_nullable_to_non_nullable
as StageData,subStages: null == subStages ? _self.subStages : subStages // ignore: cast_nullable_to_non_nullable
as List<SectionData>,
  ));
}
/// Create a copy of SectionDataVewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StageDataCopyWith<$Res> get stageInfo {
  
  return $StageDataCopyWith<$Res>(_self.stageInfo, (value) {
    return _then(_self.copyWith(stageInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [SectionDataVewModel].
extension SectionDataVewModelPatterns on SectionDataVewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SectionDataVewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SectionDataVewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SectionDataVewModel value)  $default,){
final _that = this;
switch (_that) {
case _SectionDataVewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SectionDataVewModel value)?  $default,){
final _that = this;
switch (_that) {
case _SectionDataVewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StageData stageInfo,  List<SectionData> subStages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SectionDataVewModel() when $default != null:
return $default(_that.stageInfo,_that.subStages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StageData stageInfo,  List<SectionData> subStages)  $default,) {final _that = this;
switch (_that) {
case _SectionDataVewModel():
return $default(_that.stageInfo,_that.subStages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StageData stageInfo,  List<SectionData> subStages)?  $default,) {final _that = this;
switch (_that) {
case _SectionDataVewModel() when $default != null:
return $default(_that.stageInfo,_that.subStages);case _:
  return null;

}
}

}

/// @nodoc


class _SectionDataVewModel implements SectionDataVewModel {
  const _SectionDataVewModel({required this.stageInfo, required final  List<SectionData> subStages}): _subStages = subStages;
  

@override final  StageData stageInfo;
 final  List<SectionData> _subStages;
@override List<SectionData> get subStages {
  if (_subStages is EqualUnmodifiableListView) return _subStages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subStages);
}


/// Create a copy of SectionDataVewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SectionDataVewModelCopyWith<_SectionDataVewModel> get copyWith => __$SectionDataVewModelCopyWithImpl<_SectionDataVewModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SectionDataVewModel&&(identical(other.stageInfo, stageInfo) || other.stageInfo == stageInfo)&&const DeepCollectionEquality().equals(other._subStages, _subStages));
}


@override
int get hashCode => Object.hash(runtimeType,stageInfo,const DeepCollectionEquality().hash(_subStages));

@override
String toString() {
  return 'SectionDataVewModel(stageInfo: $stageInfo, subStages: $subStages)';
}


}

/// @nodoc
abstract mixin class _$SectionDataVewModelCopyWith<$Res> implements $SectionDataVewModelCopyWith<$Res> {
  factory _$SectionDataVewModelCopyWith(_SectionDataVewModel value, $Res Function(_SectionDataVewModel) _then) = __$SectionDataVewModelCopyWithImpl;
@override @useResult
$Res call({
 StageData stageInfo, List<SectionData> subStages
});


@override $StageDataCopyWith<$Res> get stageInfo;

}
/// @nodoc
class __$SectionDataVewModelCopyWithImpl<$Res>
    implements _$SectionDataVewModelCopyWith<$Res> {
  __$SectionDataVewModelCopyWithImpl(this._self, this._then);

  final _SectionDataVewModel _self;
  final $Res Function(_SectionDataVewModel) _then;

/// Create a copy of SectionDataVewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stageInfo = null,Object? subStages = null,}) {
  return _then(_SectionDataVewModel(
stageInfo: null == stageInfo ? _self.stageInfo : stageInfo // ignore: cast_nullable_to_non_nullable
as StageData,subStages: null == subStages ? _self._subStages : subStages // ignore: cast_nullable_to_non_nullable
as List<SectionData>,
  ));
}

/// Create a copy of SectionDataVewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StageDataCopyWith<$Res> get stageInfo {
  
  return $StageDataCopyWith<$Res>(_self.stageInfo, (value) {
    return _then(_self.copyWith(stageInfo: value));
  });
}
}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StagesTableState {

 List<StagesTableEntity> get entities;
/// Create a copy of StagesTableState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StagesTableStateCopyWith<StagesTableState> get copyWith => _$StagesTableStateCopyWithImpl<StagesTableState>(this as StagesTableState, _$identity);

  /// Serializes this StagesTableState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StagesTableState&&const DeepCollectionEquality().equals(other.entities, entities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(entities));

@override
String toString() {
  return 'StagesTableState(entities: $entities)';
}


}

/// @nodoc
abstract mixin class $StagesTableStateCopyWith<$Res>  {
  factory $StagesTableStateCopyWith(StagesTableState value, $Res Function(StagesTableState) _then) = _$StagesTableStateCopyWithImpl;
@useResult
$Res call({
 List<StagesTableEntity> entities
});




}
/// @nodoc
class _$StagesTableStateCopyWithImpl<$Res>
    implements $StagesTableStateCopyWith<$Res> {
  _$StagesTableStateCopyWithImpl(this._self, this._then);

  final StagesTableState _self;
  final $Res Function(StagesTableState) _then;

/// Create a copy of StagesTableState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? entities = null,}) {
  return _then(_self.copyWith(
entities: null == entities ? _self.entities : entities // ignore: cast_nullable_to_non_nullable
as List<StagesTableEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [StagesTableState].
extension StagesTableStatePatterns on StagesTableState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StagesTableState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StagesTableState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StagesTableState value)  $default,){
final _that = this;
switch (_that) {
case _StagesTableState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StagesTableState value)?  $default,){
final _that = this;
switch (_that) {
case _StagesTableState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<StagesTableEntity> entities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StagesTableState() when $default != null:
return $default(_that.entities);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<StagesTableEntity> entities)  $default,) {final _that = this;
switch (_that) {
case _StagesTableState():
return $default(_that.entities);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<StagesTableEntity> entities)?  $default,) {final _that = this;
switch (_that) {
case _StagesTableState() when $default != null:
return $default(_that.entities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StagesTableState extends StagesTableState {
  const _StagesTableState({final  List<StagesTableEntity> entities = const []}): _entities = entities,super._();
  factory _StagesTableState.fromJson(Map<String, dynamic> json) => _$StagesTableStateFromJson(json);

 final  List<StagesTableEntity> _entities;
@override@JsonKey() List<StagesTableEntity> get entities {
  if (_entities is EqualUnmodifiableListView) return _entities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entities);
}


/// Create a copy of StagesTableState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StagesTableStateCopyWith<_StagesTableState> get copyWith => __$StagesTableStateCopyWithImpl<_StagesTableState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StagesTableStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StagesTableState&&const DeepCollectionEquality().equals(other._entities, _entities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_entities));

@override
String toString() {
  return 'StagesTableState(entities: $entities)';
}


}

/// @nodoc
abstract mixin class _$StagesTableStateCopyWith<$Res> implements $StagesTableStateCopyWith<$Res> {
  factory _$StagesTableStateCopyWith(_StagesTableState value, $Res Function(_StagesTableState) _then) = __$StagesTableStateCopyWithImpl;
@override @useResult
$Res call({
 List<StagesTableEntity> entities
});




}
/// @nodoc
class __$StagesTableStateCopyWithImpl<$Res>
    implements _$StagesTableStateCopyWith<$Res> {
  __$StagesTableStateCopyWithImpl(this._self, this._then);

  final _StagesTableState _self;
  final $Res Function(_StagesTableState) _then;

/// Create a copy of StagesTableState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? entities = null,}) {
  return _then(_StagesTableState(
entities: null == entities ? _self._entities : entities // ignore: cast_nullable_to_non_nullable
as List<StagesTableEntity>,
  ));
}


}


/// @nodoc
mixin _$StagesTableEntity {

 Section? get section; String? get sectionName; double get coefficient; double? get costInDay; int? get durationOfWork; double? get cost;
/// Create a copy of StagesTableEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StagesTableEntityCopyWith<StagesTableEntity> get copyWith => _$StagesTableEntityCopyWithImpl<StagesTableEntity>(this as StagesTableEntity, _$identity);

  /// Serializes this StagesTableEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StagesTableEntity&&(identical(other.section, section) || other.section == section)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.coefficient, coefficient) || other.coefficient == coefficient)&&(identical(other.costInDay, costInDay) || other.costInDay == costInDay)&&(identical(other.durationOfWork, durationOfWork) || other.durationOfWork == durationOfWork)&&(identical(other.cost, cost) || other.cost == cost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,section,sectionName,coefficient,costInDay,durationOfWork,cost);

@override
String toString() {
  return 'StagesTableEntity(section: $section, sectionName: $sectionName, coefficient: $coefficient, costInDay: $costInDay, durationOfWork: $durationOfWork, cost: $cost)';
}


}

/// @nodoc
abstract mixin class $StagesTableEntityCopyWith<$Res>  {
  factory $StagesTableEntityCopyWith(StagesTableEntity value, $Res Function(StagesTableEntity) _then) = _$StagesTableEntityCopyWithImpl;
@useResult
$Res call({
 Section? section, String? sectionName, double coefficient, double? costInDay, int? durationOfWork, double? cost
});


$SectionCopyWith<$Res>? get section;

}
/// @nodoc
class _$StagesTableEntityCopyWithImpl<$Res>
    implements $StagesTableEntityCopyWith<$Res> {
  _$StagesTableEntityCopyWithImpl(this._self, this._then);

  final StagesTableEntity _self;
  final $Res Function(StagesTableEntity) _then;

/// Create a copy of StagesTableEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? section = freezed,Object? sectionName = freezed,Object? coefficient = null,Object? costInDay = freezed,Object? durationOfWork = freezed,Object? cost = freezed,}) {
  return _then(_self.copyWith(
section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as Section?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,coefficient: null == coefficient ? _self.coefficient : coefficient // ignore: cast_nullable_to_non_nullable
as double,costInDay: freezed == costInDay ? _self.costInDay : costInDay // ignore: cast_nullable_to_non_nullable
as double?,durationOfWork: freezed == durationOfWork ? _self.durationOfWork : durationOfWork // ignore: cast_nullable_to_non_nullable
as int?,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}
/// Create a copy of StagesTableEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionCopyWith<$Res>? get section {
    if (_self.section == null) {
    return null;
  }

  return $SectionCopyWith<$Res>(_self.section!, (value) {
    return _then(_self.copyWith(section: value));
  });
}
}


/// Adds pattern-matching-related methods to [StagesTableEntity].
extension StagesTableEntityPatterns on StagesTableEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StagesTableEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StagesTableEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StagesTableEntity value)  $default,){
final _that = this;
switch (_that) {
case _StagesTableEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StagesTableEntity value)?  $default,){
final _that = this;
switch (_that) {
case _StagesTableEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Section? section,  String? sectionName,  double coefficient,  double? costInDay,  int? durationOfWork,  double? cost)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StagesTableEntity() when $default != null:
return $default(_that.section,_that.sectionName,_that.coefficient,_that.costInDay,_that.durationOfWork,_that.cost);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Section? section,  String? sectionName,  double coefficient,  double? costInDay,  int? durationOfWork,  double? cost)  $default,) {final _that = this;
switch (_that) {
case _StagesTableEntity():
return $default(_that.section,_that.sectionName,_that.coefficient,_that.costInDay,_that.durationOfWork,_that.cost);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Section? section,  String? sectionName,  double coefficient,  double? costInDay,  int? durationOfWork,  double? cost)?  $default,) {final _that = this;
switch (_that) {
case _StagesTableEntity() when $default != null:
return $default(_that.section,_that.sectionName,_that.coefficient,_that.costInDay,_that.durationOfWork,_that.cost);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StagesTableEntity extends StagesTableEntity {
  const _StagesTableEntity({this.section, this.sectionName, this.coefficient = 1, this.costInDay, this.durationOfWork, this.cost}): super._();
  factory _StagesTableEntity.fromJson(Map<String, dynamic> json) => _$StagesTableEntityFromJson(json);

@override final  Section? section;
@override final  String? sectionName;
@override@JsonKey() final  double coefficient;
@override final  double? costInDay;
@override final  int? durationOfWork;
@override final  double? cost;

/// Create a copy of StagesTableEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StagesTableEntityCopyWith<_StagesTableEntity> get copyWith => __$StagesTableEntityCopyWithImpl<_StagesTableEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StagesTableEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StagesTableEntity&&(identical(other.section, section) || other.section == section)&&(identical(other.sectionName, sectionName) || other.sectionName == sectionName)&&(identical(other.coefficient, coefficient) || other.coefficient == coefficient)&&(identical(other.costInDay, costInDay) || other.costInDay == costInDay)&&(identical(other.durationOfWork, durationOfWork) || other.durationOfWork == durationOfWork)&&(identical(other.cost, cost) || other.cost == cost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,section,sectionName,coefficient,costInDay,durationOfWork,cost);

@override
String toString() {
  return 'StagesTableEntity(section: $section, sectionName: $sectionName, coefficient: $coefficient, costInDay: $costInDay, durationOfWork: $durationOfWork, cost: $cost)';
}


}

/// @nodoc
abstract mixin class _$StagesTableEntityCopyWith<$Res> implements $StagesTableEntityCopyWith<$Res> {
  factory _$StagesTableEntityCopyWith(_StagesTableEntity value, $Res Function(_StagesTableEntity) _then) = __$StagesTableEntityCopyWithImpl;
@override @useResult
$Res call({
 Section? section, String? sectionName, double coefficient, double? costInDay, int? durationOfWork, double? cost
});


@override $SectionCopyWith<$Res>? get section;

}
/// @nodoc
class __$StagesTableEntityCopyWithImpl<$Res>
    implements _$StagesTableEntityCopyWith<$Res> {
  __$StagesTableEntityCopyWithImpl(this._self, this._then);

  final _StagesTableEntity _self;
  final $Res Function(_StagesTableEntity) _then;

/// Create a copy of StagesTableEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? section = freezed,Object? sectionName = freezed,Object? coefficient = null,Object? costInDay = freezed,Object? durationOfWork = freezed,Object? cost = freezed,}) {
  return _then(_StagesTableEntity(
section: freezed == section ? _self.section : section // ignore: cast_nullable_to_non_nullable
as Section?,sectionName: freezed == sectionName ? _self.sectionName : sectionName // ignore: cast_nullable_to_non_nullable
as String?,coefficient: null == coefficient ? _self.coefficient : coefficient // ignore: cast_nullable_to_non_nullable
as double,costInDay: freezed == costInDay ? _self.costInDay : costInDay // ignore: cast_nullable_to_non_nullable
as double?,durationOfWork: freezed == durationOfWork ? _self.durationOfWork : durationOfWork // ignore: cast_nullable_to_non_nullable
as int?,cost: freezed == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

/// Create a copy of StagesTableEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectionCopyWith<$Res>? get section {
    if (_self.section == null) {
    return null;
  }

  return $SectionCopyWith<$Res>(_self.section!, (value) {
    return _then(_self.copyWith(section: value));
  });
}
}

// dart format on

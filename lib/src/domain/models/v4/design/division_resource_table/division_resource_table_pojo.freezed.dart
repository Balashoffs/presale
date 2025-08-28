// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division_resource_table_pojo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DivisionResourceTableWithTypePojo {

 DivisionType get divisionType; List<DivisionResourceRowPojo> get rows;
/// Create a copy of DivisionResourceTableWithTypePojo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivisionResourceTableWithTypePojoCopyWith<DivisionResourceTableWithTypePojo> get copyWith => _$DivisionResourceTableWithTypePojoCopyWithImpl<DivisionResourceTableWithTypePojo>(this as DivisionResourceTableWithTypePojo, _$identity);

  /// Serializes this DivisionResourceTableWithTypePojo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DivisionResourceTableWithTypePojo&&(identical(other.divisionType, divisionType) || other.divisionType == divisionType)&&const DeepCollectionEquality().equals(other.rows, rows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,divisionType,const DeepCollectionEquality().hash(rows));

@override
String toString() {
  return 'DivisionResourceTableWithTypePojo(divisionType: $divisionType, rows: $rows)';
}


}

/// @nodoc
abstract mixin class $DivisionResourceTableWithTypePojoCopyWith<$Res>  {
  factory $DivisionResourceTableWithTypePojoCopyWith(DivisionResourceTableWithTypePojo value, $Res Function(DivisionResourceTableWithTypePojo) _then) = _$DivisionResourceTableWithTypePojoCopyWithImpl;
@useResult
$Res call({
 DivisionType divisionType, List<DivisionResourceRowPojo> rows
});




}
/// @nodoc
class _$DivisionResourceTableWithTypePojoCopyWithImpl<$Res>
    implements $DivisionResourceTableWithTypePojoCopyWith<$Res> {
  _$DivisionResourceTableWithTypePojoCopyWithImpl(this._self, this._then);

  final DivisionResourceTableWithTypePojo _self;
  final $Res Function(DivisionResourceTableWithTypePojo) _then;

/// Create a copy of DivisionResourceTableWithTypePojo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? divisionType = null,Object? rows = null,}) {
  return _then(_self.copyWith(
divisionType: null == divisionType ? _self.divisionType : divisionType // ignore: cast_nullable_to_non_nullable
as DivisionType,rows: null == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as List<DivisionResourceRowPojo>,
  ));
}

}


/// Adds pattern-matching-related methods to [DivisionResourceTableWithTypePojo].
extension DivisionResourceTableWithTypePojoPatterns on DivisionResourceTableWithTypePojo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DivisionResourceTableWithTypePojo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DivisionResourceTableWithTypePojo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DivisionResourceTableWithTypePojo value)  $default,){
final _that = this;
switch (_that) {
case _DivisionResourceTableWithTypePojo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DivisionResourceTableWithTypePojo value)?  $default,){
final _that = this;
switch (_that) {
case _DivisionResourceTableWithTypePojo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DivisionType divisionType,  List<DivisionResourceRowPojo> rows)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DivisionResourceTableWithTypePojo() when $default != null:
return $default(_that.divisionType,_that.rows);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DivisionType divisionType,  List<DivisionResourceRowPojo> rows)  $default,) {final _that = this;
switch (_that) {
case _DivisionResourceTableWithTypePojo():
return $default(_that.divisionType,_that.rows);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DivisionType divisionType,  List<DivisionResourceRowPojo> rows)?  $default,) {final _that = this;
switch (_that) {
case _DivisionResourceTableWithTypePojo() when $default != null:
return $default(_that.divisionType,_that.rows);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DivisionResourceTableWithTypePojo implements DivisionResourceTableWithTypePojo {
  const _DivisionResourceTableWithTypePojo({required this.divisionType, required final  List<DivisionResourceRowPojo> rows}): _rows = rows;
  factory _DivisionResourceTableWithTypePojo.fromJson(Map<String, dynamic> json) => _$DivisionResourceTableWithTypePojoFromJson(json);

@override final  DivisionType divisionType;
 final  List<DivisionResourceRowPojo> _rows;
@override List<DivisionResourceRowPojo> get rows {
  if (_rows is EqualUnmodifiableListView) return _rows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rows);
}


/// Create a copy of DivisionResourceTableWithTypePojo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DivisionResourceTableWithTypePojoCopyWith<_DivisionResourceTableWithTypePojo> get copyWith => __$DivisionResourceTableWithTypePojoCopyWithImpl<_DivisionResourceTableWithTypePojo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DivisionResourceTableWithTypePojoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DivisionResourceTableWithTypePojo&&(identical(other.divisionType, divisionType) || other.divisionType == divisionType)&&const DeepCollectionEquality().equals(other._rows, _rows));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,divisionType,const DeepCollectionEquality().hash(_rows));

@override
String toString() {
  return 'DivisionResourceTableWithTypePojo(divisionType: $divisionType, rows: $rows)';
}


}

/// @nodoc
abstract mixin class _$DivisionResourceTableWithTypePojoCopyWith<$Res> implements $DivisionResourceTableWithTypePojoCopyWith<$Res> {
  factory _$DivisionResourceTableWithTypePojoCopyWith(_DivisionResourceTableWithTypePojo value, $Res Function(_DivisionResourceTableWithTypePojo) _then) = __$DivisionResourceTableWithTypePojoCopyWithImpl;
@override @useResult
$Res call({
 DivisionType divisionType, List<DivisionResourceRowPojo> rows
});




}
/// @nodoc
class __$DivisionResourceTableWithTypePojoCopyWithImpl<$Res>
    implements _$DivisionResourceTableWithTypePojoCopyWith<$Res> {
  __$DivisionResourceTableWithTypePojoCopyWithImpl(this._self, this._then);

  final _DivisionResourceTableWithTypePojo _self;
  final $Res Function(_DivisionResourceTableWithTypePojo) _then;

/// Create a copy of DivisionResourceTableWithTypePojo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? divisionType = null,Object? rows = null,}) {
  return _then(_DivisionResourceTableWithTypePojo(
divisionType: null == divisionType ? _self.divisionType : divisionType // ignore: cast_nullable_to_non_nullable
as DivisionType,rows: null == rows ? _self._rows : rows // ignore: cast_nullable_to_non_nullable
as List<DivisionResourceRowPojo>,
  ));
}


}

// dart format on

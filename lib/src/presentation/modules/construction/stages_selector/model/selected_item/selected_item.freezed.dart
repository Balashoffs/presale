// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StagesSelectorSelectedItem {

 String get id; String get name; bool get isSelected;
/// Create a copy of StagesSelectorSelectedItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StagesSelectorSelectedItemCopyWith<StagesSelectorSelectedItem> get copyWith => _$StagesSelectorSelectedItemCopyWithImpl<StagesSelectorSelectedItem>(this as StagesSelectorSelectedItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StagesSelectorSelectedItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,isSelected);

@override
String toString() {
  return 'StagesSelectorSelectedItem(id: $id, name: $name, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $StagesSelectorSelectedItemCopyWith<$Res>  {
  factory $StagesSelectorSelectedItemCopyWith(StagesSelectorSelectedItem value, $Res Function(StagesSelectorSelectedItem) _then) = _$StagesSelectorSelectedItemCopyWithImpl;
@useResult
$Res call({
 String id, String name, bool isSelected
});




}
/// @nodoc
class _$StagesSelectorSelectedItemCopyWithImpl<$Res>
    implements $StagesSelectorSelectedItemCopyWith<$Res> {
  _$StagesSelectorSelectedItemCopyWithImpl(this._self, this._then);

  final StagesSelectorSelectedItem _self;
  final $Res Function(StagesSelectorSelectedItem) _then;

/// Create a copy of StagesSelectorSelectedItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? isSelected = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [StagesSelectorSelectedItem].
extension StagesSelectorSelectedItemPatterns on StagesSelectorSelectedItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StagesSelectorSelectedItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StagesSelectorSelectedItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StagesSelectorSelectedItem value)  $default,){
final _that = this;
switch (_that) {
case _StagesSelectorSelectedItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StagesSelectorSelectedItem value)?  $default,){
final _that = this;
switch (_that) {
case _StagesSelectorSelectedItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  bool isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StagesSelectorSelectedItem() when $default != null:
return $default(_that.id,_that.name,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  bool isSelected)  $default,) {final _that = this;
switch (_that) {
case _StagesSelectorSelectedItem():
return $default(_that.id,_that.name,_that.isSelected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  bool isSelected)?  $default,) {final _that = this;
switch (_that) {
case _StagesSelectorSelectedItem() when $default != null:
return $default(_that.id,_that.name,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc


class _StagesSelectorSelectedItem implements StagesSelectorSelectedItem {
  const _StagesSelectorSelectedItem({required this.id, required this.name, this.isSelected = false});
  

@override final  String id;
@override final  String name;
@override@JsonKey() final  bool isSelected;

/// Create a copy of StagesSelectorSelectedItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StagesSelectorSelectedItemCopyWith<_StagesSelectorSelectedItem> get copyWith => __$StagesSelectorSelectedItemCopyWithImpl<_StagesSelectorSelectedItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StagesSelectorSelectedItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,isSelected);

@override
String toString() {
  return 'StagesSelectorSelectedItem(id: $id, name: $name, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$StagesSelectorSelectedItemCopyWith<$Res> implements $StagesSelectorSelectedItemCopyWith<$Res> {
  factory _$StagesSelectorSelectedItemCopyWith(_StagesSelectorSelectedItem value, $Res Function(_StagesSelectorSelectedItem) _then) = __$StagesSelectorSelectedItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, bool isSelected
});




}
/// @nodoc
class __$StagesSelectorSelectedItemCopyWithImpl<$Res>
    implements _$StagesSelectorSelectedItemCopyWith<$Res> {
  __$StagesSelectorSelectedItemCopyWithImpl(this._self, this._then);

  final _StagesSelectorSelectedItem _self;
  final $Res Function(_StagesSelectorSelectedItem) _then;

/// Create a copy of StagesSelectorSelectedItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? isSelected = null,}) {
  return _then(_StagesSelectorSelectedItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isSelected: null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on

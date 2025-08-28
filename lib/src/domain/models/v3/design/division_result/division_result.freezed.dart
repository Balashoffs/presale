// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DivisionResult {

 int get id; String get divisionShortName; String get divisionName; double get divisionOverPrice; double get divisionMargin; double get divisionClient; double get divisionSummary; double get divisionSummaryWithTax;
/// Create a copy of DivisionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DivisionResultCopyWith<DivisionResult> get copyWith => _$DivisionResultCopyWithImpl<DivisionResult>(this as DivisionResult, _$identity);

  /// Serializes this DivisionResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DivisionResult&&(identical(other.id, id) || other.id == id)&&(identical(other.divisionShortName, divisionShortName) || other.divisionShortName == divisionShortName)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.divisionOverPrice, divisionOverPrice) || other.divisionOverPrice == divisionOverPrice)&&(identical(other.divisionMargin, divisionMargin) || other.divisionMargin == divisionMargin)&&(identical(other.divisionClient, divisionClient) || other.divisionClient == divisionClient)&&(identical(other.divisionSummary, divisionSummary) || other.divisionSummary == divisionSummary)&&(identical(other.divisionSummaryWithTax, divisionSummaryWithTax) || other.divisionSummaryWithTax == divisionSummaryWithTax));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,divisionShortName,divisionName,divisionOverPrice,divisionMargin,divisionClient,divisionSummary,divisionSummaryWithTax);

@override
String toString() {
  return 'DivisionResult(id: $id, divisionShortName: $divisionShortName, divisionName: $divisionName, divisionOverPrice: $divisionOverPrice, divisionMargin: $divisionMargin, divisionClient: $divisionClient, divisionSummary: $divisionSummary, divisionSummaryWithTax: $divisionSummaryWithTax)';
}


}

/// @nodoc
abstract mixin class $DivisionResultCopyWith<$Res>  {
  factory $DivisionResultCopyWith(DivisionResult value, $Res Function(DivisionResult) _then) = _$DivisionResultCopyWithImpl;
@useResult
$Res call({
 int id, String divisionShortName, String divisionName, double divisionOverPrice, double divisionMargin, double divisionClient, double divisionSummary, double divisionSummaryWithTax
});




}
/// @nodoc
class _$DivisionResultCopyWithImpl<$Res>
    implements $DivisionResultCopyWith<$Res> {
  _$DivisionResultCopyWithImpl(this._self, this._then);

  final DivisionResult _self;
  final $Res Function(DivisionResult) _then;

/// Create a copy of DivisionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? divisionShortName = null,Object? divisionName = null,Object? divisionOverPrice = null,Object? divisionMargin = null,Object? divisionClient = null,Object? divisionSummary = null,Object? divisionSummaryWithTax = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,divisionShortName: null == divisionShortName ? _self.divisionShortName : divisionShortName // ignore: cast_nullable_to_non_nullable
as String,divisionName: null == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String,divisionOverPrice: null == divisionOverPrice ? _self.divisionOverPrice : divisionOverPrice // ignore: cast_nullable_to_non_nullable
as double,divisionMargin: null == divisionMargin ? _self.divisionMargin : divisionMargin // ignore: cast_nullable_to_non_nullable
as double,divisionClient: null == divisionClient ? _self.divisionClient : divisionClient // ignore: cast_nullable_to_non_nullable
as double,divisionSummary: null == divisionSummary ? _self.divisionSummary : divisionSummary // ignore: cast_nullable_to_non_nullable
as double,divisionSummaryWithTax: null == divisionSummaryWithTax ? _self.divisionSummaryWithTax : divisionSummaryWithTax // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DivisionResult].
extension DivisionResultPatterns on DivisionResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DivisionResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DivisionResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DivisionResult value)  $default,){
final _that = this;
switch (_that) {
case _DivisionResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DivisionResult value)?  $default,){
final _that = this;
switch (_that) {
case _DivisionResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String divisionShortName,  String divisionName,  double divisionOverPrice,  double divisionMargin,  double divisionClient,  double divisionSummary,  double divisionSummaryWithTax)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DivisionResult() when $default != null:
return $default(_that.id,_that.divisionShortName,_that.divisionName,_that.divisionOverPrice,_that.divisionMargin,_that.divisionClient,_that.divisionSummary,_that.divisionSummaryWithTax);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String divisionShortName,  String divisionName,  double divisionOverPrice,  double divisionMargin,  double divisionClient,  double divisionSummary,  double divisionSummaryWithTax)  $default,) {final _that = this;
switch (_that) {
case _DivisionResult():
return $default(_that.id,_that.divisionShortName,_that.divisionName,_that.divisionOverPrice,_that.divisionMargin,_that.divisionClient,_that.divisionSummary,_that.divisionSummaryWithTax);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String divisionShortName,  String divisionName,  double divisionOverPrice,  double divisionMargin,  double divisionClient,  double divisionSummary,  double divisionSummaryWithTax)?  $default,) {final _that = this;
switch (_that) {
case _DivisionResult() when $default != null:
return $default(_that.id,_that.divisionShortName,_that.divisionName,_that.divisionOverPrice,_that.divisionMargin,_that.divisionClient,_that.divisionSummary,_that.divisionSummaryWithTax);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DivisionResult implements DivisionResult {
  const _DivisionResult({required this.id, required this.divisionShortName, required this.divisionName, required this.divisionOverPrice, required this.divisionMargin, required this.divisionClient, required this.divisionSummary, required this.divisionSummaryWithTax});
  factory _DivisionResult.fromJson(Map<String, dynamic> json) => _$DivisionResultFromJson(json);

@override final  int id;
@override final  String divisionShortName;
@override final  String divisionName;
@override final  double divisionOverPrice;
@override final  double divisionMargin;
@override final  double divisionClient;
@override final  double divisionSummary;
@override final  double divisionSummaryWithTax;

/// Create a copy of DivisionResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DivisionResultCopyWith<_DivisionResult> get copyWith => __$DivisionResultCopyWithImpl<_DivisionResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DivisionResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DivisionResult&&(identical(other.id, id) || other.id == id)&&(identical(other.divisionShortName, divisionShortName) || other.divisionShortName == divisionShortName)&&(identical(other.divisionName, divisionName) || other.divisionName == divisionName)&&(identical(other.divisionOverPrice, divisionOverPrice) || other.divisionOverPrice == divisionOverPrice)&&(identical(other.divisionMargin, divisionMargin) || other.divisionMargin == divisionMargin)&&(identical(other.divisionClient, divisionClient) || other.divisionClient == divisionClient)&&(identical(other.divisionSummary, divisionSummary) || other.divisionSummary == divisionSummary)&&(identical(other.divisionSummaryWithTax, divisionSummaryWithTax) || other.divisionSummaryWithTax == divisionSummaryWithTax));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,divisionShortName,divisionName,divisionOverPrice,divisionMargin,divisionClient,divisionSummary,divisionSummaryWithTax);

@override
String toString() {
  return 'DivisionResult(id: $id, divisionShortName: $divisionShortName, divisionName: $divisionName, divisionOverPrice: $divisionOverPrice, divisionMargin: $divisionMargin, divisionClient: $divisionClient, divisionSummary: $divisionSummary, divisionSummaryWithTax: $divisionSummaryWithTax)';
}


}

/// @nodoc
abstract mixin class _$DivisionResultCopyWith<$Res> implements $DivisionResultCopyWith<$Res> {
  factory _$DivisionResultCopyWith(_DivisionResult value, $Res Function(_DivisionResult) _then) = __$DivisionResultCopyWithImpl;
@override @useResult
$Res call({
 int id, String divisionShortName, String divisionName, double divisionOverPrice, double divisionMargin, double divisionClient, double divisionSummary, double divisionSummaryWithTax
});




}
/// @nodoc
class __$DivisionResultCopyWithImpl<$Res>
    implements _$DivisionResultCopyWith<$Res> {
  __$DivisionResultCopyWithImpl(this._self, this._then);

  final _DivisionResult _self;
  final $Res Function(_DivisionResult) _then;

/// Create a copy of DivisionResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? divisionShortName = null,Object? divisionName = null,Object? divisionOverPrice = null,Object? divisionMargin = null,Object? divisionClient = null,Object? divisionSummary = null,Object? divisionSummaryWithTax = null,}) {
  return _then(_DivisionResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,divisionShortName: null == divisionShortName ? _self.divisionShortName : divisionShortName // ignore: cast_nullable_to_non_nullable
as String,divisionName: null == divisionName ? _self.divisionName : divisionName // ignore: cast_nullable_to_non_nullable
as String,divisionOverPrice: null == divisionOverPrice ? _self.divisionOverPrice : divisionOverPrice // ignore: cast_nullable_to_non_nullable
as double,divisionMargin: null == divisionMargin ? _self.divisionMargin : divisionMargin // ignore: cast_nullable_to_non_nullable
as double,divisionClient: null == divisionClient ? _self.divisionClient : divisionClient // ignore: cast_nullable_to_non_nullable
as double,divisionSummary: null == divisionSummary ? _self.divisionSummary : divisionSummary // ignore: cast_nullable_to_non_nullable
as double,divisionSummaryWithTax: null == divisionSummaryWithTax ? _self.divisionSummaryWithTax : divisionSummaryWithTax // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignPerson {

 String get jobTitle; String get companyName; String get fullName; String get phoneNumber; String get email;
/// Create a copy of SignPerson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignPersonCopyWith<SignPerson> get copyWith => _$SignPersonCopyWithImpl<SignPerson>(this as SignPerson, _$identity);

  /// Serializes this SignPerson to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignPerson&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jobTitle,companyName,fullName,phoneNumber,email);

@override
String toString() {
  return 'SignPerson(jobTitle: $jobTitle, companyName: $companyName, fullName: $fullName, phoneNumber: $phoneNumber, email: $email)';
}


}

/// @nodoc
abstract mixin class $SignPersonCopyWith<$Res>  {
  factory $SignPersonCopyWith(SignPerson value, $Res Function(SignPerson) _then) = _$SignPersonCopyWithImpl;
@useResult
$Res call({
 String jobTitle, String companyName, String fullName, String phoneNumber, String email
});




}
/// @nodoc
class _$SignPersonCopyWithImpl<$Res>
    implements $SignPersonCopyWith<$Res> {
  _$SignPersonCopyWithImpl(this._self, this._then);

  final SignPerson _self;
  final $Res Function(SignPerson) _then;

/// Create a copy of SignPerson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? jobTitle = null,Object? companyName = null,Object? fullName = null,Object? phoneNumber = null,Object? email = null,}) {
  return _then(_self.copyWith(
jobTitle: null == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SignPerson].
extension SignPersonPatterns on SignPerson {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignPerson value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignPerson() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignPerson value)  $default,){
final _that = this;
switch (_that) {
case _SignPerson():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignPerson value)?  $default,){
final _that = this;
switch (_that) {
case _SignPerson() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String jobTitle,  String companyName,  String fullName,  String phoneNumber,  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignPerson() when $default != null:
return $default(_that.jobTitle,_that.companyName,_that.fullName,_that.phoneNumber,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String jobTitle,  String companyName,  String fullName,  String phoneNumber,  String email)  $default,) {final _that = this;
switch (_that) {
case _SignPerson():
return $default(_that.jobTitle,_that.companyName,_that.fullName,_that.phoneNumber,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String jobTitle,  String companyName,  String fullName,  String phoneNumber,  String email)?  $default,) {final _that = this;
switch (_that) {
case _SignPerson() when $default != null:
return $default(_that.jobTitle,_that.companyName,_that.fullName,_that.phoneNumber,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignPerson implements SignPerson {
  const _SignPerson({required this.jobTitle, required this.companyName, required this.fullName, required this.phoneNumber, required this.email});
  factory _SignPerson.fromJson(Map<String, dynamic> json) => _$SignPersonFromJson(json);

@override final  String jobTitle;
@override final  String companyName;
@override final  String fullName;
@override final  String phoneNumber;
@override final  String email;

/// Create a copy of SignPerson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignPersonCopyWith<_SignPerson> get copyWith => __$SignPersonCopyWithImpl<_SignPerson>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignPersonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignPerson&&(identical(other.jobTitle, jobTitle) || other.jobTitle == jobTitle)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,jobTitle,companyName,fullName,phoneNumber,email);

@override
String toString() {
  return 'SignPerson(jobTitle: $jobTitle, companyName: $companyName, fullName: $fullName, phoneNumber: $phoneNumber, email: $email)';
}


}

/// @nodoc
abstract mixin class _$SignPersonCopyWith<$Res> implements $SignPersonCopyWith<$Res> {
  factory _$SignPersonCopyWith(_SignPerson value, $Res Function(_SignPerson) _then) = __$SignPersonCopyWithImpl;
@override @useResult
$Res call({
 String jobTitle, String companyName, String fullName, String phoneNumber, String email
});




}
/// @nodoc
class __$SignPersonCopyWithImpl<$Res>
    implements _$SignPersonCopyWith<$Res> {
  __$SignPersonCopyWithImpl(this._self, this._then);

  final _SignPerson _self;
  final $Res Function(_SignPerson) _then;

/// Create a copy of SignPerson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? jobTitle = null,Object? companyName = null,Object? fullName = null,Object? phoneNumber = null,Object? email = null,}) {
  return _then(_SignPerson(
jobTitle: null == jobTitle ? _self.jobTitle : jobTitle // ignore: cast_nullable_to_non_nullable
as String,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

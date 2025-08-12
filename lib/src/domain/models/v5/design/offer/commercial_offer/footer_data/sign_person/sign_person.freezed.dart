// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SignPerson _$SignPersonFromJson(Map<String, dynamic> json) {
  return _SignPerson.fromJson(json);
}

/// @nodoc
mixin _$SignPerson {
  String get jobTitle => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Serializes this SignPerson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignPerson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignPersonCopyWith<SignPerson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignPersonCopyWith<$Res> {
  factory $SignPersonCopyWith(
    SignPerson value,
    $Res Function(SignPerson) then,
  ) = _$SignPersonCopyWithImpl<$Res, SignPerson>;
  @useResult
  $Res call({
    String jobTitle,
    String companyName,
    String fullName,
    String phoneNumber,
    String email,
  });
}

/// @nodoc
class _$SignPersonCopyWithImpl<$Res, $Val extends SignPerson>
    implements $SignPersonCopyWith<$Res> {
  _$SignPersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignPerson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobTitle = null,
    Object? companyName = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? email = null,
  }) {
    return _then(
      _value.copyWith(
            jobTitle: null == jobTitle
                ? _value.jobTitle
                : jobTitle // ignore: cast_nullable_to_non_nullable
                      as String,
            companyName: null == companyName
                ? _value.companyName
                : companyName // ignore: cast_nullable_to_non_nullable
                      as String,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SignPersonImplCopyWith<$Res>
    implements $SignPersonCopyWith<$Res> {
  factory _$$SignPersonImplCopyWith(
    _$SignPersonImpl value,
    $Res Function(_$SignPersonImpl) then,
  ) = __$$SignPersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String jobTitle,
    String companyName,
    String fullName,
    String phoneNumber,
    String email,
  });
}

/// @nodoc
class __$$SignPersonImplCopyWithImpl<$Res>
    extends _$SignPersonCopyWithImpl<$Res, _$SignPersonImpl>
    implements _$$SignPersonImplCopyWith<$Res> {
  __$$SignPersonImplCopyWithImpl(
    _$SignPersonImpl _value,
    $Res Function(_$SignPersonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignPerson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jobTitle = null,
    Object? companyName = null,
    Object? fullName = null,
    Object? phoneNumber = null,
    Object? email = null,
  }) {
    return _then(
      _$SignPersonImpl(
        jobTitle: null == jobTitle
            ? _value.jobTitle
            : jobTitle // ignore: cast_nullable_to_non_nullable
                  as String,
        companyName: null == companyName
            ? _value.companyName
            : companyName // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SignPersonImpl implements _SignPerson {
  const _$SignPersonImpl({
    required this.jobTitle,
    required this.companyName,
    required this.fullName,
    required this.phoneNumber,
    required this.email,
  });

  factory _$SignPersonImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignPersonImplFromJson(json);

  @override
  final String jobTitle;
  @override
  final String companyName;
  @override
  final String fullName;
  @override
  final String phoneNumber;
  @override
  final String email;

  @override
  String toString() {
    return 'SignPerson(jobTitle: $jobTitle, companyName: $companyName, fullName: $fullName, phoneNumber: $phoneNumber, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignPersonImpl &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    jobTitle,
    companyName,
    fullName,
    phoneNumber,
    email,
  );

  /// Create a copy of SignPerson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignPersonImplCopyWith<_$SignPersonImpl> get copyWith =>
      __$$SignPersonImplCopyWithImpl<_$SignPersonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignPersonImplToJson(this);
  }
}

abstract class _SignPerson implements SignPerson {
  const factory _SignPerson({
    required final String jobTitle,
    required final String companyName,
    required final String fullName,
    required final String phoneNumber,
    required final String email,
  }) = _$SignPersonImpl;

  factory _SignPerson.fromJson(Map<String, dynamic> json) =
      _$SignPersonImpl.fromJson;

  @override
  String get jobTitle;
  @override
  String get companyName;
  @override
  String get fullName;
  @override
  String get phoneNumber;
  @override
  String get email;

  /// Create a copy of SignPerson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignPersonImplCopyWith<_$SignPersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

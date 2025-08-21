// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'footer_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FooterData _$FooterDataFromJson(Map<String, dynamic> json) {
  return _FooterData.fromJson(json);
}

/// @nodoc
mixin _$FooterData {
  String get noteText => throw _privateConstructorUsedError;
  String get workCompletionTime => throw _privateConstructorUsedError;
  String get prepayment => throw _privateConstructorUsedError;
  SignPerson? get signPerson => throw _privateConstructorUsedError;

  /// Serializes this FooterData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FooterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FooterDataCopyWith<FooterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FooterDataCopyWith<$Res> {
  factory $FooterDataCopyWith(
    FooterData value,
    $Res Function(FooterData) then,
  ) = _$FooterDataCopyWithImpl<$Res, FooterData>;
  @useResult
  $Res call({
    String noteText,
    String workCompletionTime,
    String prepayment,
    SignPerson? signPerson,
  });

  $SignPersonCopyWith<$Res>? get signPerson;
}

/// @nodoc
class _$FooterDataCopyWithImpl<$Res, $Val extends FooterData>
    implements $FooterDataCopyWith<$Res> {
  _$FooterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FooterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteText = null,
    Object? workCompletionTime = null,
    Object? prepayment = null,
    Object? signPerson = freezed,
  }) {
    return _then(
      _value.copyWith(
            noteText: null == noteText
                ? _value.noteText
                : noteText // ignore: cast_nullable_to_non_nullable
                      as String,
            workCompletionTime: null == workCompletionTime
                ? _value.workCompletionTime
                : workCompletionTime // ignore: cast_nullable_to_non_nullable
                      as String,
            prepayment: null == prepayment
                ? _value.prepayment
                : prepayment // ignore: cast_nullable_to_non_nullable
                      as String,
            signPerson: freezed == signPerson
                ? _value.signPerson
                : signPerson // ignore: cast_nullable_to_non_nullable
                      as SignPerson?,
          )
          as $Val,
    );
  }

  /// Create a copy of FooterData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SignPersonCopyWith<$Res>? get signPerson {
    if (_value.signPerson == null) {
      return null;
    }

    return $SignPersonCopyWith<$Res>(_value.signPerson!, (value) {
      return _then(_value.copyWith(signPerson: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FooterDataImplCopyWith<$Res>
    implements $FooterDataCopyWith<$Res> {
  factory _$$FooterDataImplCopyWith(
    _$FooterDataImpl value,
    $Res Function(_$FooterDataImpl) then,
  ) = __$$FooterDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String noteText,
    String workCompletionTime,
    String prepayment,
    SignPerson? signPerson,
  });

  @override
  $SignPersonCopyWith<$Res>? get signPerson;
}

/// @nodoc
class __$$FooterDataImplCopyWithImpl<$Res>
    extends _$FooterDataCopyWithImpl<$Res, _$FooterDataImpl>
    implements _$$FooterDataImplCopyWith<$Res> {
  __$$FooterDataImplCopyWithImpl(
    _$FooterDataImpl _value,
    $Res Function(_$FooterDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FooterData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noteText = null,
    Object? workCompletionTime = null,
    Object? prepayment = null,
    Object? signPerson = freezed,
  }) {
    return _then(
      _$FooterDataImpl(
        noteText: null == noteText
            ? _value.noteText
            : noteText // ignore: cast_nullable_to_non_nullable
                  as String,
        workCompletionTime: null == workCompletionTime
            ? _value.workCompletionTime
            : workCompletionTime // ignore: cast_nullable_to_non_nullable
                  as String,
        prepayment: null == prepayment
            ? _value.prepayment
            : prepayment // ignore: cast_nullable_to_non_nullable
                  as String,
        signPerson: freezed == signPerson
            ? _value.signPerson
            : signPerson // ignore: cast_nullable_to_non_nullable
                  as SignPerson?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FooterDataImpl implements _FooterData {
  const _$FooterDataImpl({
    this.noteText = '',
    required this.workCompletionTime,
    required this.prepayment,
    this.signPerson,
  });

  factory _$FooterDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FooterDataImplFromJson(json);

  @override
  @JsonKey()
  final String noteText;
  @override
  final String workCompletionTime;
  @override
  final String prepayment;
  @override
  final SignPerson? signPerson;

  @override
  String toString() {
    return 'FooterData(noteText: $noteText, workCompletionTime: $workCompletionTime, prepayment: $prepayment, signPerson: $signPerson)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FooterDataImpl &&
            (identical(other.noteText, noteText) ||
                other.noteText == noteText) &&
            (identical(other.workCompletionTime, workCompletionTime) ||
                other.workCompletionTime == workCompletionTime) &&
            (identical(other.prepayment, prepayment) ||
                other.prepayment == prepayment) &&
            (identical(other.signPerson, signPerson) ||
                other.signPerson == signPerson));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    noteText,
    workCompletionTime,
    prepayment,
    signPerson,
  );

  /// Create a copy of FooterData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FooterDataImplCopyWith<_$FooterDataImpl> get copyWith =>
      __$$FooterDataImplCopyWithImpl<_$FooterDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FooterDataImplToJson(this);
  }
}

abstract class _FooterData implements FooterData {
  const factory _FooterData({
    final String noteText,
    required final String workCompletionTime,
    required final String prepayment,
    final SignPerson? signPerson,
  }) = _$FooterDataImpl;

  factory _FooterData.fromJson(Map<String, dynamic> json) =
      _$FooterDataImpl.fromJson;

  @override
  String get noteText;
  @override
  String get workCompletionTime;
  @override
  String get prepayment;
  @override
  SignPerson? get signPerson;

  /// Create a copy of FooterData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FooterDataImplCopyWith<_$FooterDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

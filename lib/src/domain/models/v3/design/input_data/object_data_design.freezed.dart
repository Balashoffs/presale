// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'object_data_design.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ObjectDataDesign _$ObjectDataDesignFromJson(Map<String, dynamic> json) {
  return _ObjectDataDesign.fromJson(json);
}

/// @nodoc
mixin _$ObjectDataDesign {
  //Имя объекта
  String get name => throw _privateConstructorUsedError; // Адрес объекта
  String get address => throw _privateConstructorUsedError; // Площадь объекта
  int get square => throw _privateConstructorUsedError; // Сроки работ
  int get deadlineValue => throw _privateConstructorUsedError;

  /// Serializes this ObjectDataDesign to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ObjectDataDesign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ObjectDataDesignCopyWith<ObjectDataDesign> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObjectDataDesignCopyWith<$Res> {
  factory $ObjectDataDesignCopyWith(
    ObjectDataDesign value,
    $Res Function(ObjectDataDesign) then,
  ) = _$ObjectDataDesignCopyWithImpl<$Res, ObjectDataDesign>;
  @useResult
  $Res call({String name, String address, int square, int deadlineValue});
}

/// @nodoc
class _$ObjectDataDesignCopyWithImpl<$Res, $Val extends ObjectDataDesign>
    implements $ObjectDataDesignCopyWith<$Res> {
  _$ObjectDataDesignCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ObjectDataDesign
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? square = null,
    Object? deadlineValue = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            address: null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String,
            square: null == square
                ? _value.square
                : square // ignore: cast_nullable_to_non_nullable
                      as int,
            deadlineValue: null == deadlineValue
                ? _value.deadlineValue
                : deadlineValue // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ObjectDataDesignImplCopyWith<$Res>
    implements $ObjectDataDesignCopyWith<$Res> {
  factory _$$ObjectDataDesignImplCopyWith(
    _$ObjectDataDesignImpl value,
    $Res Function(_$ObjectDataDesignImpl) then,
  ) = __$$ObjectDataDesignImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String address, int square, int deadlineValue});
}

/// @nodoc
class __$$ObjectDataDesignImplCopyWithImpl<$Res>
    extends _$ObjectDataDesignCopyWithImpl<$Res, _$ObjectDataDesignImpl>
    implements _$$ObjectDataDesignImplCopyWith<$Res> {
  __$$ObjectDataDesignImplCopyWithImpl(
    _$ObjectDataDesignImpl _value,
    $Res Function(_$ObjectDataDesignImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ObjectDataDesign
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? square = null,
    Object? deadlineValue = null,
  }) {
    return _then(
      _$ObjectDataDesignImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        square: null == square
            ? _value.square
            : square // ignore: cast_nullable_to_non_nullable
                  as int,
        deadlineValue: null == deadlineValue
            ? _value.deadlineValue
            : deadlineValue // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ObjectDataDesignImpl implements _ObjectDataDesign {
  const _$ObjectDataDesignImpl({
    required this.name,
    required this.address,
    required this.square,
    required this.deadlineValue,
  });

  factory _$ObjectDataDesignImpl.fromJson(Map<String, dynamic> json) =>
      _$$ObjectDataDesignImplFromJson(json);

  //Имя объекта
  @override
  final String name;
  // Адрес объекта
  @override
  final String address;
  // Площадь объекта
  @override
  final int square;
  // Сроки работ
  @override
  final int deadlineValue;

  @override
  String toString() {
    return 'ObjectDataDesign(name: $name, address: $address, square: $square, deadlineValue: $deadlineValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ObjectDataDesignImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.square, square) || other.square == square) &&
            (identical(other.deadlineValue, deadlineValue) ||
                other.deadlineValue == deadlineValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, address, square, deadlineValue);

  /// Create a copy of ObjectDataDesign
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ObjectDataDesignImplCopyWith<_$ObjectDataDesignImpl> get copyWith =>
      __$$ObjectDataDesignImplCopyWithImpl<_$ObjectDataDesignImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ObjectDataDesignImplToJson(this);
  }
}

abstract class _ObjectDataDesign implements ObjectDataDesign {
  const factory _ObjectDataDesign({
    required final String name,
    required final String address,
    required final int square,
    required final int deadlineValue,
  }) = _$ObjectDataDesignImpl;

  factory _ObjectDataDesign.fromJson(Map<String, dynamic> json) =
      _$ObjectDataDesignImpl.fromJson;

  //Имя объекта
  @override
  String get name; // Адрес объекта
  @override
  String get address; // Площадь объекта
  @override
  int get square; // Сроки работ
  @override
  int get deadlineValue;

  /// Create a copy of ObjectDataDesign
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ObjectDataDesignImplCopyWith<_$ObjectDataDesignImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

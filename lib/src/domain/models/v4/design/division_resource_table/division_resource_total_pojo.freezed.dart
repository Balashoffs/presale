// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division_resource_total_pojo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DivisionResourceTotalPojo _$DivisionResourceTotalPojoFromJson(
  Map<String, dynamic> json,
) {
  return _DivisionResourceTotalPojo.fromJson(json);
}

/// @nodoc
mixin _$DivisionResourceTotalPojo {
  Map<String, DivisionResourceTableWithTypePojo> get resorces =>
      throw _privateConstructorUsedError;

  /// Serializes this DivisionResourceTotalPojo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DivisionResourceTotalPojo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DivisionResourceTotalPojoCopyWith<DivisionResourceTotalPojo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionResourceTotalPojoCopyWith<$Res> {
  factory $DivisionResourceTotalPojoCopyWith(
    DivisionResourceTotalPojo value,
    $Res Function(DivisionResourceTotalPojo) then,
  ) = _$DivisionResourceTotalPojoCopyWithImpl<$Res, DivisionResourceTotalPojo>;
  @useResult
  $Res call({Map<String, DivisionResourceTableWithTypePojo> resorces});
}

/// @nodoc
class _$DivisionResourceTotalPojoCopyWithImpl<
  $Res,
  $Val extends DivisionResourceTotalPojo
>
    implements $DivisionResourceTotalPojoCopyWith<$Res> {
  _$DivisionResourceTotalPojoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DivisionResourceTotalPojo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? resorces = null}) {
    return _then(
      _value.copyWith(
            resorces: null == resorces
                ? _value.resorces
                : resorces // ignore: cast_nullable_to_non_nullable
                      as Map<String, DivisionResourceTableWithTypePojo>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DivisionResourceTotalPojoImplCopyWith<$Res>
    implements $DivisionResourceTotalPojoCopyWith<$Res> {
  factory _$$DivisionResourceTotalPojoImplCopyWith(
    _$DivisionResourceTotalPojoImpl value,
    $Res Function(_$DivisionResourceTotalPojoImpl) then,
  ) = __$$DivisionResourceTotalPojoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, DivisionResourceTableWithTypePojo> resorces});
}

/// @nodoc
class __$$DivisionResourceTotalPojoImplCopyWithImpl<$Res>
    extends
        _$DivisionResourceTotalPojoCopyWithImpl<
          $Res,
          _$DivisionResourceTotalPojoImpl
        >
    implements _$$DivisionResourceTotalPojoImplCopyWith<$Res> {
  __$$DivisionResourceTotalPojoImplCopyWithImpl(
    _$DivisionResourceTotalPojoImpl _value,
    $Res Function(_$DivisionResourceTotalPojoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DivisionResourceTotalPojo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? resorces = null}) {
    return _then(
      _$DivisionResourceTotalPojoImpl(
        resorces: null == resorces
            ? _value._resorces
            : resorces // ignore: cast_nullable_to_non_nullable
                  as Map<String, DivisionResourceTableWithTypePojo>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionResourceTotalPojoImpl implements _DivisionResourceTotalPojo {
  const _$DivisionResourceTotalPojoImpl({
    final Map<String, DivisionResourceTableWithTypePojo> resorces = const {},
  }) : _resorces = resorces;

  factory _$DivisionResourceTotalPojoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DivisionResourceTotalPojoImplFromJson(json);

  final Map<String, DivisionResourceTableWithTypePojo> _resorces;
  @override
  @JsonKey()
  Map<String, DivisionResourceTableWithTypePojo> get resorces {
    if (_resorces is EqualUnmodifiableMapView) return _resorces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_resorces);
  }

  @override
  String toString() {
    return 'DivisionResourceTotalPojo(resorces: $resorces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionResourceTotalPojoImpl &&
            const DeepCollectionEquality().equals(other._resorces, _resorces));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_resorces));

  /// Create a copy of DivisionResourceTotalPojo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisionResourceTotalPojoImplCopyWith<_$DivisionResourceTotalPojoImpl>
  get copyWith =>
      __$$DivisionResourceTotalPojoImplCopyWithImpl<
        _$DivisionResourceTotalPojoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DivisionResourceTotalPojoImplToJson(this);
  }
}

abstract class _DivisionResourceTotalPojo implements DivisionResourceTotalPojo {
  const factory _DivisionResourceTotalPojo({
    final Map<String, DivisionResourceTableWithTypePojo> resorces,
  }) = _$DivisionResourceTotalPojoImpl;

  factory _DivisionResourceTotalPojo.fromJson(Map<String, dynamic> json) =
      _$DivisionResourceTotalPojoImpl.fromJson;

  @override
  Map<String, DivisionResourceTableWithTypePojo> get resorces;

  /// Create a copy of DivisionResourceTotalPojo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DivisionResourceTotalPojoImplCopyWith<_$DivisionResourceTotalPojoImpl>
  get copyWith => throw _privateConstructorUsedError;
}

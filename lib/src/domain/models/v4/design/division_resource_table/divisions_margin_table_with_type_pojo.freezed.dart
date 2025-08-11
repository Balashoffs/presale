// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'divisions_margin_table_with_type_pojo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DivisionsMarginTableWithTypePojo _$DivisionsMarginTableWithTypePojoFromJson(
  Map<String, dynamic> json,
) {
  return _DivisionsMarginTableWithTypePojo.fromJson(json);
}

/// @nodoc
mixin _$DivisionsMarginTableWithTypePojo {
  DivisionType get divisionType => throw _privateConstructorUsedError;
  List<DivisionsMarginRowPojo> get rows => throw _privateConstructorUsedError;

  /// Serializes this DivisionsMarginTableWithTypePojo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DivisionsMarginTableWithTypePojo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DivisionsMarginTableWithTypePojoCopyWith<DivisionsMarginTableWithTypePojo>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionsMarginTableWithTypePojoCopyWith<$Res> {
  factory $DivisionsMarginTableWithTypePojoCopyWith(
    DivisionsMarginTableWithTypePojo value,
    $Res Function(DivisionsMarginTableWithTypePojo) then,
  ) =
      _$DivisionsMarginTableWithTypePojoCopyWithImpl<
        $Res,
        DivisionsMarginTableWithTypePojo
      >;
  @useResult
  $Res call({DivisionType divisionType, List<DivisionsMarginRowPojo> rows});
}

/// @nodoc
class _$DivisionsMarginTableWithTypePojoCopyWithImpl<
  $Res,
  $Val extends DivisionsMarginTableWithTypePojo
>
    implements $DivisionsMarginTableWithTypePojoCopyWith<$Res> {
  _$DivisionsMarginTableWithTypePojoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DivisionsMarginTableWithTypePojo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? divisionType = null, Object? rows = null}) {
    return _then(
      _value.copyWith(
            divisionType: null == divisionType
                ? _value.divisionType
                : divisionType // ignore: cast_nullable_to_non_nullable
                      as DivisionType,
            rows: null == rows
                ? _value.rows
                : rows // ignore: cast_nullable_to_non_nullable
                      as List<DivisionsMarginRowPojo>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DivisionsMarginTableWithTypePojoImplCopyWith<$Res>
    implements $DivisionsMarginTableWithTypePojoCopyWith<$Res> {
  factory _$$DivisionsMarginTableWithTypePojoImplCopyWith(
    _$DivisionsMarginTableWithTypePojoImpl value,
    $Res Function(_$DivisionsMarginTableWithTypePojoImpl) then,
  ) = __$$DivisionsMarginTableWithTypePojoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DivisionType divisionType, List<DivisionsMarginRowPojo> rows});
}

/// @nodoc
class __$$DivisionsMarginTableWithTypePojoImplCopyWithImpl<$Res>
    extends
        _$DivisionsMarginTableWithTypePojoCopyWithImpl<
          $Res,
          _$DivisionsMarginTableWithTypePojoImpl
        >
    implements _$$DivisionsMarginTableWithTypePojoImplCopyWith<$Res> {
  __$$DivisionsMarginTableWithTypePojoImplCopyWithImpl(
    _$DivisionsMarginTableWithTypePojoImpl _value,
    $Res Function(_$DivisionsMarginTableWithTypePojoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DivisionsMarginTableWithTypePojo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? divisionType = null, Object? rows = null}) {
    return _then(
      _$DivisionsMarginTableWithTypePojoImpl(
        divisionType: null == divisionType
            ? _value.divisionType
            : divisionType // ignore: cast_nullable_to_non_nullable
                  as DivisionType,
        rows: null == rows
            ? _value._rows
            : rows // ignore: cast_nullable_to_non_nullable
                  as List<DivisionsMarginRowPojo>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionsMarginTableWithTypePojoImpl
    implements _DivisionsMarginTableWithTypePojo {
  const _$DivisionsMarginTableWithTypePojoImpl({
    required this.divisionType,
    required final List<DivisionsMarginRowPojo> rows,
  }) : _rows = rows;

  factory _$DivisionsMarginTableWithTypePojoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$DivisionsMarginTableWithTypePojoImplFromJson(json);

  @override
  final DivisionType divisionType;
  final List<DivisionsMarginRowPojo> _rows;
  @override
  List<DivisionsMarginRowPojo> get rows {
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rows);
  }

  @override
  String toString() {
    return 'DivisionsMarginTableWithTypePojo(divisionType: $divisionType, rows: $rows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionsMarginTableWithTypePojoImpl &&
            (identical(other.divisionType, divisionType) ||
                other.divisionType == divisionType) &&
            const DeepCollectionEquality().equals(other._rows, _rows));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    divisionType,
    const DeepCollectionEquality().hash(_rows),
  );

  /// Create a copy of DivisionsMarginTableWithTypePojo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisionsMarginTableWithTypePojoImplCopyWith<
    _$DivisionsMarginTableWithTypePojoImpl
  >
  get copyWith =>
      __$$DivisionsMarginTableWithTypePojoImplCopyWithImpl<
        _$DivisionsMarginTableWithTypePojoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DivisionsMarginTableWithTypePojoImplToJson(this);
  }
}

abstract class _DivisionsMarginTableWithTypePojo
    implements DivisionsMarginTableWithTypePojo {
  const factory _DivisionsMarginTableWithTypePojo({
    required final DivisionType divisionType,
    required final List<DivisionsMarginRowPojo> rows,
  }) = _$DivisionsMarginTableWithTypePojoImpl;

  factory _DivisionsMarginTableWithTypePojo.fromJson(
    Map<String, dynamic> json,
  ) = _$DivisionsMarginTableWithTypePojoImpl.fromJson;

  @override
  DivisionType get divisionType;
  @override
  List<DivisionsMarginRowPojo> get rows;

  /// Create a copy of DivisionsMarginTableWithTypePojo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DivisionsMarginTableWithTypePojoImplCopyWith<
    _$DivisionsMarginTableWithTypePojoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

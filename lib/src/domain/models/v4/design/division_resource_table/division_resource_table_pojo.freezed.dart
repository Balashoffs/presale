// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'division_resource_table_pojo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DivisionResourceTableWithTypePojo _$DivisionResourceTableWithTypePojoFromJson(
  Map<String, dynamic> json,
) {
  return _DivisionResourceTableWithTypePojo.fromJson(json);
}

/// @nodoc
mixin _$DivisionResourceTableWithTypePojo {
  String get divisionType => throw _privateConstructorUsedError;
  List<DivisionResourceRowPojo> get rows => throw _privateConstructorUsedError;

  /// Serializes this DivisionResourceTableWithTypePojo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DivisionResourceTableWithTypePojo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DivisionResourceTableWithTypePojoCopyWith<DivisionResourceTableWithTypePojo>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionResourceTableWithTypePojoCopyWith<$Res> {
  factory $DivisionResourceTableWithTypePojoCopyWith(
    DivisionResourceTableWithTypePojo value,
    $Res Function(DivisionResourceTableWithTypePojo) then,
  ) =
      _$DivisionResourceTableWithTypePojoCopyWithImpl<
        $Res,
        DivisionResourceTableWithTypePojo
      >;
  @useResult
  $Res call({String divisionType, List<DivisionResourceRowPojo> rows});
}

/// @nodoc
class _$DivisionResourceTableWithTypePojoCopyWithImpl<
  $Res,
  $Val extends DivisionResourceTableWithTypePojo
>
    implements $DivisionResourceTableWithTypePojoCopyWith<$Res> {
  _$DivisionResourceTableWithTypePojoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DivisionResourceTableWithTypePojo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? divisionType = null, Object? rows = null}) {
    return _then(
      _value.copyWith(
            divisionType: null == divisionType
                ? _value.divisionType
                : divisionType // ignore: cast_nullable_to_non_nullable
                      as String,
            rows: null == rows
                ? _value.rows
                : rows // ignore: cast_nullable_to_non_nullable
                      as List<DivisionResourceRowPojo>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DivisionResourceTableWithTypePojoImplCopyWith<$Res>
    implements $DivisionResourceTableWithTypePojoCopyWith<$Res> {
  factory _$$DivisionResourceTableWithTypePojoImplCopyWith(
    _$DivisionResourceTableWithTypePojoImpl value,
    $Res Function(_$DivisionResourceTableWithTypePojoImpl) then,
  ) = __$$DivisionResourceTableWithTypePojoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String divisionType, List<DivisionResourceRowPojo> rows});
}

/// @nodoc
class __$$DivisionResourceTableWithTypePojoImplCopyWithImpl<$Res>
    extends
        _$DivisionResourceTableWithTypePojoCopyWithImpl<
          $Res,
          _$DivisionResourceTableWithTypePojoImpl
        >
    implements _$$DivisionResourceTableWithTypePojoImplCopyWith<$Res> {
  __$$DivisionResourceTableWithTypePojoImplCopyWithImpl(
    _$DivisionResourceTableWithTypePojoImpl _value,
    $Res Function(_$DivisionResourceTableWithTypePojoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DivisionResourceTableWithTypePojo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? divisionType = null, Object? rows = null}) {
    return _then(
      _$DivisionResourceTableWithTypePojoImpl(
        divisionType: null == divisionType
            ? _value.divisionType
            : divisionType // ignore: cast_nullable_to_non_nullable
                  as String,
        rows: null == rows
            ? _value._rows
            : rows // ignore: cast_nullable_to_non_nullable
                  as List<DivisionResourceRowPojo>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionResourceTableWithTypePojoImpl
    implements _DivisionResourceTableWithTypePojo {
  const _$DivisionResourceTableWithTypePojoImpl({
    required this.divisionType,
    required final List<DivisionResourceRowPojo> rows,
  }) : _rows = rows;

  factory _$DivisionResourceTableWithTypePojoImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$DivisionResourceTableWithTypePojoImplFromJson(json);

  @override
  final String divisionType;
  final List<DivisionResourceRowPojo> _rows;
  @override
  List<DivisionResourceRowPojo> get rows {
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rows);
  }

  @override
  String toString() {
    return 'DivisionResourceTableWithTypePojo(divisionType: $divisionType, rows: $rows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionResourceTableWithTypePojoImpl &&
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

  /// Create a copy of DivisionResourceTableWithTypePojo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisionResourceTableWithTypePojoImplCopyWith<
    _$DivisionResourceTableWithTypePojoImpl
  >
  get copyWith =>
      __$$DivisionResourceTableWithTypePojoImplCopyWithImpl<
        _$DivisionResourceTableWithTypePojoImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DivisionResourceTableWithTypePojoImplToJson(this);
  }
}

abstract class _DivisionResourceTableWithTypePojo
    implements DivisionResourceTableWithTypePojo {
  const factory _DivisionResourceTableWithTypePojo({
    required final String divisionType,
    required final List<DivisionResourceRowPojo> rows,
  }) = _$DivisionResourceTableWithTypePojoImpl;

  factory _DivisionResourceTableWithTypePojo.fromJson(
    Map<String, dynamic> json,
  ) = _$DivisionResourceTableWithTypePojoImpl.fromJson;

  @override
  String get divisionType;
  @override
  List<DivisionResourceRowPojo> get rows;

  /// Create a copy of DivisionResourceTableWithTypePojo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DivisionResourceTableWithTypePojoImplCopyWith<
    _$DivisionResourceTableWithTypePojoImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

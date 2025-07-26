// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'design_presale_pojo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DesignPresalePojo _$DesignPresalePojoFromJson(Map<String, dynamic> json) {
  return _DesignPresalePojo.fromJson(json);
}

/// @nodoc
mixin _$DesignPresalePojo {
  InputDataDesign get inputDataDesign => throw _privateConstructorUsedError;
  Map<String, DivisionResourceTableWithTypePojo> get resource =>
      throw _privateConstructorUsedError;

  /// Serializes this DesignPresalePojo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DesignPresalePojo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DesignPresalePojoCopyWith<DesignPresalePojo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignPresalePojoCopyWith<$Res> {
  factory $DesignPresalePojoCopyWith(
    DesignPresalePojo value,
    $Res Function(DesignPresalePojo) then,
  ) = _$DesignPresalePojoCopyWithImpl<$Res, DesignPresalePojo>;
  @useResult
  $Res call({
    InputDataDesign inputDataDesign,
    Map<String, DivisionResourceTableWithTypePojo> resource,
  });

  $InputDataDesignCopyWith<$Res> get inputDataDesign;
}

/// @nodoc
class _$DesignPresalePojoCopyWithImpl<$Res, $Val extends DesignPresalePojo>
    implements $DesignPresalePojoCopyWith<$Res> {
  _$DesignPresalePojoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DesignPresalePojo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? inputDataDesign = null, Object? resource = null}) {
    return _then(
      _value.copyWith(
            inputDataDesign: null == inputDataDesign
                ? _value.inputDataDesign
                : inputDataDesign // ignore: cast_nullable_to_non_nullable
                      as InputDataDesign,
            resource: null == resource
                ? _value.resource
                : resource // ignore: cast_nullable_to_non_nullable
                      as Map<String, DivisionResourceTableWithTypePojo>,
          )
          as $Val,
    );
  }

  /// Create a copy of DesignPresalePojo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InputDataDesignCopyWith<$Res> get inputDataDesign {
    return $InputDataDesignCopyWith<$Res>(_value.inputDataDesign, (value) {
      return _then(_value.copyWith(inputDataDesign: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DesignPresalePojoImplCopyWith<$Res>
    implements $DesignPresalePojoCopyWith<$Res> {
  factory _$$DesignPresalePojoImplCopyWith(
    _$DesignPresalePojoImpl value,
    $Res Function(_$DesignPresalePojoImpl) then,
  ) = __$$DesignPresalePojoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    InputDataDesign inputDataDesign,
    Map<String, DivisionResourceTableWithTypePojo> resource,
  });

  @override
  $InputDataDesignCopyWith<$Res> get inputDataDesign;
}

/// @nodoc
class __$$DesignPresalePojoImplCopyWithImpl<$Res>
    extends _$DesignPresalePojoCopyWithImpl<$Res, _$DesignPresalePojoImpl>
    implements _$$DesignPresalePojoImplCopyWith<$Res> {
  __$$DesignPresalePojoImplCopyWithImpl(
    _$DesignPresalePojoImpl _value,
    $Res Function(_$DesignPresalePojoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DesignPresalePojo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? inputDataDesign = null, Object? resource = null}) {
    return _then(
      _$DesignPresalePojoImpl(
        inputDataDesign: null == inputDataDesign
            ? _value.inputDataDesign
            : inputDataDesign // ignore: cast_nullable_to_non_nullable
                  as InputDataDesign,
        resource: null == resource
            ? _value._resource
            : resource // ignore: cast_nullable_to_non_nullable
                  as Map<String, DivisionResourceTableWithTypePojo>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DesignPresalePojoImpl implements _DesignPresalePojo {
  const _$DesignPresalePojoImpl({
    required this.inputDataDesign,
    final Map<String, DivisionResourceTableWithTypePojo> resource = const {},
  }) : _resource = resource;

  factory _$DesignPresalePojoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DesignPresalePojoImplFromJson(json);

  @override
  final InputDataDesign inputDataDesign;
  final Map<String, DivisionResourceTableWithTypePojo> _resource;
  @override
  @JsonKey()
  Map<String, DivisionResourceTableWithTypePojo> get resource {
    if (_resource is EqualUnmodifiableMapView) return _resource;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_resource);
  }

  @override
  String toString() {
    return 'DesignPresalePojo(inputDataDesign: $inputDataDesign, resource: $resource)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DesignPresalePojoImpl &&
            (identical(other.inputDataDesign, inputDataDesign) ||
                other.inputDataDesign == inputDataDesign) &&
            const DeepCollectionEquality().equals(other._resource, _resource));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    inputDataDesign,
    const DeepCollectionEquality().hash(_resource),
  );

  /// Create a copy of DesignPresalePojo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DesignPresalePojoImplCopyWith<_$DesignPresalePojoImpl> get copyWith =>
      __$$DesignPresalePojoImplCopyWithImpl<_$DesignPresalePojoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DesignPresalePojoImplToJson(this);
  }
}

abstract class _DesignPresalePojo implements DesignPresalePojo {
  const factory _DesignPresalePojo({
    required final InputDataDesign inputDataDesign,
    final Map<String, DivisionResourceTableWithTypePojo> resource,
  }) = _$DesignPresalePojoImpl;

  factory _DesignPresalePojo.fromJson(Map<String, dynamic> json) =
      _$DesignPresalePojoImpl.fromJson;

  @override
  InputDataDesign get inputDataDesign;
  @override
  Map<String, DivisionResourceTableWithTypePojo> get resource;

  /// Create a copy of DesignPresalePojo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DesignPresalePojoImplCopyWith<_$DesignPresalePojoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dart_define_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DartDefineModel _$DartDefineModelFromJson(Map<String, dynamic> json) {
  return _DartDefineModel.fromJson(json);
}

/// @nodoc
mixin _$DartDefineModel {
  String get type => throw _privateConstructorUsedError;
  DesignClass get design => throw _privateConstructorUsedError;

  /// Serializes this DartDefineModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DartDefineModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DartDefineModelCopyWith<DartDefineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DartDefineModelCopyWith<$Res> {
  factory $DartDefineModelCopyWith(
    DartDefineModel value,
    $Res Function(DartDefineModel) then,
  ) = _$DartDefineModelCopyWithImpl<$Res, DartDefineModel>;
  @useResult
  $Res call({String type, DesignClass design});

  $DesignClassCopyWith<$Res> get design;
}

/// @nodoc
class _$DartDefineModelCopyWithImpl<$Res, $Val extends DartDefineModel>
    implements $DartDefineModelCopyWith<$Res> {
  _$DartDefineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DartDefineModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null, Object? design = null}) {
    return _then(
      _value.copyWith(
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            design: null == design
                ? _value.design
                : design // ignore: cast_nullable_to_non_nullable
                      as DesignClass,
          )
          as $Val,
    );
  }

  /// Create a copy of DartDefineModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DesignClassCopyWith<$Res> get design {
    return $DesignClassCopyWith<$Res>(_value.design, (value) {
      return _then(_value.copyWith(design: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DartDefineModelImplCopyWith<$Res>
    implements $DartDefineModelCopyWith<$Res> {
  factory _$$DartDefineModelImplCopyWith(
    _$DartDefineModelImpl value,
    $Res Function(_$DartDefineModelImpl) then,
  ) = __$$DartDefineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, DesignClass design});

  @override
  $DesignClassCopyWith<$Res> get design;
}

/// @nodoc
class __$$DartDefineModelImplCopyWithImpl<$Res>
    extends _$DartDefineModelCopyWithImpl<$Res, _$DartDefineModelImpl>
    implements _$$DartDefineModelImplCopyWith<$Res> {
  __$$DartDefineModelImplCopyWithImpl(
    _$DartDefineModelImpl _value,
    $Res Function(_$DartDefineModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DartDefineModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null, Object? design = null}) {
    return _then(
      _$DartDefineModelImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        design: null == design
            ? _value.design
            : design // ignore: cast_nullable_to_non_nullable
                  as DesignClass,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DartDefineModelImpl implements _DartDefineModel {
  const _$DartDefineModelImpl({required this.type, required this.design});

  factory _$DartDefineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DartDefineModelImplFromJson(json);

  @override
  final String type;
  @override
  final DesignClass design;

  @override
  String toString() {
    return 'DartDefineModel(type: $type, design: $design)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DartDefineModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.design, design) || other.design == design));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, design);

  /// Create a copy of DartDefineModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DartDefineModelImplCopyWith<_$DartDefineModelImpl> get copyWith =>
      __$$DartDefineModelImplCopyWithImpl<_$DartDefineModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DartDefineModelImplToJson(this);
  }
}

abstract class _DartDefineModel implements DartDefineModel {
  const factory _DartDefineModel({
    required final String type,
    required final DesignClass design,
  }) = _$DartDefineModelImpl;

  factory _DartDefineModel.fromJson(Map<String, dynamic> json) =
      _$DartDefineModelImpl.fromJson;

  @override
  String get type;
  @override
  DesignClass get design;

  /// Create a copy of DartDefineModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DartDefineModelImplCopyWith<_$DartDefineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stage_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StageData {
  String get id => throw _privateConstructorUsedError;
  String get parentId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  double get factor => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isSection => throw _privateConstructorUsedError;

  /// Create a copy of StageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StageDataCopyWith<StageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageDataCopyWith<$Res> {
  factory $StageDataCopyWith(StageData value, $Res Function(StageData) then) =
      _$StageDataCopyWithImpl<$Res, StageData>;
  @useResult
  $Res call({
    String id,
    String parentId,
    String type,
    double factor,
    double value,
    String name,
    bool isSection,
  });
}

/// @nodoc
class _$StageDataCopyWithImpl<$Res, $Val extends StageData>
    implements $StageDataCopyWith<$Res> {
  _$StageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? type = null,
    Object? factor = null,
    Object? value = null,
    Object? name = null,
    Object? isSection = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            parentId: null == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                      as String,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            factor: null == factor
                ? _value.factor
                : factor // ignore: cast_nullable_to_non_nullable
                      as double,
            value: null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                      as double,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            isSection: null == isSection
                ? _value.isSection
                : isSection // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StageDataImplCopyWith<$Res>
    implements $StageDataCopyWith<$Res> {
  factory _$$StageDataImplCopyWith(
    _$StageDataImpl value,
    $Res Function(_$StageDataImpl) then,
  ) = __$$StageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String parentId,
    String type,
    double factor,
    double value,
    String name,
    bool isSection,
  });
}

/// @nodoc
class __$$StageDataImplCopyWithImpl<$Res>
    extends _$StageDataCopyWithImpl<$Res, _$StageDataImpl>
    implements _$$StageDataImplCopyWith<$Res> {
  __$$StageDataImplCopyWithImpl(
    _$StageDataImpl _value,
    $Res Function(_$StageDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = null,
    Object? type = null,
    Object? factor = null,
    Object? value = null,
    Object? name = null,
    Object? isSection = null,
  }) {
    return _then(
      _$StageDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        parentId: null == parentId
            ? _value.parentId
            : parentId // ignore: cast_nullable_to_non_nullable
                  as String,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        factor: null == factor
            ? _value.factor
            : factor // ignore: cast_nullable_to_non_nullable
                  as double,
        value: null == value
            ? _value.value
            : value // ignore: cast_nullable_to_non_nullable
                  as double,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        isSection: null == isSection
            ? _value.isSection
            : isSection // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$StageDataImpl implements _StageData {
  const _$StageDataImpl({
    required this.id,
    required this.parentId,
    required this.type,
    required this.factor,
    required this.value,
    required this.name,
    this.isSection = false,
  });

  @override
  final String id;
  @override
  final String parentId;
  @override
  final String type;
  @override
  final double factor;
  @override
  final double value;
  @override
  final String name;
  @override
  @JsonKey()
  final bool isSection;

  @override
  String toString() {
    return 'StageData(id: $id, parentId: $parentId, type: $type, factor: $factor, value: $value, name: $name, isSection: $isSection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StageDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.factor, factor) || other.factor == factor) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isSection, isSection) ||
                other.isSection == isSection));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    parentId,
    type,
    factor,
    value,
    name,
    isSection,
  );

  /// Create a copy of StageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StageDataImplCopyWith<_$StageDataImpl> get copyWith =>
      __$$StageDataImplCopyWithImpl<_$StageDataImpl>(this, _$identity);
}

abstract class _StageData implements StageData {
  const factory _StageData({
    required final String id,
    required final String parentId,
    required final String type,
    required final double factor,
    required final double value,
    required final String name,
    final bool isSection,
  }) = _$StageDataImpl;

  @override
  String get id;
  @override
  String get parentId;
  @override
  String get type;
  @override
  double get factor;
  @override
  double get value;
  @override
  String get name;
  @override
  bool get isSection;

  /// Create a copy of StageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StageDataImplCopyWith<_$StageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StagesTableState _$StagesTableStateFromJson(Map<String, dynamic> json) {
  return _StagesTableState.fromJson(json);
}

/// @nodoc
mixin _$StagesTableState {
  List<StagesTableEntity> get entities => throw _privateConstructorUsedError;

  /// Serializes this StagesTableState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StagesTableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StagesTableStateCopyWith<StagesTableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StagesTableStateCopyWith<$Res> {
  factory $StagesTableStateCopyWith(
    StagesTableState value,
    $Res Function(StagesTableState) then,
  ) = _$StagesTableStateCopyWithImpl<$Res, StagesTableState>;
  @useResult
  $Res call({List<StagesTableEntity> entities});
}

/// @nodoc
class _$StagesTableStateCopyWithImpl<$Res, $Val extends StagesTableState>
    implements $StagesTableStateCopyWith<$Res> {
  _$StagesTableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StagesTableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? entities = null}) {
    return _then(
      _value.copyWith(
            entities: null == entities
                ? _value.entities
                : entities // ignore: cast_nullable_to_non_nullable
                      as List<StagesTableEntity>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StagesTableStateImplCopyWith<$Res>
    implements $StagesTableStateCopyWith<$Res> {
  factory _$$StagesTableStateImplCopyWith(
    _$StagesTableStateImpl value,
    $Res Function(_$StagesTableStateImpl) then,
  ) = __$$StagesTableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StagesTableEntity> entities});
}

/// @nodoc
class __$$StagesTableStateImplCopyWithImpl<$Res>
    extends _$StagesTableStateCopyWithImpl<$Res, _$StagesTableStateImpl>
    implements _$$StagesTableStateImplCopyWith<$Res> {
  __$$StagesTableStateImplCopyWithImpl(
    _$StagesTableStateImpl _value,
    $Res Function(_$StagesTableStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StagesTableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? entities = null}) {
    return _then(
      _$StagesTableStateImpl(
        entities: null == entities
            ? _value._entities
            : entities // ignore: cast_nullable_to_non_nullable
                  as List<StagesTableEntity>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StagesTableStateImpl extends _StagesTableState {
  const _$StagesTableStateImpl({
    final List<StagesTableEntity> entities = const [],
  }) : _entities = entities,
       super._();

  factory _$StagesTableStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$StagesTableStateImplFromJson(json);

  final List<StagesTableEntity> _entities;
  @override
  @JsonKey()
  List<StagesTableEntity> get entities {
    if (_entities is EqualUnmodifiableListView) return _entities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entities);
  }

  @override
  String toString() {
    return 'StagesTableState(entities: $entities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StagesTableStateImpl &&
            const DeepCollectionEquality().equals(other._entities, _entities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_entities));

  /// Create a copy of StagesTableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StagesTableStateImplCopyWith<_$StagesTableStateImpl> get copyWith =>
      __$$StagesTableStateImplCopyWithImpl<_$StagesTableStateImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StagesTableStateImplToJson(this);
  }
}

abstract class _StagesTableState extends StagesTableState {
  const factory _StagesTableState({final List<StagesTableEntity> entities}) =
      _$StagesTableStateImpl;
  const _StagesTableState._() : super._();

  factory _StagesTableState.fromJson(Map<String, dynamic> json) =
      _$StagesTableStateImpl.fromJson;

  @override
  List<StagesTableEntity> get entities;

  /// Create a copy of StagesTableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StagesTableStateImplCopyWith<_$StagesTableStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StagesTableEntity _$StagesTableEntityFromJson(Map<String, dynamic> json) {
  return _StagesTableEntity.fromJson(json);
}

/// @nodoc
mixin _$StagesTableEntity {
  Section? get section => throw _privateConstructorUsedError;
  String? get sectionName => throw _privateConstructorUsedError;
  double get coefficient => throw _privateConstructorUsedError;
  double? get costInDay => throw _privateConstructorUsedError;
  int? get durationOfWork => throw _privateConstructorUsedError;
  double? get cost => throw _privateConstructorUsedError;

  /// Serializes this StagesTableEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StagesTableEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StagesTableEntityCopyWith<StagesTableEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StagesTableEntityCopyWith<$Res> {
  factory $StagesTableEntityCopyWith(
    StagesTableEntity value,
    $Res Function(StagesTableEntity) then,
  ) = _$StagesTableEntityCopyWithImpl<$Res, StagesTableEntity>;
  @useResult
  $Res call({
    Section? section,
    String? sectionName,
    double coefficient,
    double? costInDay,
    int? durationOfWork,
    double? cost,
  });

  $SectionCopyWith<$Res>? get section;
}

/// @nodoc
class _$StagesTableEntityCopyWithImpl<$Res, $Val extends StagesTableEntity>
    implements $StagesTableEntityCopyWith<$Res> {
  _$StagesTableEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StagesTableEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = freezed,
    Object? sectionName = freezed,
    Object? coefficient = null,
    Object? costInDay = freezed,
    Object? durationOfWork = freezed,
    Object? cost = freezed,
  }) {
    return _then(
      _value.copyWith(
            section: freezed == section
                ? _value.section
                : section // ignore: cast_nullable_to_non_nullable
                      as Section?,
            sectionName: freezed == sectionName
                ? _value.sectionName
                : sectionName // ignore: cast_nullable_to_non_nullable
                      as String?,
            coefficient: null == coefficient
                ? _value.coefficient
                : coefficient // ignore: cast_nullable_to_non_nullable
                      as double,
            costInDay: freezed == costInDay
                ? _value.costInDay
                : costInDay // ignore: cast_nullable_to_non_nullable
                      as double?,
            durationOfWork: freezed == durationOfWork
                ? _value.durationOfWork
                : durationOfWork // ignore: cast_nullable_to_non_nullable
                      as int?,
            cost: freezed == cost
                ? _value.cost
                : cost // ignore: cast_nullable_to_non_nullable
                      as double?,
          )
          as $Val,
    );
  }

  /// Create a copy of StagesTableEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectionCopyWith<$Res>? get section {
    if (_value.section == null) {
      return null;
    }

    return $SectionCopyWith<$Res>(_value.section!, (value) {
      return _then(_value.copyWith(section: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StagesTableEntityImplCopyWith<$Res>
    implements $StagesTableEntityCopyWith<$Res> {
  factory _$$StagesTableEntityImplCopyWith(
    _$StagesTableEntityImpl value,
    $Res Function(_$StagesTableEntityImpl) then,
  ) = __$$StagesTableEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Section? section,
    String? sectionName,
    double coefficient,
    double? costInDay,
    int? durationOfWork,
    double? cost,
  });

  @override
  $SectionCopyWith<$Res>? get section;
}

/// @nodoc
class __$$StagesTableEntityImplCopyWithImpl<$Res>
    extends _$StagesTableEntityCopyWithImpl<$Res, _$StagesTableEntityImpl>
    implements _$$StagesTableEntityImplCopyWith<$Res> {
  __$$StagesTableEntityImplCopyWithImpl(
    _$StagesTableEntityImpl _value,
    $Res Function(_$StagesTableEntityImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StagesTableEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = freezed,
    Object? sectionName = freezed,
    Object? coefficient = null,
    Object? costInDay = freezed,
    Object? durationOfWork = freezed,
    Object? cost = freezed,
  }) {
    return _then(
      _$StagesTableEntityImpl(
        section: freezed == section
            ? _value.section
            : section // ignore: cast_nullable_to_non_nullable
                  as Section?,
        sectionName: freezed == sectionName
            ? _value.sectionName
            : sectionName // ignore: cast_nullable_to_non_nullable
                  as String?,
        coefficient: null == coefficient
            ? _value.coefficient
            : coefficient // ignore: cast_nullable_to_non_nullable
                  as double,
        costInDay: freezed == costInDay
            ? _value.costInDay
            : costInDay // ignore: cast_nullable_to_non_nullable
                  as double?,
        durationOfWork: freezed == durationOfWork
            ? _value.durationOfWork
            : durationOfWork // ignore: cast_nullable_to_non_nullable
                  as int?,
        cost: freezed == cost
            ? _value.cost
            : cost // ignore: cast_nullable_to_non_nullable
                  as double?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StagesTableEntityImpl extends _StagesTableEntity {
  const _$StagesTableEntityImpl({
    this.section,
    this.sectionName,
    this.coefficient = 1,
    this.costInDay,
    this.durationOfWork,
    this.cost,
  }) : super._();

  factory _$StagesTableEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$StagesTableEntityImplFromJson(json);

  @override
  final Section? section;
  @override
  final String? sectionName;
  @override
  @JsonKey()
  final double coefficient;
  @override
  final double? costInDay;
  @override
  final int? durationOfWork;
  @override
  final double? cost;

  @override
  String toString() {
    return 'StagesTableEntity(section: $section, sectionName: $sectionName, coefficient: $coefficient, costInDay: $costInDay, durationOfWork: $durationOfWork, cost: $cost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StagesTableEntityImpl &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.sectionName, sectionName) ||
                other.sectionName == sectionName) &&
            (identical(other.coefficient, coefficient) ||
                other.coefficient == coefficient) &&
            (identical(other.costInDay, costInDay) ||
                other.costInDay == costInDay) &&
            (identical(other.durationOfWork, durationOfWork) ||
                other.durationOfWork == durationOfWork) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    section,
    sectionName,
    coefficient,
    costInDay,
    durationOfWork,
    cost,
  );

  /// Create a copy of StagesTableEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StagesTableEntityImplCopyWith<_$StagesTableEntityImpl> get copyWith =>
      __$$StagesTableEntityImplCopyWithImpl<_$StagesTableEntityImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StagesTableEntityImplToJson(this);
  }
}

abstract class _StagesTableEntity extends StagesTableEntity {
  const factory _StagesTableEntity({
    final Section? section,
    final String? sectionName,
    final double coefficient,
    final double? costInDay,
    final int? durationOfWork,
    final double? cost,
  }) = _$StagesTableEntityImpl;
  const _StagesTableEntity._() : super._();

  factory _StagesTableEntity.fromJson(Map<String, dynamic> json) =
      _$StagesTableEntityImpl.fromJson;

  @override
  Section? get section;
  @override
  String? get sectionName;
  @override
  double get coefficient;
  @override
  double? get costInDay;
  @override
  int? get durationOfWork;
  @override
  double? get cost;

  /// Create a copy of StagesTableEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StagesTableEntityImplCopyWith<_$StagesTableEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

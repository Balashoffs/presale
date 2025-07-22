// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stage_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StageDataViewModel {
  StageData get stageInfo => throw _privateConstructorUsedError;
  List<StageData> get subStages => throw _privateConstructorUsedError;

  /// Create a copy of StageDataViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StageDataViewModelCopyWith<StageDataViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StageDataViewModelCopyWith<$Res> {
  factory $StageDataViewModelCopyWith(
    StageDataViewModel value,
    $Res Function(StageDataViewModel) then,
  ) = _$StageDataViewModelCopyWithImpl<$Res, StageDataViewModel>;
  @useResult
  $Res call({StageData stageInfo, List<StageData> subStages});

  $StageDataCopyWith<$Res> get stageInfo;
}

/// @nodoc
class _$StageDataViewModelCopyWithImpl<$Res, $Val extends StageDataViewModel>
    implements $StageDataViewModelCopyWith<$Res> {
  _$StageDataViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StageDataViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stageInfo = null, Object? subStages = null}) {
    return _then(
      _value.copyWith(
            stageInfo: null == stageInfo
                ? _value.stageInfo
                : stageInfo // ignore: cast_nullable_to_non_nullable
                      as StageData,
            subStages: null == subStages
                ? _value.subStages
                : subStages // ignore: cast_nullable_to_non_nullable
                      as List<StageData>,
          )
          as $Val,
    );
  }

  /// Create a copy of StageDataViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StageDataCopyWith<$Res> get stageInfo {
    return $StageDataCopyWith<$Res>(_value.stageInfo, (value) {
      return _then(_value.copyWith(stageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StageDataViewModelImplCopyWith<$Res>
    implements $StageDataViewModelCopyWith<$Res> {
  factory _$$StageDataViewModelImplCopyWith(
    _$StageDataViewModelImpl value,
    $Res Function(_$StageDataViewModelImpl) then,
  ) = __$$StageDataViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StageData stageInfo, List<StageData> subStages});

  @override
  $StageDataCopyWith<$Res> get stageInfo;
}

/// @nodoc
class __$$StageDataViewModelImplCopyWithImpl<$Res>
    extends _$StageDataViewModelCopyWithImpl<$Res, _$StageDataViewModelImpl>
    implements _$$StageDataViewModelImplCopyWith<$Res> {
  __$$StageDataViewModelImplCopyWithImpl(
    _$StageDataViewModelImpl _value,
    $Res Function(_$StageDataViewModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StageDataViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stageInfo = null, Object? subStages = null}) {
    return _then(
      _$StageDataViewModelImpl(
        stageInfo: null == stageInfo
            ? _value.stageInfo
            : stageInfo // ignore: cast_nullable_to_non_nullable
                  as StageData,
        subStages: null == subStages
            ? _value._subStages
            : subStages // ignore: cast_nullable_to_non_nullable
                  as List<StageData>,
      ),
    );
  }
}

/// @nodoc

class _$StageDataViewModelImpl implements _StageDataViewModel {
  const _$StageDataViewModelImpl({
    required this.stageInfo,
    required final List<StageData> subStages,
  }) : _subStages = subStages;

  @override
  final StageData stageInfo;
  final List<StageData> _subStages;
  @override
  List<StageData> get subStages {
    if (_subStages is EqualUnmodifiableListView) return _subStages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subStages);
  }

  @override
  String toString() {
    return 'StageDataViewModel(stageInfo: $stageInfo, subStages: $subStages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StageDataViewModelImpl &&
            (identical(other.stageInfo, stageInfo) ||
                other.stageInfo == stageInfo) &&
            const DeepCollectionEquality().equals(
              other._subStages,
              _subStages,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    stageInfo,
    const DeepCollectionEquality().hash(_subStages),
  );

  /// Create a copy of StageDataViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StageDataViewModelImplCopyWith<_$StageDataViewModelImpl> get copyWith =>
      __$$StageDataViewModelImplCopyWithImpl<_$StageDataViewModelImpl>(
        this,
        _$identity,
      );
}

abstract class _StageDataViewModel implements StageDataViewModel {
  const factory _StageDataViewModel({
    required final StageData stageInfo,
    required final List<StageData> subStages,
  }) = _$StageDataViewModelImpl;

  @override
  StageData get stageInfo;
  @override
  List<StageData> get subStages;

  /// Create a copy of StageDataViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StageDataViewModelImplCopyWith<_$StageDataViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SectionDataVewModel {
  StageData get stageInfo => throw _privateConstructorUsedError;
  List<SectionData> get subStages => throw _privateConstructorUsedError;

  /// Create a copy of SectionDataVewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionDataVewModelCopyWith<SectionDataVewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionDataVewModelCopyWith<$Res> {
  factory $SectionDataVewModelCopyWith(
    SectionDataVewModel value,
    $Res Function(SectionDataVewModel) then,
  ) = _$SectionDataVewModelCopyWithImpl<$Res, SectionDataVewModel>;
  @useResult
  $Res call({StageData stageInfo, List<SectionData> subStages});

  $StageDataCopyWith<$Res> get stageInfo;
}

/// @nodoc
class _$SectionDataVewModelCopyWithImpl<$Res, $Val extends SectionDataVewModel>
    implements $SectionDataVewModelCopyWith<$Res> {
  _$SectionDataVewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SectionDataVewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stageInfo = null, Object? subStages = null}) {
    return _then(
      _value.copyWith(
            stageInfo: null == stageInfo
                ? _value.stageInfo
                : stageInfo // ignore: cast_nullable_to_non_nullable
                      as StageData,
            subStages: null == subStages
                ? _value.subStages
                : subStages // ignore: cast_nullable_to_non_nullable
                      as List<SectionData>,
          )
          as $Val,
    );
  }

  /// Create a copy of SectionDataVewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StageDataCopyWith<$Res> get stageInfo {
    return $StageDataCopyWith<$Res>(_value.stageInfo, (value) {
      return _then(_value.copyWith(stageInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SectionDataVewModelImplCopyWith<$Res>
    implements $SectionDataVewModelCopyWith<$Res> {
  factory _$$SectionDataVewModelImplCopyWith(
    _$SectionDataVewModelImpl value,
    $Res Function(_$SectionDataVewModelImpl) then,
  ) = __$$SectionDataVewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StageData stageInfo, List<SectionData> subStages});

  @override
  $StageDataCopyWith<$Res> get stageInfo;
}

/// @nodoc
class __$$SectionDataVewModelImplCopyWithImpl<$Res>
    extends _$SectionDataVewModelCopyWithImpl<$Res, _$SectionDataVewModelImpl>
    implements _$$SectionDataVewModelImplCopyWith<$Res> {
  __$$SectionDataVewModelImplCopyWithImpl(
    _$SectionDataVewModelImpl _value,
    $Res Function(_$SectionDataVewModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SectionDataVewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? stageInfo = null, Object? subStages = null}) {
    return _then(
      _$SectionDataVewModelImpl(
        stageInfo: null == stageInfo
            ? _value.stageInfo
            : stageInfo // ignore: cast_nullable_to_non_nullable
                  as StageData,
        subStages: null == subStages
            ? _value._subStages
            : subStages // ignore: cast_nullable_to_non_nullable
                  as List<SectionData>,
      ),
    );
  }
}

/// @nodoc

class _$SectionDataVewModelImpl implements _SectionDataVewModel {
  const _$SectionDataVewModelImpl({
    required this.stageInfo,
    required final List<SectionData> subStages,
  }) : _subStages = subStages;

  @override
  final StageData stageInfo;
  final List<SectionData> _subStages;
  @override
  List<SectionData> get subStages {
    if (_subStages is EqualUnmodifiableListView) return _subStages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subStages);
  }

  @override
  String toString() {
    return 'SectionDataVewModel(stageInfo: $stageInfo, subStages: $subStages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionDataVewModelImpl &&
            (identical(other.stageInfo, stageInfo) ||
                other.stageInfo == stageInfo) &&
            const DeepCollectionEquality().equals(
              other._subStages,
              _subStages,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    stageInfo,
    const DeepCollectionEquality().hash(_subStages),
  );

  /// Create a copy of SectionDataVewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionDataVewModelImplCopyWith<_$SectionDataVewModelImpl> get copyWith =>
      __$$SectionDataVewModelImplCopyWithImpl<_$SectionDataVewModelImpl>(
        this,
        _$identity,
      );
}

abstract class _SectionDataVewModel implements SectionDataVewModel {
  const factory _SectionDataVewModel({
    required final StageData stageInfo,
    required final List<SectionData> subStages,
  }) = _$SectionDataVewModelImpl;

  @override
  StageData get stageInfo;
  @override
  List<SectionData> get subStages;

  /// Create a copy of SectionDataVewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionDataVewModelImplCopyWith<_$SectionDataVewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

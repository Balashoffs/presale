// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sections_table_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SectionsTableState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String errorText) error,
    required TResult Function(Map<String, List<SectionData>> sectionsData)
    sections,
    required TResult Function() nextPage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String errorText)? error,
    TResult? Function(Map<String, List<SectionData>> sectionsData)? sections,
    TResult? Function()? nextPage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String errorText)? error,
    TResult Function(Map<String, List<SectionData>> sectionsData)? sections,
    TResult Function()? nextPage,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Sections value) sections,
    required TResult Function(_nextPage value) nextPage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sections value)? sections,
    TResult? Function(_nextPage value)? nextPage,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Sections value)? sections,
    TResult Function(_nextPage value)? nextPage,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionsTableStateCopyWith<$Res> {
  factory $SectionsTableStateCopyWith(
    SectionsTableState value,
    $Res Function(SectionsTableState) then,
  ) = _$SectionsTableStateCopyWithImpl<$Res, SectionsTableState>;
}

/// @nodoc
class _$SectionsTableStateCopyWithImpl<$Res, $Val extends SectionsTableState>
    implements $SectionsTableStateCopyWith<$Res> {
  _$SectionsTableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SectionsTableState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SectionsTableStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SectionsTableState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SectionsTableState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String errorText) error,
    required TResult Function(Map<String, List<SectionData>> sectionsData)
    sections,
    required TResult Function() nextPage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String errorText)? error,
    TResult? Function(Map<String, List<SectionData>> sectionsData)? sections,
    TResult? Function()? nextPage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String errorText)? error,
    TResult Function(Map<String, List<SectionData>> sectionsData)? sections,
    TResult Function()? nextPage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Sections value) sections,
    required TResult Function(_nextPage value) nextPage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sections value)? sections,
    TResult? Function(_nextPage value)? nextPage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Sections value)? sections,
    TResult Function(_nextPage value)? nextPage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SectionsTableState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorText});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$SectionsTableStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SectionsTableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? errorText = null}) {
    return _then(
      _$ErrorImpl(
        null == errorText
            ? _value.errorText
            : errorText // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.errorText);

  @override
  final String errorText;

  @override
  String toString() {
    return 'SectionsTableState.error(errorText: $errorText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  /// Create a copy of SectionsTableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String errorText) error,
    required TResult Function(Map<String, List<SectionData>> sectionsData)
    sections,
    required TResult Function() nextPage,
  }) {
    return error(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String errorText)? error,
    TResult? Function(Map<String, List<SectionData>> sectionsData)? sections,
    TResult? Function()? nextPage,
  }) {
    return error?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String errorText)? error,
    TResult Function(Map<String, List<SectionData>> sectionsData)? sections,
    TResult Function()? nextPage,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Sections value) sections,
    required TResult Function(_nextPage value) nextPage,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sections value)? sections,
    TResult? Function(_nextPage value)? nextPage,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Sections value)? sections,
    TResult Function(_nextPage value)? nextPage,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SectionsTableState {
  const factory _Error(final String errorText) = _$ErrorImpl;

  String get errorText;

  /// Create a copy of SectionsTableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SectionsImplCopyWith<$Res> {
  factory _$$SectionsImplCopyWith(
    _$SectionsImpl value,
    $Res Function(_$SectionsImpl) then,
  ) = __$$SectionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, List<SectionData>> sectionsData});
}

/// @nodoc
class __$$SectionsImplCopyWithImpl<$Res>
    extends _$SectionsTableStateCopyWithImpl<$Res, _$SectionsImpl>
    implements _$$SectionsImplCopyWith<$Res> {
  __$$SectionsImplCopyWithImpl(
    _$SectionsImpl _value,
    $Res Function(_$SectionsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SectionsTableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sectionsData = null}) {
    return _then(
      _$SectionsImpl(
        null == sectionsData
            ? _value._sectionsData
            : sectionsData // ignore: cast_nullable_to_non_nullable
                  as Map<String, List<SectionData>>,
      ),
    );
  }
}

/// @nodoc

class _$SectionsImpl implements _Sections {
  const _$SectionsImpl(final Map<String, List<SectionData>> sectionsData)
    : _sectionsData = sectionsData;

  final Map<String, List<SectionData>> _sectionsData;
  @override
  Map<String, List<SectionData>> get sectionsData {
    if (_sectionsData is EqualUnmodifiableMapView) return _sectionsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sectionsData);
  }

  @override
  String toString() {
    return 'SectionsTableState.sections(sectionsData: $sectionsData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionsImpl &&
            const DeepCollectionEquality().equals(
              other._sectionsData,
              _sectionsData,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_sectionsData),
  );

  /// Create a copy of SectionsTableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionsImplCopyWith<_$SectionsImpl> get copyWith =>
      __$$SectionsImplCopyWithImpl<_$SectionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String errorText) error,
    required TResult Function(Map<String, List<SectionData>> sectionsData)
    sections,
    required TResult Function() nextPage,
  }) {
    return sections(sectionsData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String errorText)? error,
    TResult? Function(Map<String, List<SectionData>> sectionsData)? sections,
    TResult? Function()? nextPage,
  }) {
    return sections?.call(sectionsData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String errorText)? error,
    TResult Function(Map<String, List<SectionData>> sectionsData)? sections,
    TResult Function()? nextPage,
    required TResult orElse(),
  }) {
    if (sections != null) {
      return sections(sectionsData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Sections value) sections,
    required TResult Function(_nextPage value) nextPage,
  }) {
    return sections(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sections value)? sections,
    TResult? Function(_nextPage value)? nextPage,
  }) {
    return sections?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Sections value)? sections,
    TResult Function(_nextPage value)? nextPage,
    required TResult orElse(),
  }) {
    if (sections != null) {
      return sections(this);
    }
    return orElse();
  }
}

abstract class _Sections implements SectionsTableState {
  const factory _Sections(final Map<String, List<SectionData>> sectionsData) =
      _$SectionsImpl;

  Map<String, List<SectionData>> get sectionsData;

  /// Create a copy of SectionsTableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionsImplCopyWith<_$SectionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$nextPageImplCopyWith<$Res> {
  factory _$$nextPageImplCopyWith(
    _$nextPageImpl value,
    $Res Function(_$nextPageImpl) then,
  ) = __$$nextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$nextPageImplCopyWithImpl<$Res>
    extends _$SectionsTableStateCopyWithImpl<$Res, _$nextPageImpl>
    implements _$$nextPageImplCopyWith<$Res> {
  __$$nextPageImplCopyWithImpl(
    _$nextPageImpl _value,
    $Res Function(_$nextPageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SectionsTableState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$nextPageImpl implements _nextPage {
  const _$nextPageImpl();

  @override
  String toString() {
    return 'SectionsTableState.nextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$nextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String errorText) error,
    required TResult Function(Map<String, List<SectionData>> sectionsData)
    sections,
    required TResult Function() nextPage,
  }) {
    return nextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String errorText)? error,
    TResult? Function(Map<String, List<SectionData>> sectionsData)? sections,
    TResult? Function()? nextPage,
  }) {
    return nextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String errorText)? error,
    TResult Function(Map<String, List<SectionData>> sectionsData)? sections,
    TResult Function()? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Error value) error,
    required TResult Function(_Sections value) sections,
    required TResult Function(_nextPage value) nextPage,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sections value)? sections,
    TResult? Function(_nextPage value)? nextPage,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Error value)? error,
    TResult Function(_Sections value)? sections,
    TResult Function(_nextPage value)? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class _nextPage implements SectionsTableState {
  const factory _nextPage() = _$nextPageImpl;
}

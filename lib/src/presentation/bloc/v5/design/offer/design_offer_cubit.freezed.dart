// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'design_offer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DesignOfferState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nextPage,
    required TResult Function(DesignOfferResultVM result) showPage,
    required TResult Function(String errorText) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? nextPage,
    TResult? Function(DesignOfferResultVM result)? showPage,
    TResult? Function(String errorText)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nextPage,
    TResult Function(DesignOfferResultVM result)? showPage,
    TResult Function(String errorText)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_ShowPage value) showPage,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_ShowPage value)? showPage,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_ShowPage value)? showPage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignOfferStateCopyWith<$Res> {
  factory $DesignOfferStateCopyWith(
    DesignOfferState value,
    $Res Function(DesignOfferState) then,
  ) = _$DesignOfferStateCopyWithImpl<$Res, DesignOfferState>;
}

/// @nodoc
class _$DesignOfferStateCopyWithImpl<$Res, $Val extends DesignOfferState>
    implements $DesignOfferStateCopyWith<$Res> {
  _$DesignOfferStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DesignOfferState
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
    extends _$DesignOfferStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DesignOfferState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DesignOfferState.initial()';
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
    required TResult Function() nextPage,
    required TResult Function(DesignOfferResultVM result) showPage,
    required TResult Function(String errorText) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? nextPage,
    TResult? Function(DesignOfferResultVM result)? showPage,
    TResult? Function(String errorText)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nextPage,
    TResult Function(DesignOfferResultVM result)? showPage,
    TResult Function(String errorText)? error,
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
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_ShowPage value) showPage,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_ShowPage value)? showPage,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_ShowPage value)? showPage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DesignOfferState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$NextPageImplCopyWith<$Res> {
  factory _$$NextPageImplCopyWith(
    _$NextPageImpl value,
    $Res Function(_$NextPageImpl) then,
  ) = __$$NextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageImplCopyWithImpl<$Res>
    extends _$DesignOfferStateCopyWithImpl<$Res, _$NextPageImpl>
    implements _$$NextPageImplCopyWith<$Res> {
  __$$NextPageImplCopyWithImpl(
    _$NextPageImpl _value,
    $Res Function(_$NextPageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DesignOfferState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextPageImpl implements _NextPage {
  const _$NextPageImpl();

  @override
  String toString() {
    return 'DesignOfferState.nextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nextPage,
    required TResult Function(DesignOfferResultVM result) showPage,
    required TResult Function(String errorText) error,
  }) {
    return nextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? nextPage,
    TResult? Function(DesignOfferResultVM result)? showPage,
    TResult? Function(String errorText)? error,
  }) {
    return nextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nextPage,
    TResult Function(DesignOfferResultVM result)? showPage,
    TResult Function(String errorText)? error,
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
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_ShowPage value) showPage,
    required TResult Function(_Error value) error,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_ShowPage value)? showPage,
    TResult? Function(_Error value)? error,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_ShowPage value)? showPage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class _NextPage implements DesignOfferState {
  const factory _NextPage() = _$NextPageImpl;
}

/// @nodoc
abstract class _$$ShowPageImplCopyWith<$Res> {
  factory _$$ShowPageImplCopyWith(
    _$ShowPageImpl value,
    $Res Function(_$ShowPageImpl) then,
  ) = __$$ShowPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DesignOfferResultVM result});
}

/// @nodoc
class __$$ShowPageImplCopyWithImpl<$Res>
    extends _$DesignOfferStateCopyWithImpl<$Res, _$ShowPageImpl>
    implements _$$ShowPageImplCopyWith<$Res> {
  __$$ShowPageImplCopyWithImpl(
    _$ShowPageImpl _value,
    $Res Function(_$ShowPageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DesignOfferState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? result = null}) {
    return _then(
      _$ShowPageImpl(
        null == result
            ? _value.result
            : result // ignore: cast_nullable_to_non_nullable
                  as DesignOfferResultVM,
      ),
    );
  }
}

/// @nodoc

class _$ShowPageImpl implements _ShowPage {
  const _$ShowPageImpl(this.result);

  @override
  final DesignOfferResultVM result;

  @override
  String toString() {
    return 'DesignOfferState.showPage(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowPageImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of DesignOfferState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowPageImplCopyWith<_$ShowPageImpl> get copyWith =>
      __$$ShowPageImplCopyWithImpl<_$ShowPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nextPage,
    required TResult Function(DesignOfferResultVM result) showPage,
    required TResult Function(String errorText) error,
  }) {
    return showPage(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? nextPage,
    TResult? Function(DesignOfferResultVM result)? showPage,
    TResult? Function(String errorText)? error,
  }) {
    return showPage?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nextPage,
    TResult Function(DesignOfferResultVM result)? showPage,
    TResult Function(String errorText)? error,
    required TResult orElse(),
  }) {
    if (showPage != null) {
      return showPage(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_ShowPage value) showPage,
    required TResult Function(_Error value) error,
  }) {
    return showPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_ShowPage value)? showPage,
    TResult? Function(_Error value)? error,
  }) {
    return showPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_ShowPage value)? showPage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (showPage != null) {
      return showPage(this);
    }
    return orElse();
  }
}

abstract class _ShowPage implements DesignOfferState {
  const factory _ShowPage(final DesignOfferResultVM result) = _$ShowPageImpl;

  DesignOfferResultVM get result;

  /// Create a copy of DesignOfferState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowPageImplCopyWith<_$ShowPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$DesignOfferStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DesignOfferState
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
    return 'DesignOfferState.error(errorText: $errorText)';
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

  /// Create a copy of DesignOfferState
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
    required TResult Function() nextPage,
    required TResult Function(DesignOfferResultVM result) showPage,
    required TResult Function(String errorText) error,
  }) {
    return error(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? nextPage,
    TResult? Function(DesignOfferResultVM result)? showPage,
    TResult? Function(String errorText)? error,
  }) {
    return error?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nextPage,
    TResult Function(DesignOfferResultVM result)? showPage,
    TResult Function(String errorText)? error,
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
    required TResult Function(_NextPage value) nextPage,
    required TResult Function(_ShowPage value) showPage,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_NextPage value)? nextPage,
    TResult? Function(_ShowPage value)? showPage,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_NextPage value)? nextPage,
    TResult Function(_ShowPage value)? showPage,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DesignOfferState {
  const factory _Error(final String errorText) = _$ErrorImpl;

  String get errorText;

  /// Create a copy of DesignOfferState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

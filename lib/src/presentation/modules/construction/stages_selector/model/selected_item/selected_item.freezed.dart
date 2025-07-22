// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StagesSelectorSelectedItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  /// Create a copy of StagesSelectorSelectedItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StagesSelectorSelectedItemCopyWith<StagesSelectorSelectedItem>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StagesSelectorSelectedItemCopyWith<$Res> {
  factory $StagesSelectorSelectedItemCopyWith(
    StagesSelectorSelectedItem value,
    $Res Function(StagesSelectorSelectedItem) then,
  ) =
      _$StagesSelectorSelectedItemCopyWithImpl<
        $Res,
        StagesSelectorSelectedItem
      >;
  @useResult
  $Res call({String id, String name, bool isSelected});
}

/// @nodoc
class _$StagesSelectorSelectedItemCopyWithImpl<
  $Res,
  $Val extends StagesSelectorSelectedItem
>
    implements $StagesSelectorSelectedItemCopyWith<$Res> {
  _$StagesSelectorSelectedItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StagesSelectorSelectedItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isSelected = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            isSelected: null == isSelected
                ? _value.isSelected
                : isSelected // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StagesSelectorSelectedItemImplCopyWith<$Res>
    implements $StagesSelectorSelectedItemCopyWith<$Res> {
  factory _$$StagesSelectorSelectedItemImplCopyWith(
    _$StagesSelectorSelectedItemImpl value,
    $Res Function(_$StagesSelectorSelectedItemImpl) then,
  ) = __$$StagesSelectorSelectedItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, bool isSelected});
}

/// @nodoc
class __$$StagesSelectorSelectedItemImplCopyWithImpl<$Res>
    extends
        _$StagesSelectorSelectedItemCopyWithImpl<
          $Res,
          _$StagesSelectorSelectedItemImpl
        >
    implements _$$StagesSelectorSelectedItemImplCopyWith<$Res> {
  __$$StagesSelectorSelectedItemImplCopyWithImpl(
    _$StagesSelectorSelectedItemImpl _value,
    $Res Function(_$StagesSelectorSelectedItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StagesSelectorSelectedItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isSelected = null,
  }) {
    return _then(
      _$StagesSelectorSelectedItemImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        isSelected: null == isSelected
            ? _value.isSelected
            : isSelected // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$StagesSelectorSelectedItemImpl implements _StagesSelectorSelectedItem {
  const _$StagesSelectorSelectedItemImpl({
    required this.id,
    required this.name,
    this.isSelected = false,
  });

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'StagesSelectorSelectedItem(id: $id, name: $name, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StagesSelectorSelectedItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, isSelected);

  /// Create a copy of StagesSelectorSelectedItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StagesSelectorSelectedItemImplCopyWith<_$StagesSelectorSelectedItemImpl>
  get copyWith =>
      __$$StagesSelectorSelectedItemImplCopyWithImpl<
        _$StagesSelectorSelectedItemImpl
      >(this, _$identity);
}

abstract class _StagesSelectorSelectedItem
    implements StagesSelectorSelectedItem {
  const factory _StagesSelectorSelectedItem({
    required final String id,
    required final String name,
    final bool isSelected,
  }) = _$StagesSelectorSelectedItemImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  bool get isSelected;

  /// Create a copy of StagesSelectorSelectedItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StagesSelectorSelectedItemImplCopyWith<_$StagesSelectorSelectedItemImpl>
  get copyWith => throw _privateConstructorUsedError;
}

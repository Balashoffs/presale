// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'design_presale_pojo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DesignPresalePojo {

 InputDataDesign get inputDataDesign; DivisionResourceTableWithTypePojo? get resource; DivisionsMarginTableWithTypePojo? get divisions; CommercialOfferResult? get offers;
/// Create a copy of DesignPresalePojo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DesignPresalePojoCopyWith<DesignPresalePojo> get copyWith => _$DesignPresalePojoCopyWithImpl<DesignPresalePojo>(this as DesignPresalePojo, _$identity);

  /// Serializes this DesignPresalePojo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DesignPresalePojo&&(identical(other.inputDataDesign, inputDataDesign) || other.inputDataDesign == inputDataDesign)&&(identical(other.resource, resource) || other.resource == resource)&&(identical(other.divisions, divisions) || other.divisions == divisions)&&(identical(other.offers, offers) || other.offers == offers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,inputDataDesign,resource,divisions,offers);

@override
String toString() {
  return 'DesignPresalePojo(inputDataDesign: $inputDataDesign, resource: $resource, divisions: $divisions, offers: $offers)';
}


}

/// @nodoc
abstract mixin class $DesignPresalePojoCopyWith<$Res>  {
  factory $DesignPresalePojoCopyWith(DesignPresalePojo value, $Res Function(DesignPresalePojo) _then) = _$DesignPresalePojoCopyWithImpl;
@useResult
$Res call({
 InputDataDesign inputDataDesign, DivisionResourceTableWithTypePojo? resource, DivisionsMarginTableWithTypePojo? divisions, CommercialOfferResult? offers
});


$InputDataDesignCopyWith<$Res> get inputDataDesign;$DivisionResourceTableWithTypePojoCopyWith<$Res>? get resource;$DivisionsMarginTableWithTypePojoCopyWith<$Res>? get divisions;$CommercialOfferResultCopyWith<$Res>? get offers;

}
/// @nodoc
class _$DesignPresalePojoCopyWithImpl<$Res>
    implements $DesignPresalePojoCopyWith<$Res> {
  _$DesignPresalePojoCopyWithImpl(this._self, this._then);

  final DesignPresalePojo _self;
  final $Res Function(DesignPresalePojo) _then;

/// Create a copy of DesignPresalePojo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? inputDataDesign = null,Object? resource = freezed,Object? divisions = freezed,Object? offers = freezed,}) {
  return _then(_self.copyWith(
inputDataDesign: null == inputDataDesign ? _self.inputDataDesign : inputDataDesign // ignore: cast_nullable_to_non_nullable
as InputDataDesign,resource: freezed == resource ? _self.resource : resource // ignore: cast_nullable_to_non_nullable
as DivisionResourceTableWithTypePojo?,divisions: freezed == divisions ? _self.divisions : divisions // ignore: cast_nullable_to_non_nullable
as DivisionsMarginTableWithTypePojo?,offers: freezed == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as CommercialOfferResult?,
  ));
}
/// Create a copy of DesignPresalePojo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InputDataDesignCopyWith<$Res> get inputDataDesign {
  
  return $InputDataDesignCopyWith<$Res>(_self.inputDataDesign, (value) {
    return _then(_self.copyWith(inputDataDesign: value));
  });
}/// Create a copy of DesignPresalePojo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionResourceTableWithTypePojoCopyWith<$Res>? get resource {
    if (_self.resource == null) {
    return null;
  }

  return $DivisionResourceTableWithTypePojoCopyWith<$Res>(_self.resource!, (value) {
    return _then(_self.copyWith(resource: value));
  });
}/// Create a copy of DesignPresalePojo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionsMarginTableWithTypePojoCopyWith<$Res>? get divisions {
    if (_self.divisions == null) {
    return null;
  }

  return $DivisionsMarginTableWithTypePojoCopyWith<$Res>(_self.divisions!, (value) {
    return _then(_self.copyWith(divisions: value));
  });
}/// Create a copy of DesignPresalePojo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommercialOfferResultCopyWith<$Res>? get offers {
    if (_self.offers == null) {
    return null;
  }

  return $CommercialOfferResultCopyWith<$Res>(_self.offers!, (value) {
    return _then(_self.copyWith(offers: value));
  });
}
}


/// Adds pattern-matching-related methods to [DesignPresalePojo].
extension DesignPresalePojoPatterns on DesignPresalePojo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DesignPresalePojo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DesignPresalePojo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DesignPresalePojo value)  $default,){
final _that = this;
switch (_that) {
case _DesignPresalePojo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DesignPresalePojo value)?  $default,){
final _that = this;
switch (_that) {
case _DesignPresalePojo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( InputDataDesign inputDataDesign,  DivisionResourceTableWithTypePojo? resource,  DivisionsMarginTableWithTypePojo? divisions,  CommercialOfferResult? offers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DesignPresalePojo() when $default != null:
return $default(_that.inputDataDesign,_that.resource,_that.divisions,_that.offers);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( InputDataDesign inputDataDesign,  DivisionResourceTableWithTypePojo? resource,  DivisionsMarginTableWithTypePojo? divisions,  CommercialOfferResult? offers)  $default,) {final _that = this;
switch (_that) {
case _DesignPresalePojo():
return $default(_that.inputDataDesign,_that.resource,_that.divisions,_that.offers);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( InputDataDesign inputDataDesign,  DivisionResourceTableWithTypePojo? resource,  DivisionsMarginTableWithTypePojo? divisions,  CommercialOfferResult? offers)?  $default,) {final _that = this;
switch (_that) {
case _DesignPresalePojo() when $default != null:
return $default(_that.inputDataDesign,_that.resource,_that.divisions,_that.offers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DesignPresalePojo implements DesignPresalePojo {
  const _DesignPresalePojo({required this.inputDataDesign, this.resource, this.divisions, this.offers});
  factory _DesignPresalePojo.fromJson(Map<String, dynamic> json) => _$DesignPresalePojoFromJson(json);

@override final  InputDataDesign inputDataDesign;
@override final  DivisionResourceTableWithTypePojo? resource;
@override final  DivisionsMarginTableWithTypePojo? divisions;
@override final  CommercialOfferResult? offers;

/// Create a copy of DesignPresalePojo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DesignPresalePojoCopyWith<_DesignPresalePojo> get copyWith => __$DesignPresalePojoCopyWithImpl<_DesignPresalePojo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DesignPresalePojoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DesignPresalePojo&&(identical(other.inputDataDesign, inputDataDesign) || other.inputDataDesign == inputDataDesign)&&(identical(other.resource, resource) || other.resource == resource)&&(identical(other.divisions, divisions) || other.divisions == divisions)&&(identical(other.offers, offers) || other.offers == offers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,inputDataDesign,resource,divisions,offers);

@override
String toString() {
  return 'DesignPresalePojo(inputDataDesign: $inputDataDesign, resource: $resource, divisions: $divisions, offers: $offers)';
}


}

/// @nodoc
abstract mixin class _$DesignPresalePojoCopyWith<$Res> implements $DesignPresalePojoCopyWith<$Res> {
  factory _$DesignPresalePojoCopyWith(_DesignPresalePojo value, $Res Function(_DesignPresalePojo) _then) = __$DesignPresalePojoCopyWithImpl;
@override @useResult
$Res call({
 InputDataDesign inputDataDesign, DivisionResourceTableWithTypePojo? resource, DivisionsMarginTableWithTypePojo? divisions, CommercialOfferResult? offers
});


@override $InputDataDesignCopyWith<$Res> get inputDataDesign;@override $DivisionResourceTableWithTypePojoCopyWith<$Res>? get resource;@override $DivisionsMarginTableWithTypePojoCopyWith<$Res>? get divisions;@override $CommercialOfferResultCopyWith<$Res>? get offers;

}
/// @nodoc
class __$DesignPresalePojoCopyWithImpl<$Res>
    implements _$DesignPresalePojoCopyWith<$Res> {
  __$DesignPresalePojoCopyWithImpl(this._self, this._then);

  final _DesignPresalePojo _self;
  final $Res Function(_DesignPresalePojo) _then;

/// Create a copy of DesignPresalePojo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? inputDataDesign = null,Object? resource = freezed,Object? divisions = freezed,Object? offers = freezed,}) {
  return _then(_DesignPresalePojo(
inputDataDesign: null == inputDataDesign ? _self.inputDataDesign : inputDataDesign // ignore: cast_nullable_to_non_nullable
as InputDataDesign,resource: freezed == resource ? _self.resource : resource // ignore: cast_nullable_to_non_nullable
as DivisionResourceTableWithTypePojo?,divisions: freezed == divisions ? _self.divisions : divisions // ignore: cast_nullable_to_non_nullable
as DivisionsMarginTableWithTypePojo?,offers: freezed == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as CommercialOfferResult?,
  ));
}

/// Create a copy of DesignPresalePojo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InputDataDesignCopyWith<$Res> get inputDataDesign {
  
  return $InputDataDesignCopyWith<$Res>(_self.inputDataDesign, (value) {
    return _then(_self.copyWith(inputDataDesign: value));
  });
}/// Create a copy of DesignPresalePojo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionResourceTableWithTypePojoCopyWith<$Res>? get resource {
    if (_self.resource == null) {
    return null;
  }

  return $DivisionResourceTableWithTypePojoCopyWith<$Res>(_self.resource!, (value) {
    return _then(_self.copyWith(resource: value));
  });
}/// Create a copy of DesignPresalePojo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DivisionsMarginTableWithTypePojoCopyWith<$Res>? get divisions {
    if (_self.divisions == null) {
    return null;
  }

  return $DivisionsMarginTableWithTypePojoCopyWith<$Res>(_self.divisions!, (value) {
    return _then(_self.copyWith(divisions: value));
  });
}/// Create a copy of DesignPresalePojo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommercialOfferResultCopyWith<$Res>? get offers {
    if (_self.offers == null) {
    return null;
  }

  return $CommercialOfferResultCopyWith<$Res>(_self.offers!, (value) {
    return _then(_self.copyWith(offers: value));
  });
}
}

// dart format on

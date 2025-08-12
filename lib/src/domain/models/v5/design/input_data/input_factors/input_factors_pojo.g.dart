// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_factors_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputFactorsPojoImpl _$$InputFactorsPojoImplFromJson(
  Map<String, dynamic> json,
) => _$InputFactorsPojoImpl(
  overPriceFactor: (json['overPriceFactor'] as num).toDouble(),
  customerFactor: (json['customerFactor'] as num).toDouble(),
  marginFactor: (json['marginFactor'] as num).toDouble(),
  speedFactor: (json['speedFactor'] as num).toDouble(),
  heightFactor: (json['heightFactor'] as num).toDouble(),
  remotingFactor: (json['remotingFactor'] as num).toDouble(),
  complexityFactor: (json['complexityFactor'] as num).toDouble(),
  squareFactor: (json['squareFactor'] as num).toDouble(),
);

Map<String, dynamic> _$$InputFactorsPojoImplToJson(
  _$InputFactorsPojoImpl instance,
) => <String, dynamic>{
  'overPriceFactor': instance.overPriceFactor,
  'customerFactor': instance.customerFactor,
  'marginFactor': instance.marginFactor,
  'speedFactor': instance.speedFactor,
  'heightFactor': instance.heightFactor,
  'remotingFactor': instance.remotingFactor,
  'complexityFactor': instance.complexityFactor,
  'squareFactor': instance.squareFactor,
};

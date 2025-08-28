// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_factors_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InputFactorsPojo _$InputFactorsPojoFromJson(Map<String, dynamic> json) =>
    _InputFactorsPojo(
      speedFactor: (json['speedFactor'] as num).toDouble(),
      heightFactor: (json['heightFactor'] as num).toDouble(),
      overPriceFactor: (json['overPriceFactor'] as num).toDouble(),
      remotingFactor: (json['remotingFactor'] as num).toDouble(),
      complexityFactor: (json['complexityFactor'] as num).toDouble(),
      customerFactor: (json['customerFactor'] as num).toDouble(),
      marginFactor: (json['marginFactor'] as num).toDouble(),
      squareFactor: (json['squareFactor'] as num).toDouble(),
    );

Map<String, dynamic> _$InputFactorsPojoToJson(_InputFactorsPojo instance) =>
    <String, dynamic>{
      'speedFactor': instance.speedFactor,
      'heightFactor': instance.heightFactor,
      'overPriceFactor': instance.overPriceFactor,
      'remotingFactor': instance.remotingFactor,
      'complexityFactor': instance.complexityFactor,
      'customerFactor': instance.customerFactor,
      'marginFactor': instance.marginFactor,
      'squareFactor': instance.squareFactor,
    };

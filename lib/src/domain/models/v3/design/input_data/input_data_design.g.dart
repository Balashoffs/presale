// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_data_design.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputDataDesignImpl _$$InputDataDesignImplFromJson(
  Map<String, dynamic> json,
) => _$InputDataDesignImpl(
  created: json['created'] == null
      ? null
      : DateTime.parse(json['created'] as String),
  objectData: ObjectDataDesign.fromJson(
    json['objectData'] as Map<String, dynamic>,
  ),
  speedFactor: (json['speedFactor'] as num).toDouble(),
  heightFactor: (json['heightFactor'] as num).toDouble(),
  overPriceFactor: (json['overPriceFactor'] as num).toDouble(),
  remotingFactor: (json['remotingFactor'] as num).toDouble(),
  complexityFactor: (json['complexityFactor'] as num).toDouble(),
  consumerFactor: (json['consumerFactor'] as num).toDouble(),
  rateReturnFactor: (json['rateReturnFactor'] as num).toDouble(),
  squareFactor: (json['squareFactor'] as num).toDouble(),
  divisionType:
      $enumDecodeNullable(_$DivisionTypeEnumMap, json['divisionType']) ??
      DivisionType.project,
);

Map<String, dynamic> _$$InputDataDesignImplToJson(
  _$InputDataDesignImpl instance,
) => <String, dynamic>{
  'created': instance.created?.toIso8601String(),
  'objectData': instance.objectData,
  'speedFactor': instance.speedFactor,
  'heightFactor': instance.heightFactor,
  'overPriceFactor': instance.overPriceFactor,
  'remotingFactor': instance.remotingFactor,
  'complexityFactor': instance.complexityFactor,
  'consumerFactor': instance.consumerFactor,
  'rateReturnFactor': instance.rateReturnFactor,
  'squareFactor': instance.squareFactor,
  'divisionType': _$DivisionTypeEnumMap[instance.divisionType]!,
};

const _$DivisionTypeEnumMap = {
  DivisionType.project: 'project',
  DivisionType.both: 'both',
  DivisionType.working: 'working',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_data_design.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InputDataDesign _$InputDataDesignFromJson(Map<String, dynamic> json) =>
    _InputDataDesign(
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      objectData: ObjectDataDesign.fromJson(
        json['objectData'] as Map<String, dynamic>,
      ),
      inputFactors: InputFactorsPojo.fromJson(
        json['inputFactors'] as Map<String, dynamic>,
      ),
      divisionType: $enumDecode(_$DivisionTypeEnumMap, json['divisionType']),
    );

Map<String, dynamic> _$InputDataDesignToJson(_InputDataDesign instance) =>
    <String, dynamic>{
      'created': instance.created?.toIso8601String(),
      'objectData': instance.objectData,
      'inputFactors': instance.inputFactors,
      'divisionType': _$DivisionTypeEnumMap[instance.divisionType]!,
    };

const _$DivisionTypeEnumMap = {
  DivisionType.project: 'project',
  DivisionType.working: 'working',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StagesTableState _$StagesTableStateFromJson(Map<String, dynamic> json) =>
    _StagesTableState(
      entities:
          (json['entities'] as List<dynamic>?)
              ?.map(
                (e) => StagesTableEntity.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$StagesTableStateToJson(_StagesTableState instance) =>
    <String, dynamic>{'entities': instance.entities};

_StagesTableEntity _$StagesTableEntityFromJson(Map<String, dynamic> json) =>
    _StagesTableEntity(
      section: json['section'] == null
          ? null
          : Section.fromJson(json['section'] as Map<String, dynamic>),
      sectionName: json['sectionName'] as String?,
      coefficient: (json['coefficient'] as num?)?.toDouble() ?? 1,
      costInDay: (json['costInDay'] as num?)?.toDouble(),
      durationOfWork: (json['durationOfWork'] as num?)?.toInt(),
      cost: (json['cost'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$StagesTableEntityToJson(_StagesTableEntity instance) =>
    <String, dynamic>{
      'section': instance.section,
      'sectionName': instance.sectionName,
      'coefficient': instance.coefficient,
      'costInDay': instance.costInDay,
      'durationOfWork': instance.durationOfWork,
      'cost': instance.cost,
    };

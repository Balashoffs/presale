// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StagesTableStateImpl _$$StagesTableStateImplFromJson(
  Map<String, dynamic> json,
) => _$StagesTableStateImpl(
  entities:
      (json['entities'] as List<dynamic>?)
          ?.map((e) => StagesTableEntity.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$StagesTableStateImplToJson(
  _$StagesTableStateImpl instance,
) => <String, dynamic>{'entities': instance.entities};

_$StagesTableEntityImpl _$$StagesTableEntityImplFromJson(
  Map<String, dynamic> json,
) => _$StagesTableEntityImpl(
  section: json['section'] == null
      ? null
      : Section.fromJson(json['section'] as Map<String, dynamic>),
  sectionName: json['sectionName'] as String?,
  coefficient: (json['coefficient'] as num?)?.toDouble() ?? 1,
  costInDay: (json['costInDay'] as num?)?.toDouble(),
  durationOfWork: (json['durationOfWork'] as num?)?.toInt(),
  cost: (json['cost'] as num?)?.toDouble(),
);

Map<String, dynamic> _$$StagesTableEntityImplToJson(
  _$StagesTableEntityImpl instance,
) => <String, dynamic>{
  'section': instance.section,
  'sectionName': instance.sectionName,
  'coefficient': instance.coefficient,
  'costInDay': instance.costInDay,
  'durationOfWork': instance.durationOfWork,
  'cost': instance.cost,
};

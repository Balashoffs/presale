// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dart_define_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DartDefineModelImpl _$$DartDefineModelImplFromJson(
  Map<String, dynamic> json,
) => _$DartDefineModelImpl(
  type: json['type'] as String,
  design: DesignClass.fromJson(json['design'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$DartDefineModelImplToJson(
  _$DartDefineModelImpl instance,
) => <String, dynamic>{'type': instance.type, 'design': instance.design};

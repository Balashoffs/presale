// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_data_design.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ObjectDataDesign _$ObjectDataDesignFromJson(Map<String, dynamic> json) =>
    _ObjectDataDesign(
      name: json['name'] as String,
      address: json['address'] as String,
      square: (json['square'] as num).toInt(),
      deadlineValue: (json['deadlineValue'] as num).toInt(),
    );

Map<String, dynamic> _$ObjectDataDesignToJson(_ObjectDataDesign instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'square': instance.square,
      'deadlineValue': instance.deadlineValue,
    };

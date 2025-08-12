// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_data_design.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ObjectDataDesignImpl _$$ObjectDataDesignImplFromJson(
  Map<String, dynamic> json,
) => _$ObjectDataDesignImpl(
  name: json['name'] as String,
  address: json['address'] as String,
  square: (json['square'] as num?)?.toDouble() ?? 0.0,
  deadlineValue: (json['deadlineValue'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$ObjectDataDesignImplToJson(
  _$ObjectDataDesignImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'address': instance.address,
  'square': instance.square,
  'deadlineValue': instance.deadlineValue,
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignPersonImpl _$$SignPersonImplFromJson(Map<String, dynamic> json) =>
    _$SignPersonImpl(
      jobTitle: json['jobTitle'] as String,
      companyName: json['companyName'] as String,
      fullName: json['fullName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$SignPersonImplToJson(_$SignPersonImpl instance) =>
    <String, dynamic>{
      'jobTitle': instance.jobTitle,
      'companyName': instance.companyName,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
    };

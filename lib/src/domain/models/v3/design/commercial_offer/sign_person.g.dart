// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignPerson _$SignPersonFromJson(Map<String, dynamic> json) => _SignPerson(
  jobTitle: json['jobTitle'] as String,
  companyName: json['companyName'] as String,
  fullName: json['fullName'] as String,
  phoneNumber: json['phoneNumber'] as String,
  email: json['email'] as String,
);

Map<String, dynamic> _$SignPersonToJson(_SignPerson instance) =>
    <String, dynamic>{
      'jobTitle': instance.jobTitle,
      'companyName': instance.companyName,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
    };

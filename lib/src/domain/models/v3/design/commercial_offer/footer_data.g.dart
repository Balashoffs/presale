// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'footer_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FooterData _$FooterDataFromJson(Map<String, dynamic> json) => _FooterData(
  noteText: json['noteText'] as String? ?? '',
  workCompletionTime: json['workCompletionTime'] as String,
  prepayment: json['prepayment'] as String,
  signPerson: json['signPerson'] == null
      ? null
      : SignPerson.fromJson(json['signPerson'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FooterDataToJson(_FooterData instance) =>
    <String, dynamic>{
      'noteText': instance.noteText,
      'workCompletionTime': instance.workCompletionTime,
      'prepayment': instance.prepayment,
      'signPerson': instance.signPerson,
    };

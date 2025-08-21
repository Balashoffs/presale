// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'footer_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FooterDataImpl _$$FooterDataImplFromJson(Map<String, dynamic> json) =>
    _$FooterDataImpl(
      noteText: json['noteText'] as String? ?? '',
      workCompletionTime: json['workCompletionTime'] as String,
      prepayment: json['prepayment'] as String,
      signPerson: json['signPerson'] == null
          ? null
          : SignPerson.fromJson(json['signPerson'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FooterDataImplToJson(_$FooterDataImpl instance) =>
    <String, dynamic>{
      'noteText': instance.noteText,
      'workCompletionTime': instance.workCompletionTime,
      'prepayment': instance.prepayment,
      'signPerson': instance.signPerson,
    };

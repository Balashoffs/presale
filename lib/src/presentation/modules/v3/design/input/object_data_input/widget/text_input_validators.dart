import 'package:flutter/material.dart';

FormFieldValidator<String>? objectNameValidator = (value) {
  if(value == null) {
    return 'Начните вводить адрес объекта';
  } else if(!RegExp(r'^[\dа-яА-Я\-_ ]+$').hasMatch(value)) {
    return 'Допускаются только цифры и кириллица';
  }else if(value.length < 10){
    return 'Слишком короткое имя';
  }
  return null;

};

FormFieldValidator<String>? objectLocationValidator = (value) {
  if(value == null) {
    return 'Начните вводить адрес объекта';
  } else if(!RegExp(r'^[\dа-яА-Я\-_ ]+$').hasMatch(value)) {
    return 'Допускаются только цифры и кириллица';
  }else if(value.length < 10){
    return 'Слишком короткий адрес';
  }
  return null;
};


FormFieldValidator<String>? onlyInfiniteNumberValidator = (value) {
  if(value == null) {
    return 'Начните вводить адрес объекта';
  } else if (!RegExp(r'^\d+$').hasMatch(value)){
    return 'только цифры от 0 до 9';
  }return null;
};

FormFieldValidator<String>? onlyNumberValidator = (value) {
  if(value == null) {
    return 'Начните вводить адрес объекта';
  } else if (!RegExp(r'^\d+$').hasMatch(value)){
    return 'только цифры от 0 до 9';
  }else if(value.length > 3){
    return 'только в диапазоне от 1 до 999%';
  } return null;
};
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
    return 'ошибка';
  } else if (!RegExp(r'^\d+$').hasMatch(value)){
    return '0 до 9';
  }return null;
};

FormFieldValidator<String>? onlyFactorValidator = (value) {
  if(value == null) {
    return 'ошибка';
  } else if (!RegExp(r'^\d+$').hasMatch(value)){
    return '0-9';
  }else if(value.length > 3){
    return '1-999%';
  } return null;
};

FormFieldValidator<String>? onlyIntValidator = (value) {
  if(value == null) {
    return 'ошибка';
  } else if (!RegExp(r'^\d+$').hasMatch(value)){
    return '0-9';
  }else if(value.length > 3){
    return '1-999';
  } return null;
};
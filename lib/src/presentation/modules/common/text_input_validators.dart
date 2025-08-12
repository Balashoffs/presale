import 'package:flutter/material.dart';

FormFieldValidator<String>? objectNameValidator = (value) {
  if (value == null) {
    return 'Начните вводить адрес объекта';
  } else if (!RegExp(r'^[\dа-яА-Я\-_ ]+$').hasMatch(value)) {
    return 'Допускаются только цифры и кириллица';
  } else if (value.length < 10) {
    return 'Слишком короткое имя';
  }
  return null;
};

FormFieldValidator<String>? dropDownValidator = (value) {
  if(value != null){
    if (value == 'Нажмите для выбора' ) {
      return 'Необходмио сделать выбор';
    }
  }

  return null;
};

FormFieldValidator<String>? objectLocationValidator = (value) {
  if (value == null) {
    return 'Начните вводить адрес объекта';
  } else if (!RegExp(r'^[\dа-яА-Я\-_ ]+$').hasMatch(value)) {
    return 'Допускаются только цифры и кириллица';
  } else if (value.length < 10) {
    return 'Слишком короткий адрес';
  }
  return null;
};

FormFieldValidator<String>? onlyInfiniteNumberValidator = (value) {
  if (value == null) {
    return 'ошибка';
  } else if (!RegExp(r'^[1-9]|[1-9]\d+$').hasMatch(value)) {
    return 'от 1 до ...';
  }
  return null;
};

FormFieldValidator<String>? onlyFactorValidator = (value) {
  if (value == null) {
    return 'ошибка';
  } else if (!RegExp(
    r'^\d$|^\d\d$|^\d\d\.\d$|^\d\d,\d$|^\d\d\.\d\d$|^\d\d,\d\d$|^\d\.\d\d$|^\d,\d\d$|^\d\.\d$|^\d,\d$',
  ).hasMatch(value)) {
    return '99,99';
  } else if (value.length > 5) {
    return '99,99';
  }
  return null;
};

FormFieldValidator<String>? onlyIntValidator = (value) {
  if (value == null) {
    return 'ошибка';
  } else if (!RegExp(r'^\d|\d+$').hasMatch(value)) {
    return 'от 0 до ...';
  } else if (value.length > 3) {
    return '1-999';
  }
  return null;
};

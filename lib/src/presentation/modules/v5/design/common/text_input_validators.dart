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
    return 'Начните вводить';
  } else if (!RegExp(r'^\d+$').hasMatch(value)) {
    return 'только цифры';
  }
  return null;
};

FormFieldValidator<String>? onlyIntValidator = (value) {
  if (value == null) {
    return '???';
  } else if (!RegExp(r'^[1-9]$|^[1-9]\d$|^[1-9]\d\d$').hasMatch(value)) {
    return '1 до 9';
  } else if (value.length > 3) {
    return 'от 1 до 999';
  }
  return null;
};

FormFieldValidator<String>? onlyFactorValidator = (value) {
  if (value == null) {
    return 'ошибка';
  } else if (!RegExp(
    r'^[1-9]$|'
    r'^[1-9]\d$|'
    r'^[1-9]\d\.\d$|^[1-9]\d\,\d$|'
    r'^[1-9]\d\.\d\d$|^[1-9]\d\,\d\d$|'
    r'^\d.\d\d$|^\d,\d\d$|'
    r'^\d\.[1-9]$|^\d\,[1-9]$',
  ).hasMatch(value)) {
    return '99,99';
  } else if (value.length > 5) {
    return '99,99';
  }
  return null;
};

FormFieldValidator<String>? ananceValidator = (value) {
  if (value == null) {
    return 'ошибка';
  } else if (!RegExp(r'^[1-9]$|^[1-9]\d+$').hasMatch(value)) {
    return 'от 1';
  }
  return null;
};

FormFieldValidator<String>? personSignDropDownValidator = (value) {
  return value == "Выбрать" ? "Нужно сделать выбор" : null;
};

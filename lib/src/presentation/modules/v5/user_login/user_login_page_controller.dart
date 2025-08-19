/*
  final String fistName;
  final String secondName;
  final String lastName;
  final String jobTitle;
  final String companyTitle;
  final String phoneNumber;
  final String jobEmail;
 */
import 'package:flutter/cupertino.dart';

class UserLoginTextGroupController {
  final TextEditingController fistNameController = TextEditingController();
  final TextEditingController secondNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController jobTitleController = TextEditingController();
  final TextEditingController companyTitleController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController jobEmailController = TextEditingController();

  final String fistNameHintText = 'Введите имя';
  final String secondNameHintText = 'Введите очество';
  final String lastNameHintText = 'Введите фамилию';
  final String jobTitleHintText = 'Введите должность';
  final String companyTitleHintText = 'Введите юридеское имя компании';
  final String phoneNumberHintText = 'Введите рабочий номер телефона';
  final String jobEmailHintText = 'Введите рабочую электронную почту';

  FormFieldValidator<String>? fistNameValidator = (value) {
    return value?.length != null && RegExp(r'^[А-ЯЁ][а-яё]{1,29}$').hasMatch(value!)
        ? null
        : "Разрешаются только буквы русского языка";
  };

  FormFieldValidator<String>? secondNameValidator = (value) {
    return value != null && !RegExp(r'^[А-ЯЁ][а-яё]{1,19}$').hasMatch(value)
        ? "Разрешаются только буквы русского языка"
        : null;
  };
  FormFieldValidator<String>? lastNameValidator = (value) {
    return value != null && !RegExp(r'^[А-ЯЁ][а-яё]{1,29}$').hasMatch(value)
        ? "Разрешаются только буквы русского языка"
        : null;
  };
  FormFieldValidator<String>? jobTitleValidator = (value) {
    return value != null &&
            !RegExp(r'^[А-ЯЁA-Z][А-ЯЁA-Za-zа-яё\s\-\.]{1,99}$').hasMatch(value)
        ? "Разрешаются символы русского и английского языка, другие допустимые символы"
        : null;
  };
  FormFieldValidator<String>? companyTitleValidator = (value) {
    return value != null &&
            !RegExp(
              r'^[А-ЯЁA-Z][А-ЯЁA-Za-zа-яё0-9\s\.\,\"$$$$\-№&]{1,199}$',
            ).hasMatch(value)
        ? "Разрешаются символы русского и английского языка, цифры и другие допустимые символы"
        : null;
  };
  FormFieldValidator<String>? phoneNumberValidator = (value) {
    return value != null &&
            !RegExp(
              r'^(\+7|7|8)[\s\-]?\d{3}[\s\-]?\d{3}[\s\-]?\d{2}[\s\-]?\d{2}$',
            ).hasMatch(value)
        ? "Разрешаются только цифры, круглые скобочки, пробелы и тире"
        : null;
  };
  FormFieldValidator<String>? jobEmailValidator = (value) {
    return value != null &&
            !RegExp(
              r'^[a-zA-Z0-9.!#$%&*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$',
            ).hasMatch(value)
        ? "Разрешаются буквы английского языка, цифры и другие допустимые символы"
        : null;
  };
}

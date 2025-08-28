import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_person.g.dart';

part 'sign_person.freezed.dart';

@freezed
abstract class SignPerson with _$SignPerson {
  const factory SignPerson({
    required String jobTitle,
    required String companyName,
    required String fullName,
    required String phoneNumber,
    required String email,
  }) = _SignPerson;

  factory SignPerson.fromJson(Map<String, dynamic> json) =>
      _$SignPersonFromJson(json);
}
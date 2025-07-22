import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v3/design/division_result/division_result.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v3/design/input_data/object_data_design.dart';

part 'commercial offer.freezed.dart';

@freezed
class CommercialOfferResult with _$CommercialOfferResult {
  const factory CommercialOfferResult({
    required ObjectDataDesign objectData,
    required List<DivisionResult> divisionResults,
    @Default(0.0) double fullRateOfCO,
    @Default(0.0) double fullRateOfCOWithTax,
    @Default(null) FooterData? footerData,
  }) = _CommercialOfferResult;
}

@freezed
class FooterData with _$FooterData {
  const factory FooterData({
    @Default('') String noteText,
    @Default('') String workCompletionTime,
    @Default('') String prepayment,
    @Default(null) SignPerson? signPerson,
  }) = _FooterData;
}

@freezed
class SignPerson with _$SignPerson {
  const factory SignPerson({
    required String jobTitle,
    required String companyName,
    required String fullName,
    required String phoneNumber,
    required String email,
  }) = _SignPerson;
}

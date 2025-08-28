import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v3/design/commercial_offer/sign_person.dart';

part 'footer_data.freezed.dart';
part 'footer_data.g.dart';

@freezed
abstract class FooterData with _$FooterData {
  const factory FooterData({
    @Default('') String noteText,
    required String workCompletionTime,
    required String prepayment, SignPerson? signPerson,
  }) = _FooterData;

  factory FooterData.fromJson(Map<String, dynamic> json) =>
      _$FooterDataFromJson(json);
}
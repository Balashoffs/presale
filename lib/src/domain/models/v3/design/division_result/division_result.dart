import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v3/design/divison/division.dart';

part 'division_result.freezed.dart';
part 'division_result.g.dart';


@freezed
class DivisionResult with _$DivisionResult {
  const factory DivisionResult({
    // Данные о специалисте
    required final Division division,
    // Чистая стоимость за раздел
    required final double clearDivisionRate,
    // Стоимость за раздел вместе с расходами и маржой
    required final double fullDivisionRate,
    // Полная стоимость с НДС
    required final double fullDivisionRateWithTax,
  }) = _DivisionResult;

  factory DivisionResult.fromJson(Map<String, dynamic> json) =>
      _$DivisionResultFromJson(json);
}

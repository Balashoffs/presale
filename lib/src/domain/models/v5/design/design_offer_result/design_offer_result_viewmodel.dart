import 'package:presale/src/data/core/string_converter.dart';
import 'package:presale/src/domain/models/v5/common/person_sign_dto.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_row_viewmodel.dart';

class DesignOfferResultVM{
  final String divisionType;
  final String createdDesignOffer;
  final String objectName;
  final String objectLocation;
  final List<DesignOfferResultRowVM> divisionRows;
  final double overPrice;
  final double margin;
  final double summary;
  final double tax;
  String notes = '';
  int totalDays;
  int objectSquare;
  int avance = 0;
  PersonSignDTO? signPerson;

   String get overPriceS => convertToString(overPrice, 0);
   String get marginS => convertToString(margin, 0);
   String get summaryS => convertToString(summary, 0);
   String get taxS => convertToString(tax, 0);

  DesignOfferResultVM({
    required this.divisionType,
    required this.createdDesignOffer,
    required this.objectName,
    required this.objectLocation,
    required this.divisionRows,
    required this.overPrice,
    required this.margin,
    required this.summary,
    required this.tax,
    this.totalDays = 0,
    this.objectSquare = 0,
    this.signPerson,
  });
}
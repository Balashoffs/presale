import 'package:presale/src/domain/models/v5/common/person_sign_dto.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/division_summary_viewmodel.dart';

class DesignOfferResultVM{
  final String divisionType;
  final String createdDesignOffer;
  final String objectName;
  final String objectLocation;
  final List<DesignOfferResultRowVM> divisionRows;
  final List<DivisionSummaryVM> divisionClientSummaries;
  final List<DivisionSummaryVM> divisionSelfSummaries;
  String comments = '';
  int totalDays = 0;
  double avance = 0.0;
  PersonSignDTO? signPerson;

  DesignOfferResultVM({
    required this.divisionType,
    required this.createdDesignOffer,
    required this.objectName,
    required this.objectLocation,
    required this.divisionRows,
    required this.divisionSelfSummaries,
    required this.divisionClientSummaries,
    this.signPerson,
  });
}
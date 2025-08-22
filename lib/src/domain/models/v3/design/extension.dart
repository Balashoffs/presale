import 'package:presale/src/domain/models/v3/design/commercial_offer/footer_data.dart';
import 'package:presale/src/domain/models/v3/design/commercial_offer/sign_person.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/design_offer_result/design_offer_result_viewmodel.dart';

import 'commercial_offer/commercial_offer.dart';
import 'division_result/division_result.dart';
import 'input_data/input_data_design.dart';

extension DesignOfferResultExt on DesignOfferResultVM {
  CommercialOfferResult toPojo(InputDataDesign inputDataDesign) {
    return CommercialOfferResult(
      divisionResults: divisionRows.map((e) => e.toPojo()).toList(),
      inputDataDesign: inputDataDesign,
      designOfferSummaryCost: summary,
      designOfferSummaryTax: tax,
      footerData: FooterData(
        workCompletionTime: totalDays.toString(),
        prepayment: avance.toStringAsFixed(2),
        noteText: notes,
        signPerson: SignPerson(
          jobTitle: signPerson?.jobTitle ?? '',
          companyName: signPerson?.companyTitle ?? '',
          fullName: signPerson?.fullName ?? '',
          phoneNumber: signPerson?.phoneNumber ?? '',
          email: signPerson?.jobEmail ?? '',
        ),
      ),
    );
  }
}

extension DesignOfferResultRowExt on DesignOfferResultRowVM {
  DivisionResult toPojo() {
    return DivisionResult(
      id: id,
      divisionShortName: divisionShortName,
      divisionName: divisionName,
      divisionSummaryWithTax: divisionSummaryWithTax,
      divisionSummaryWithMargin: divisionSummaryWithMargin

    );
  }
}

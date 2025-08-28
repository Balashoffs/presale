part of 'design_offer_cubit.dart';

@freezed
abstract class DesignOfferState with _$DesignOfferState {
  const factory DesignOfferState.initial() = _Initial;
  const factory DesignOfferState.nextPage() = _NextPage;
  const factory DesignOfferState.showPage(DesignOfferResultVM result) = _ShowPage;
  const factory DesignOfferState.error(String errorText) = _Error;
}

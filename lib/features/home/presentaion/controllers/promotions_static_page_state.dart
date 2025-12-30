part of 'promotions_static_page_controller.dart';

@freezed
abstract class PromotionsStaticPageState with _$PromotionsStaticPageState {
  factory PromotionsStaticPageState({
    final PromotionsModel? promtions,
    @Default(false) final bool isLoading,
  }) = _PromotionsStaticPageState;
}

part of 'products_details_controller.dart';

@freezed
abstract class ProductsDetailsState with _$ProductsDetailsState {
  factory ProductsDetailsState(
      {final ItemDetailsModel? productDetails,
      final int? variationID,
      final int? priceId,
      final int? unitId}) = _ProductsDetailsState;
}

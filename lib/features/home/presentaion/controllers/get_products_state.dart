part of 'get_products_controller.dart';

@freezed
abstract class GetProductsState with _$GetProductsState {
  factory GetProductsState({
    @Default([]) final List<ProductModels> products,
  }) = _GetProductsState;
}

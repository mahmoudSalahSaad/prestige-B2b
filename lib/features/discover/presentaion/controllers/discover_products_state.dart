part of 'discover_products_controller.dart';

@freezed
class DiscoverProductsState with _$DiscoverProductsState {
  factory DiscoverProductsState({
    @Default([]) List<ProductModels>? products,
    @Default(1) int page,
    @Default(20) int? perPage,
    String? direction, // 'asc' or 'desc'
    String? search,
    int? selectedCategoryId,
    @Default(false) bool isLoading,
    @Default(true) bool hasMore,
  }) = _DiscoverProductsState;
}


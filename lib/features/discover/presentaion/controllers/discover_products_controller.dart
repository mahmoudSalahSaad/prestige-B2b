import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/features/discover/domain/use_cases/get_products_by_categories_use_case.dart';
import 'package:shop/features/home/data/models/items_model.dart';
import 'package:shop/features/product/domain/entity/product_entity.dart';

part 'discover_products_controller.freezed.dart';
part 'discover_products_controller.g.dart';
part 'discover_products_state.dart';

@riverpod
class DiscoverProductsController extends _$DiscoverProductsController {
  @override
  Future<DiscoverProductsState> build() async {
    state = AsyncData(DiscoverProductsState());
    await fetchProducts();
    return state.requireValue;
  }

  Future<void> fetchProducts({bool loadMore = false}) async {
    final currentState = state.requireValue;

    if (!loadMore) {
      state = AsyncData(currentState.copyWith(
        page: 1,
        isLoading: true,
      ));
    }

    final getProductsUseCase = getIt<GetProductsByCategoriesUseCase>();

    final productEntity = ProductEntity(
      page: loadMore ? currentState.page + 1 : 1,
      perPage: currentState.perPage,
      direction: currentState.direction,
      search: currentState.search?.isEmpty ?? true ? null : currentState.search,
      categoryId: currentState.selectedCategoryId,
    );

    final response = await getProductsUseCase.call(productEntity);

    response.fold(
      (error) => state = AsyncError(error, StackTrace.current),
      (itemsModel) {
        final newProducts = itemsModel.items ?? <ProductModels>[];
        final allProducts = loadMore
            ? <ProductModels>[
                ...(currentState.products ?? <ProductModels>[]),
                ...newProducts
              ]
            : newProducts;

        state = AsyncData(currentState.copyWith(
          products: allProducts,
          page: loadMore ? currentState.page + 1 : 1,
          isLoading: false,
          hasMore: newProducts.length >= (currentState.perPage ?? 20),
        ));
      },
    );
  }

  void setSearch(String? search) {
    final currentState = state.requireValue;
    state = AsyncData(currentState.copyWith(
      search: search,
      page: 1,
    ));
    fetchProducts();
  }

  void setDirection(String? direction) {
    final currentState = state.requireValue;
    state = AsyncData(currentState.copyWith(
      direction: direction,
      page: 1,
    ));
    fetchProducts();
  }

  void setCategoryId(int? categoryId) {
    final currentState = state.requireValue;
    state = AsyncData(currentState.copyWith(
      selectedCategoryId: categoryId,
      page: 1,
    ));
    fetchProducts();
  }

  void loadMore() {
    final currentState = state.requireValue;
    if (!currentState.isLoading && currentState.hasMore) {
      fetchProducts(loadMore: true);
    }
  }
}

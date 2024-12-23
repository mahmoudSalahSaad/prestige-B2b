import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/features/discover/domain/use_cases/get_products_by_categories_use_case.dart';
import 'package:shop/features/home/data/models/items_model.dart';
import 'package:shop/features/product/domain/entity/product_entity.dart';

part 'products_by_categories_controller.freezed.dart';
part 'products_by_categories_controller.g.dart';
part 'products_by_categories_state.dart';

@Riverpod(keepAlive: true)
class ProductsByCategoriesController extends _$ProductsByCategoriesController {
  @override
  Future<ProductsByCategoriesState> build() async {
    state = AsyncData(ProductsByCategoriesState());
    return state.requireValue;
  }

  getProducts(String categorySlug) async {
    GetProductsByCategoriesUseCase getProductsByCategoriesUseCase = getIt();
    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });
    final response = await getProductsByCategoriesUseCase
        .call(ProductEntity(productSlug: categorySlug));
    response.fold((l) => state = AsyncError(l, StackTrace.current),
        (r) => state = AsyncData(ProductsByCategoriesState(items: r)));
  }
}

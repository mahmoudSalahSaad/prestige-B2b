import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/features/product/data/models/item_details_model.dart';
import 'package:shop/features/product/domain/entity/product_entity.dart';
import 'package:shop/features/product/domain/use_cases/get_product_details_use_case.dart';

part 'products_details_controller.freezed.dart';
part 'products_details_controller.g.dart';
part 'products_details_state.dart';

@Riverpod(keepAlive: true)
class ProductsDetailsController extends _$ProductsDetailsController {
  @override
  Future<ProductsDetailsState> build(String productSlug) async {
    state = AsyncData(ProductsDetailsState());
    await getProductDetails(productSlug: productSlug);
    return state.requireValue;
  }

  getProductDetails({required String productSlug}) async {
    GetProductDetailsUseCase useCase = getIt();
    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });

    final result = await useCase.call(ProductEntity(productSlug: productSlug));

    result.fold((l) {
      print("sadsaddsadsaldmdsa=======>${l.errorMessage}");
      state = AsyncError(l, StackTrace.current);
    }, (r) {
      state = AsyncData(ProductsDetailsState(productDetails: r));
    });
  }

  onIncrement() {
    int count = state.requireValue.productDetails!.product!.quantity!.toInt();
    count++;
    state = AsyncData(ProductsDetailsState(
        productDetails: state.requireValue.productDetails!.copyWith(
            product: state.requireValue.productDetails!.product!
                .copyWith(quantity: count))));
  }

  onDecrement() {
    int count = state.requireValue.productDetails!.product!.quantity!.toInt();
    count--;

    if (count < 1) {
      count = 1;
    }
    state = AsyncData(ProductsDetailsState(
        productDetails: state.requireValue.productDetails!.copyWith(
            product: state.requireValue.productDetails!.product!
                .copyWith(quantity: count))));
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/features/product/data/models/poduct_details_model.dart';

part 'products_details_controller.freezed.dart';
part 'products_details_controller.g.dart';
part 'products_details_state.dart';

@riverpod
class ProductsDetailsController extends _$ProductsDetailsController {
  @override
  Future<ProductsDetailsState> build() async {
    state = AsyncData(ProductsDetailsState());
    return state.requireValue;
  }

  getProductDetails({required String productSlug}) async {}
}

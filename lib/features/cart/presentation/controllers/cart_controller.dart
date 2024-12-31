import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/core/utils/alerts.dart';
import 'package:shop/features/cart/data/models/cart_model.dart';
import 'package:shop/features/cart/domain/entities/cart_entity.dart';
import 'package:shop/features/cart/domain/usecases/add_to_cart_use_case.dart';
import 'package:shop/features/cart/domain/usecases/get_my_cart_use_case.dart';

part 'cart_controller.freezed.dart';
part 'cart_controller.g.dart';
part 'cart_state.dart';

@riverpod
class CartController extends _$CartController {
  @override
  Future<CartState> build() async {
    state = AsyncData(CartState());
    await getMyCart();
    return state.requireValue;
  }

  getMyCart() async {
    GetMyCartUseCase getMyCartUseCase = getIt();
    Future.delayed(Duration.zero, () async {
      state = const AsyncLoading();
    });

    final result = await getMyCartUseCase.call(const NoParameters());

    result.fold(
      (l) {
        state = AsyncError(l.errorMessage ?? "", StackTrace.current);
      },
      (r) {
        state = AsyncData(CartState(cartModel: r));
      },
    );
  }

  addToCart(CartEntity parameters) async {
    AddToCartUseCase addToCartUseCase = getIt();
    Future.delayed(Duration.zero, () async {
      state = const AsyncLoading();
    });

    final result = await addToCartUseCase.call(parameters);

    result.fold(
      (l) {
        state = AsyncError(l.errorMessage ?? "", StackTrace.current);
      },
      (r) {
        
        state = AsyncData(CartState(cartModel: r));
      },
    );
  }
}

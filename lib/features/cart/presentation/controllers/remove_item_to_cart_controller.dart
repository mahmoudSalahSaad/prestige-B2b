import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/features/cart/domain/entities/cart_entity.dart';
import 'package:shop/features/cart/domain/usecases/remove_item_tocart_use_case.dart';
import 'package:shop/features/cart/presentation/controllers/cart_controller.dart';

part 'remove_item_to_cart_controller.g.dart';

@Riverpod(keepAlive: true)
class RemoveItemToCartController extends _$RemoveItemToCartController {
  @override
  Future<void> build(int id) async {
    return;
  }

  removeItemFromCart({required CartEntity parameters}) async {
    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });
    RemoveItemToCartUseCase removeItemToCartUseCase = getIt();

    final result = await removeItemToCartUseCase.call(parameters);

    result.fold((l) {
      state = AsyncError(l, StackTrace.current);
    }, (r) {
      state = const AsyncData(null);
      ref.read(cartControllerProvider.notifier).updateCart(r);
    });
  }
}

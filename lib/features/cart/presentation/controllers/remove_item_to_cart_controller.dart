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

    // Optimistic update: immediately decrement quantity in UI
    final cartController = ref.read(cartControllerProvider.notifier);
    final currentCart = ref.read(cartControllerProvider).valueOrNull;

    if (currentCart?.cartModel?.items != null) {
      final item = currentCart!.cartModel!.items!.firstWhere(
        (item) => item.id == parameters.productID,
        orElse: () => throw Exception('Item not found'),
      );
      try {
        final newQuantity = (item.quantity ?? 0) - 1;
        if (newQuantity > 0) {
          cartController.updateQuantityOptimistically(
              parameters.productID, newQuantity);
        }
      } catch (e) {
        // Item not found, proceed with normal flow
      }
    }

    RemoveItemToCartUseCase removeItemToCartUseCase = getIt();
    final result = await removeItemToCartUseCase.call(parameters);

    result.fold((l) {
      // Revert optimistic update on error
      cartController.refreshCartSilently();
      state = AsyncError(l, StackTrace.current);
    }, (r) {
      // Silent refresh to sync with server data
      cartController.refreshCartSilently();
      state = const AsyncData(null);
    });
  }
}

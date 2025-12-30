import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/features/cart/domain/entities/cart_entity.dart';
import 'package:shop/features/cart/domain/usecases/add_item_to_cart_use_case.dart';
import 'package:shop/features/cart/presentation/controllers/cart_controller.dart';

part 'add_item_to_cart_controller.g.dart';

@Riverpod(keepAlive: true)
class AddItemToCartController extends _$AddItemToCartController {
  @override
  Future<void> build(int id) async {
    return;
  }

  addItemToCart({required CartEntity parameters}) async {
    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });

    // Optimistic update: immediately increment quantity in UI
    final cartController = ref.read(cartControllerProvider.notifier);
    final currentCart = ref.read(cartControllerProvider).valueOrNull;

    if (currentCart?.cartModel?.items != null) {
      try {
        final item = currentCart!.cartModel!.items!.firstWhere(
          (item) => item.id == parameters.productID,
        );

        // Item found, increment quantity
        cartController.updateQuantityOptimistically(
            parameters.productID, (item.quantity ?? 0) + 1);
        print(
            "Optimistically incremented item $parameters.productID to ${(item.quantity ?? 0) + 1}");
      } catch (e) {
        // Item not found in cart, which is fine for add operation
        print(
            "Item ${parameters.productID} not found in cart, will be added via API");
      }
    }

    AddItemToCartUseCase addItemToCartUseCase = getIt();
    print(
        "Calling addItemToCart API for product: ${parameters.productID}, quantity: ${parameters.quantity}");
    final result = await addItemToCartUseCase.call(parameters);

    result.fold((l) {
      print("Add to cart failed: ${l.toString()}");
      // Revert optimistic update on error
      cartController.refreshCartSilently();
      state = AsyncError(l, StackTrace.current);
    }, (r) {
      print("Add to cart successful for product: ${parameters.productID}");
      // Silent refresh to sync with server data
      cartController.refreshCartSilently();
      state = const AsyncData(null);
    });
  }
}

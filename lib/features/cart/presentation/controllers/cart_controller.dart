import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/features/cart/data/models/cart_model.dart';
import 'package:shop/features/cart/domain/entities/cart_entity.dart';
import 'package:shop/features/cart/domain/usecases/add_to_cart_use_case.dart';
import 'package:shop/features/cart/domain/usecases/get_my_cart_use_case.dart';
import 'package:shop/features/cart/domain/usecases/remove_item_tocart_use_case.dart';

part 'cart_controller.freezed.dart';
part 'cart_controller.g.dart';
part 'cart_state.dart';

@Riverpod(keepAlive: true)
class CartController extends _$CartController {
  @override
  FutureOr<CartState> build() async {
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

  // Silent refresh that doesn't show loading state
  refreshCartSilently() async {
    GetMyCartUseCase getMyCartUseCase = getIt();

    final result = await getMyCartUseCase.call(const NoParameters());

    result.fold(
      (l) {
        // Keep current state on error during silent refresh
      },
      (r) {
        state = AsyncData(CartState(cartModel: r));
      },
    );
  }

  // Optimistic update for quantity changes
  updateQuantityOptimistically(int itemId, int newQuantity) {
    final currentState = state.valueOrNull;
    if (currentState?.cartModel?.items != null) {
      final updatedItems = currentState!.cartModel!.items!.map((item) {
        if (item.id == itemId) {
          // Update quantity and recalculate item total
          final newTotal = (item.price ?? 0) * newQuantity;
          return item.copyWith(quantity: newQuantity, total: newTotal);
        }
        return item;
      }).toList();

      // Recalculate cart total
      final itemsSubtotal =
          updatedItems.fold<double>(0, (sum, item) => sum + (item.total ?? 0));
      final newCartTotal =
          itemsSubtotal + (currentState.cartModel!.shippingAmount ?? 0);

      final updatedCartModel = currentState.cartModel!.copyWith(
        items: updatedItems,
        total: newCartTotal,
      );
      state = AsyncData(CartState(cartModel: updatedCartModel));
    }
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

  deleteItemFromCart(int itemId) async {
    print("Deleting item with ID: $itemId");

    // Get current item quantity first
    final currentState = state.valueOrNull;
    if (currentState?.cartModel?.items == null) {
      print("No cart items found");
      return;
    }

    // Find the item to delete
    try {
      final itemToDelete = currentState!.cartModel!.items!.firstWhere(
        (item) => item.id == itemId,
      );

      final itemQuantity = itemToDelete.quantity ?? 0;
      print("Item quantity to remove: $itemQuantity");

      await _performDeletion(itemId, itemQuantity, currentState);
    } catch (e) {
      print("Item with ID $itemId not found in cart");
      return;
    }
  }

  Future<void> _performDeletion(
      int itemId, int itemQuantity, CartState currentState) async {
    // Optimistic update: remove item from UI immediately
    final updatedItems = currentState.cartModel!.items!
        .where((item) => item.id != itemId)
        .toList();

    // Recalculate cart total
    final itemsSubtotal =
        updatedItems.fold<double>(0, (sum, item) => sum + (item.total ?? 0));
    final newCartTotal =
        itemsSubtotal + (currentState.cartModel!.shippingAmount ?? 0);

    final updatedCartModel = currentState.cartModel!.copyWith(
      items: updatedItems,
      total: newCartTotal,
    );
    state = AsyncData(CartState(cartModel: updatedCartModel));

    // Remove item by calling removeItemToCart multiple times
    RemoveItemToCartUseCase removeItemUseCase = getIt();

    try {
      // Call remove endpoint for each quantity to completely remove the item
      for (int i = 0; i < itemQuantity; i++) {
        print("Removing item $itemId, attempt ${i + 1}/$itemQuantity");
        final result = await removeItemUseCase
            .call(CartEntity(productID: itemId, quantity: 1));

        await result.fold(
          (l) async {
            print("Delete failed on attempt ${i + 1}: ${l.errorMessage}");
            throw Exception(l.errorMessage);
          },
          (r) async {
            print("Remove attempt ${i + 1} successful");
          },
        );
      }

      print("Delete successful for item: $itemId");
      // Final refresh to sync with server data
      refreshCartSilently();
    } catch (e) {
      print("Delete process failed: $e");
      // Revert optimistic update on error
      refreshCartSilently();
      state = AsyncError("Failed to delete item: $e", StackTrace.current);
    }
  }
}

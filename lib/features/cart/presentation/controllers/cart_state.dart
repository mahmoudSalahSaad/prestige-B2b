part of 'cart_controller.dart';

@freezed
abstract class CartState with _$CartState {
  factory CartState({final CartModel? cartModel}) = _CartState;
}

part of 'checkout_controller.dart';

@freezed
abstract class CheckoutState with _$CheckoutState {
  factory CheckoutState({final OrderModel? orderModel , final DateTime? dateTime}) = _CheckoutState;
}
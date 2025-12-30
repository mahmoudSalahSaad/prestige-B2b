part of 'checkout_controller.dart';

@freezed
abstract class CheckoutState with _$CheckoutState {
  factory CheckoutState({
    final OrderModel? orderModel,
    final DateTime? dateTime,
    final PaymentMethodModel? selectedPaymentMethod,
  }) = _CheckoutState;
}

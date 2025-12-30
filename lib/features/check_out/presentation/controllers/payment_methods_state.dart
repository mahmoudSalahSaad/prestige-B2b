part of 'payment_methods_controller.dart';

@freezed
abstract class PaymentMethodsState with _$PaymentMethodsState {
  factory PaymentMethodsState({
    @Default([]) final List<PaymentMethodModel> paymentMethods,
    final PaymentMethodModel? selectedPaymentMethod,
  }) = _PaymentMethodsState;
}



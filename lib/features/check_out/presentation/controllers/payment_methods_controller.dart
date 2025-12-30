import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/features/check_out/data/models/payment_method_model.dart';

part 'payment_methods_controller.freezed.dart';
part 'payment_methods_controller.g.dart';
part 'payment_methods_state.dart';

@Riverpod(keepAlive: true)
class PaymentMethodsController extends _$PaymentMethodsController {
  @override
  Future<PaymentMethodsState> build() async {
    state = AsyncData(PaymentMethodsState());
    await getPaymentMethods();
    return state.requireValue;
  }

  getPaymentMethods() async {
    // For now, we'll provide static payment methods
    // In a real app, this would fetch from an API
    final paymentMethods = [
      PaymentMethodModel(
        id: 1,
        name: 'Credit/Debit Card',
        type: 'card',
        description: 'Pay securely with your credit or debit card',
        icon: 'assets/icons/card.svg',
        isActive: true,
      ),
      PaymentMethodModel(
        id: 2,
        name: 'Cash on Delivery',
        type: 'cod',
        description: 'Pay when you receive your order',
        icon: 'assets/icons/Cash.svg',
        isActive: true,
      ),
      PaymentMethodModel(
        id: 3,
        name: 'Credit',
        type: 'credit',
        description: 'Pay using your available credit balance',
        icon: 'assets/icons/Wallet.svg',
        isActive: true,
      ),
    ];

    state = AsyncData(PaymentMethodsState(paymentMethods: paymentMethods));
  }

  selectPaymentMethod({required PaymentMethodModel parameters}) {
    state = AsyncData(
        state.requireValue.copyWith(selectedPaymentMethod: parameters));
  }
}

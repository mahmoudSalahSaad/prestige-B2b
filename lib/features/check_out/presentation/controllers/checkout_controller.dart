import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/utils/alerts.dart';
import 'package:shop/features/auth/presentation/controller/login_controller.dart';
import 'package:shop/features/cart/presentation/controllers/cart_controller.dart';
import 'package:shop/features/check_out/data/models/order_model.dart';
import 'package:shop/features/check_out/data/models/payment_method_model.dart';
import 'package:shop/features/check_out/data/services/paytabs_service.dart';
import 'package:shop/features/check_out/domain/entities/checkout_entity.dart';
import 'package:shop/features/check_out/domain/usecases/checkout_use_case.dart';

part 'checkout_controller.freezed.dart';
part 'checkout_controller.g.dart';
part 'checkout_state.dart';

@riverpod
class CheckoutController extends _$CheckoutController {
  @override
  Future<CheckoutState> build() async {
    state = AsyncData(CheckoutState());
    return state.requireValue;
  }

  Future<void> placeOrder({
    required CheckoutEntity parameters,
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    CheckoutUseCase checkoutUseCase = getIt();
    Future.delayed(Duration.zero, () async {
      state = const AsyncLoading();
    });

    // Validate cart is not empty before proceeding
    final cartState = await ref.read(cartControllerProvider.future);
    if (cartState.cartModel?.items?.isEmpty ?? true) {
      state = AsyncData(state.requireValue);
      Alerts.showSnackBar("Your cart is empty", alertsType: AlertsType.error);
      return;
    }

    // If payment method is card, initiate PayTabs payment first
    if (parameters.paymentType == 'card') {
      try {
        // Get user data from login controller
        final loginState = ref.read(loginControllerProvider).requireValue;
        final user = loginState.userModel?.user;

        final paymentResult = await PayTabsService.startPayment(
          context: context, // ignore: use_build_context_synchronously
          cartId: DateTime.now().millisecondsSinceEpoch.toString(),
          cartDescription: 'Order Payment',
          amount: cartState.cartModel?.total ?? 0.0,
          customerEmail: user?.email ?? 'customer@example.com',
          customerName: user?.name ?? 'Customer Name',
          customerPhone: user?.phone ?? '+96200000000',
        );

        // Ensure loading state is reset after payment result is received
        // This will be handled by the UI when the future completes

        if (paymentResult.isSuccess) {
          // Payment successful, proceed with order placement
          final updatedParameters = parameters.copyWith(
            transactionId: paymentResult.transactionId,
            paymentStatus: 'paid',
          );

          final result = await checkoutUseCase.call(updatedParameters);

          result.fold(
            (l) => state = AsyncError(l.errorMessage ?? "", StackTrace.current),
            (r) {
              state = AsyncData(CheckoutState(orderModel: r));
              Alerts.showSnackBar("Order Placed Successfully",
                  alertsType: AlertsType.success);
              NavigationService.pushNamedAndRemoveUntil(Routes.entryPoint);
            },
          );
        } else {
          // Payment failed or cancelled - create order with awaiting_payment status
          final updatedParameters = parameters.copyWith(
            paymentStatus: 'awaiting_payment',
          );

          final result = await checkoutUseCase.call(updatedParameters);

          result.fold(
            (l) => state = AsyncError(l.errorMessage ?? "", StackTrace.current),
            (r) {
              state = AsyncData(CheckoutState(orderModel: r));
              Alerts.showSnackBar(
                  "Order created successfully. Payment is pending.",
                  alertsType: AlertsType.info);
              NavigationService.pushNamedAndRemoveUntil(Routes.entryPoint);
            },
          );
        }
      } catch (e) {
        // Payment error occurred - ensure loading state is reset
        // This will be handled by the UI when the future completes

        // Payment error occurred - create order with awaiting_payment status
        final updatedParameters = parameters.copyWith(
          paymentStatus: 'awaiting_payment',
        );

        final result = await checkoutUseCase.call(updatedParameters);

        result.fold(
          (l) => state = AsyncError(l.errorMessage ?? "", StackTrace.current),
          (r) {
            state = AsyncData(CheckoutState(orderModel: r));
            Alerts.showSnackBar(
                "Order created successfully. Payment can be completed later.",
                alertsType: AlertsType.info);
            NavigationService.pushNamedAndRemoveUntil(Routes.entryPoint);
          },
        );
      }
    } else {
      // For COD or other payment methods, proceed directly with order placement
      final updatedParameters = parameters.copyWith(
        paymentStatus: 'awaiting_payment',
      );

      // Loading state will be reset by the UI when the future completes

      final result = await checkoutUseCase.call(updatedParameters);

      result.fold(
        (l) => state = AsyncError(l.errorMessage ?? "", StackTrace.current),
        (r) {
          state = AsyncData(CheckoutState(orderModel: r));
          Alerts.showSnackBar("Order Placed Successfully",
              alertsType: AlertsType.success);
          NavigationService.pushNamedAndRemoveUntil(Routes.entryPoint);
        },
      );
    }
  }

  selectDate({required DateTime date}) {
    state = AsyncData(state.requireValue.copyWith(dateTime: date));
  }
}

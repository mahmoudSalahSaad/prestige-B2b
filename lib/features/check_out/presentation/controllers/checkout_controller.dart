import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/utils/alerts.dart';
import 'package:shop/features/check_out/data/models/order_model.dart';
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

  Future<void> placeOrder() async {
    CheckoutUseCase checkoutUseCase = getIt();
    Future.delayed(Duration.zero, () async {
      state = const AsyncLoading();
    });
    final result = await checkoutUseCase.call(const NoParameters());

    result.fold(
        (l) => state = AsyncError(l.errorMessage ?? "", StackTrace.current),
        (r) {
      state = AsyncData(CheckoutState(orderModel: r));
      Alerts.showSnackBar("Order Placed Successfully",
          alertsType: AlertsType.success);
      NavigationService.pushNamedAndRemoveUntil(Routes.entryPoint);
    });
  }
}

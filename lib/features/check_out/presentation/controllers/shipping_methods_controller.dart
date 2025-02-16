import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/features/check_out/data/models/shipping_method_model.dart';
import 'package:shop/features/check_out/domain/usecases/get_shipping_methods.dart';

part 'shipping_methods_controller.freezed.dart';
part 'shipping_methods_controller.g.dart';
part 'shipping_methods_state.dart';

@riverpod
class ShippingMethodsController extends _$ShippingMethodsController {
  @override
  Future<ShippingMethodsState> build() async {
    state = AsyncData(ShippingMethodsState());
    await getShippingMethods();
    return state.requireValue;
  }

  getShippingMethods() async {
    GetShippingMethodsUseCase getShippingMethodsUseCase = getIt();
    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });
    final result = await getShippingMethodsUseCase.call(const NoParameters());
    result.fold(
        (l) => state = AsyncError(l.errorMessage ?? "", StackTrace.current),
        (r) => state = AsyncData(ShippingMethodsState(shippingMethods: r)));
  }
}

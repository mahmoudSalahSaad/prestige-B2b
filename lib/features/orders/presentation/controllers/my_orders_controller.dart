import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/features/orders/data/models/my_orders_model.dart';
import 'package:shop/features/orders/domain/usecases/my_orders_use_case.dart';

part 'my_orders_controller.freezed.dart';
part 'my_orders_controller.g.dart';
part 'my_orders_state.dart';

@riverpod
class MyOrdersController extends _$MyOrdersController {
  @override
  Future<MyOrdersState> build() async {
    state = AsyncData(MyOrdersState());
    await getMyOrders();
    return state.requireValue;
  }

  getMyOrders() async {
    Future.delayed(Duration.zero, () async {
      state = const AsyncLoading();
    });
    MyOrdersUseCase myOrdersUseCase = getIt();
    final result = await myOrdersUseCase.call(const NoParameters());
    result.fold((l) {
      state = AsyncError(l.errorMessage ?? "", StackTrace.current);
    }, (r) {
      state = AsyncData(state.requireValue.copyWith(orders: r));
    });
  }
}

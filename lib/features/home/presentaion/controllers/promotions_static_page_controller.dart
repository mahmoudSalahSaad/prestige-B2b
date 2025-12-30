import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/core/utils/alerts.dart';
import 'package:shop/features/cart/domain/entities/cart_entity.dart';
import 'package:shop/features/cart/domain/usecases/add_promotion_to_cart_use_case.dart';
import 'package:shop/features/home/data/models/promotions_model.dart';
import 'package:shop/features/home/domain/use_cases/get_promotions_use_case.dart';

part 'promotions_static_page_controller.freezed.dart';
part 'promotions_static_page_controller.g.dart';
part 'promotions_static_page_state.dart';

@riverpod
class PromotionsStaticPageController extends _$PromotionsStaticPageController {
  @override
  Future<PromotionsStaticPageState> build(int id) async {
    state = AsyncData(PromotionsStaticPageState());

    await getPromotions();
    return state.requireValue;
  }

  Future<void> getPromotions() async {
    // Set loading state immediately without Future.delayed to prevent race conditions
    state = const AsyncLoading();

    final GetPromotionsStaticPageUseCase getPromotionsStaticPageUseCase =
        getIt();

    final result =
        await getPromotionsStaticPageUseCase.call(const NoParameters());

    result.fold(
      (l) => state = AsyncError(l.errorMessage.toString(), StackTrace.current),
      (r) => state = AsyncData(state.requireValue.copyWith(promtions: r)),
    );
  }

  addToCart(int qty, int id) async {
    // Update state to show loading for this specific action
    final currentState = state.requireValue;
    state = AsyncData(currentState.copyWith(isLoading: true));

    AddPromotionToCartUseCase addPromotionToCartUseCase = getIt();

    final result = await addPromotionToCartUseCase.call(
      CartEntity(
        productID: id,
        quantity: qty,
      ),
    );

    result.fold(
      (l) {
        state = AsyncData(currentState.copyWith(isLoading: false));
        Alerts.showSnackBar(l.errorMessage.toString(),
            alertsType: AlertsType.error);
      },
      (r) {
        state = AsyncData(currentState.copyWith(isLoading: false));
      },
    );
  }
}

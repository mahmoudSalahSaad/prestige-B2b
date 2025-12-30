import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/features/auth/presentation/controller/login_controller.dart';
import 'package:shop/features/product/data/models/pormotion_model.dart';
import 'package:shop/features/product/domain/entity/product_entity.dart';
import 'package:shop/features/product/domain/use_cases/get_pormotions_use_case.dart';

part 'pormotion_controller.freezed.dart';
part 'pormotion_controller.g.dart';
part 'pormotion_state.dart';

@riverpod
class PormotionController extends _$PormotionController {
  @override
  Future<PormotionState> build() async {
    state = AsyncData(PormotionState());
    await getPormotions();
    return state.requireValue;
  }

  getPormotions() async {
    GetPormotionsUseCase getPormotionsUseCase = getIt();
    Future.delayed(Duration.zero, () async {
      state = const AsyncLoading();
    });
    final result = await getPormotionsUseCase.call(ProductEntity(
        productSlug: "",
        groupId: ref
                .read(loginControllerProvider)
                .requireValue
                .userModel
                ?.user
                ?.group
                ?.id ??
            0));
    result.fold(
      (l) {
        state = AsyncError(l.errorMessage ?? "", StackTrace.current);
      },
      (r) {
        state = AsyncData(PormotionState(pormotions: r));
      },
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/features/product/data/models/pormotion_model.dart';
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
    final result = await getPormotionsUseCase.call(const NoParameters());
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

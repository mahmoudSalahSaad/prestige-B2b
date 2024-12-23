import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/features/discover/data/models/category_model.dart';
import 'package:shop/features/discover/domain/use_cases/get_full_categories_use_case.dart';
import 'package:shop/features/home/data/models/items_model.dart';

part 'discover_controller.freezed.dart';
part 'discover_controller.g.dart';
part 'discover_state.dart';

@Riverpod(keepAlive: true)
class DiscoverController extends _$DiscoverController {
  @override
  Future<DiscoverState> build() async {
    state = AsyncData(DiscoverState());
    await getFullCategories();
    return state.requireValue;
  }

  getFullCategories() async {
    GetFullCategoriesUseCase getFullCategoriesUseCase = getIt();
    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });
    final response = await getFullCategoriesUseCase.call(const NoParameters());
    response.fold((l) => state = AsyncError(l, StackTrace.current),
        (r) => state = AsyncData(DiscoverState(categories: r)));
  }
}

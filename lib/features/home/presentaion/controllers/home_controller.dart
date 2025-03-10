import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/features/home/data/models/home_model.dart';
import 'package:shop/features/home/domain/use_cases/get_home_static_page_use_case.dart';

part 'home_controller.freezed.dart';
part 'home_controller.g.dart';
part 'home_state.dart';

@Riverpod(keepAlive: true)
class HomeController extends _$HomeController {
  @override
  Future<HomeState> build() async {
    state = AsyncData(HomeState());

    await getHomeStaticPage();

    return state.requireValue;
  }

  getHomeStaticPage() async {
    final GetHomeStaticPageUseCase getHomeStaticPageUseCase = getIt();

    Future.delayed(Duration.zero, () async {
      state = const AsyncLoading();
    });

    final result = await getHomeStaticPageUseCase.call(const NoParameters());

    result.fold((l) {
      state = AsyncError(l.errorMessage.toString(), StackTrace.current);
    }, (r) {
      state = AsyncData(HomeState(homeModel: r));
    });
  }
}

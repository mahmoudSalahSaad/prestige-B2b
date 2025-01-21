import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/services/local/cache_consumer.dart';
import 'package:shop/core/services/local/storage_keys.dart';
import 'package:shop/core/utils/alerts.dart';
import 'package:shop/features/auth/data/model/user_model.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';
import 'package:shop/features/auth/doman/use_cases/login_use_case.dart';

part 'login_controller.freezed.dart';
part 'login_controller.g.dart';
part 'login_state.dart';

@Riverpod(keepAlive: true)
class LoginController extends _$LoginController {
  @override
  Future<LoginState> build() async {
    state = AsyncData(LoginState());
    return state.requireValue;
  }

  login({required AuthEntity parameters}) async {
    LoginUseCase loginUseCase = getIt();

    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });

    final result = await loginUseCase.call(parameters);
    result.fold((l) {
      Alerts.showSnackBar(l.errorMessage ?? "");
      state = AsyncError(l, StackTrace.current);
    }, (r) async {
      AppPrefs prefs = getIt();

      print("Tokkkkken======>${r.authorization?.token}");
      await prefs.save(PrefKeys.user, (r.user?.toJson() ?? "").toString());
      state = AsyncData(state.requireValue.copyWith(userModel: r));
      NavigationService.pushNamedAndRemoveUntil(Routes.entryPoint);
    });
  }

  saveUser(User userModel) async {
    AppPrefs prefs = getIt();

    state = AsyncData(state.requireValue.copyWith(
        userModel: state.requireValue.userModel?.copyWith(user: userModel)));
    await prefs.save(PrefKeys.user,
        (state.requireValue.userModel?.toJson() ?? "").toString());
  }
}

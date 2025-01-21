import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/utils/alerts.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';
import 'package:shop/features/auth/doman/use_cases/forget_password_use_case.dart';
import 'package:shop/features/auth/doman/use_cases/verify_otp_use_case.dart';

part 'forgot_password_controller.freezed.dart';
part 'forgot_password_controller.g.dart';
part 'forgot_password_state.dart';

@riverpod
class ForgotPasswordController extends _$ForgotPasswordController {
  @override
  Future<ForgotPasswordState> build() async {
    state = AsyncData(ForgotPasswordState());
    return state.requireValue;
  }

  forgotPassword(String email) async {
    ForgetPasswordUseCase useCase = getIt();
    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });
    final result = await useCase.call(AuthEntity(email: email, password: ""));

    result.fold((l) {
      state = AsyncError(l, StackTrace.current);
      Alerts.showSnackBar(
        l.errorMessage ?? "",
      );
    }, (r) {
      state = AsyncData(ForgotPasswordState(email: email));
      NavigationService.push(Routes.otpPassword);
    });
  }

  verify(String otp) async {
    VerifyOtpUseCase useCase = getIt();
    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });
    final result = await useCase.call(AuthEntity(
        email: state.requireValue.email ?? "", password: "", otp: otp));

    result.fold((l) {
      state = AsyncError(l, StackTrace.current);
      Alerts.showSnackBar(
        l.errorMessage ?? "",
      );
    }, (r) {
      state = AsyncData(state.requireValue.copyWith(token: r['token']));
      NavigationService.push(Routes.resetPassword);
    });
  }

  resetPassword(
    AuthEntity authEntity,
  ) async {
    VerifyOtpUseCase useCase = getIt();
    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });
    final result = await useCase.call(AuthEntity(
        email: "",
        password: authEntity.password,
        confirmPassword: authEntity.confirmPassword,
        token: state.requireValue.token));

    result.fold((l) {
      state = AsyncError(l, StackTrace.current);
      Alerts.showSnackBar(
        l.errorMessage ?? "",
      );
    }, (r) {
      state = AsyncData(state.requireValue.copyWith(token: r['token']));
      NavigationService.pushNamedAndRemoveUntil(Routes.login);
    });
  }
}

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/services/local/cache_consumer.dart';
import 'package:shop/core/services/local/storage_keys.dart';
import 'package:shop/core/utils/alerts.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/auth/data/model/user_model.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';
import 'package:shop/features/auth/doman/use_cases/forget_password_use_case.dart';
import 'package:shop/features/auth/doman/use_cases/reset_password_use_case.dart';
import 'package:shop/features/auth/doman/use_cases/verify_otp_use_case.dart';
import 'package:shop/features/auth/presentation/controller/login_controller.dart';

part 'forgot_password_controller.freezed.dart';
part 'forgot_password_controller.g.dart';
part 'forgot_password_state.dart';

@riverpod
class ForgotPasswordController extends _$ForgotPasswordController {
  @override
  Future<ForgotPasswordState> build() async {
    return ForgotPasswordState();
  }

  forgotPassword(String email) async {
    ForgetPasswordUseCase useCase = getIt();

    // Set loading state
    state = const AsyncLoading();

    final result = await useCase.call(AuthEntity(email: email, password: ""));

    result.fold((l) {
      state = AsyncError(l, StackTrace.current);
      Alerts.showSnackBar(
        l.errorMessage ?? "",
      );
    }, (r) {
      state = AsyncData(ForgotPasswordState(email: email));
      NavigationService.push(Routes.otpPassword, arguments: {
        'phone': email, // Using email field for phone number
        'isRegistration': false,
      });
    });
  }

  verify(String otp, phone) async {
    VerifyOtpUseCase useCase = getIt();

    // Set loading state
    state = const AsyncLoading();

    final result = await useCase.call(
        AuthEntity(email: phone ?? "", password: "", otp: otp, phone: phone));

    result.fold((l) {
      state = AsyncError(l, StackTrace.current);
      Alerts.showSnackBar(
        l.errorMessage ?? "",
      );
    }, (r) async {
      try {
        // Parse user data from response
        UserModel userModel = UserModel.fromJson(r);

        // Validate user data exists
        if (userModel.user == null) {
          state = AsyncError(
            const ErrorModel(
                errorMessage:
                    "User data not received from server. Please try again."),
            StackTrace.current,
          );
          Alerts.showSnackBar("User data not received. Please try again.");
          return;
        }

        // Extract reset_password_token from User object
        String? resetPasswordToken = userModel.user!.resetPasswordToken;

        // Validate reset_password_token exists
        if (resetPasswordToken == null || resetPasswordToken.isEmpty) {
          state = AsyncError(
            const ErrorModel(
                errorMessage:
                    "Reset password token not received. Please try again."),
            StackTrace.current,
          );
          Alerts.showSnackBar(
              "Reset password token not received. Please try again.");
          return;
        }

        // Save user data (includes reset_password_token in the User object)
        AppPrefs prefs = getIt();
        await prefs.saveSecuredData(
            PrefKeys.user, json.encode(userModel.user!.toJson()));

        // Update login controller state
        ref.read(loginControllerProvider.notifier).saveUserModel(userModel);
        await ref
            .read(loginControllerProvider.notifier)
            .saveUser(userModel.user!);

        // Update state
        state =
            AsyncData(state.requireValue.copyWith(token: resetPasswordToken));

        // Navigate to reset password screen
        NavigationService.push(Routes.resetPassword, arguments: {
          'phone': phone,
        });
      } catch (e) {
        state = AsyncError(
          const ErrorModel(
              errorMessage:
                  "Error processing OTP verification. Please try again."),
          StackTrace.current,
        );
        Alerts.showSnackBar(
            "Error processing OTP verification. Please try again.");
      }
    });
  }

  resetPassword(
    AuthEntity authEntity,
  ) async {
    // Get reset_password_token from saved user data
    AppPrefs prefs = getIt();
    String? userJson = await prefs.getSecuredData(PrefKeys.user);

    if (userJson == null || userJson.isEmpty) {
      state = AsyncError(
        const ErrorModel(
            errorMessage:
                "User data not found. Please try again from the beginning."),
        StackTrace.current,
      );
      Alerts.showSnackBar(
          "User data not found. Please try again from the beginning.");
      return;
    }

    // Parse user data to get reset_password_token
    User user = User.fromJson(json.decode(userJson));
    String? resetPasswordToken = user.resetPasswordToken;

    if (resetPasswordToken == null || resetPasswordToken.isEmpty) {
      state = AsyncError(
        const ErrorModel(
            errorMessage:
                "Reset password token not found. Please try again from the beginning."),
        StackTrace.current,
      );
      Alerts.showSnackBar(
          "Reset password token not found. Please try again from the beginning.");
      return;
    }

    ResetPasswordUseCase useCase = getIt();

    // Set loading state
    state = const AsyncLoading();

    final result = await useCase.call(AuthEntity(
        email: authEntity.email,
        phone: authEntity.phone,
        password: authEntity.password,
        confirmPassword: authEntity.confirmPassword,
        token: resetPasswordToken));

    result.fold((l) {
      state = AsyncError(l, StackTrace.current);
      Alerts.showSnackBar(
        l.errorMessage ?? "",
      );
    }, (r) async {
      state = AsyncData(state.requireValue.copyWith(token: resetPasswordToken));

      // Show success message
      Alerts.showSnackBar(
        "Password reset successfully! Welcome back!",
        alertsType: AlertsType.success,
      );

      // Navigate to home (entryPoint)
      NavigationService.pushNamedAndRemoveUntil(Routes.entryPoint);
    });
  }
}

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
import 'package:shop/features/auth/doman/use_cases/verify_otp_use_case.dart';
import 'package:shop/features/auth/presentation/controller/login_controller.dart';

part 'registration_otp_controller.freezed.dart';
part 'registration_otp_controller.g.dart';
part 'registration_otp_state.dart';

@riverpod
class RegistrationOtpController extends _$RegistrationOtpController {
  @override
  Future<RegistrationOtpState> build() async {
    return RegistrationOtpState();
  }

  verifyRegistrationOtp({required String phone, required String otp}) async {
    VerifyOtpUseCase useCase = getIt();

    // Set loading state
    state = const AsyncLoading();

    print("Phone : $phone");

    final result = await useCase.call(AuthEntity(
        email: phone,
        phone: phone, // Using email field for phone number
        password: "",
        otp: otp));

    result.fold((l) {
      state = AsyncError(l, StackTrace.current);
      Alerts.showSnackBar(
        l.errorMessage ?? "",
      );
    }, (r) async {
      // Log full response for debugging
      print("RegistrationOtpController: Full response: $r");
      print("RegistrationOtpController: Response keys: ${r.keys}");

      try {
        // Extract token from response
        // Response structure from API: {user: {...}, authorization: {type: "bearer", token: "..."}}
        // But verifyOTP returns r.data, so r should be {user: {...}, authorization: {...}}
        String? token = r['authorization']?['token']?.toString() ??
            r['authorization']?['Token']?.toString() ??
            r['data']?['authorization']?['token']?.toString() ??
            r['data']?['authorization']?['Token']?.toString() ??
            r['token']?.toString();

        print(
            "RegistrationOtpController: Extracted token: ${token != null ? '***${token.length} chars' : 'null'}");

        // Parse user data - try different possible structures
        UserModel? userModel;
        Map<String, dynamic>? userData = r['user'] ?? r['data']?['user'];

        if (userData != null) {
          try {
            // Try parsing as full UserModel structure
            userModel = UserModel.fromJson(r);
            print(
                "RegistrationOtpController: User parsed successfully: ${userModel.user?.name}");
          } catch (e) {
            print(
                "RegistrationOtpController: Error parsing user with full structure: $e");
            // Try parsing just the user part
            try {
              userModel = UserModel(
                user: User.fromJson(userData),
                authorization:
                    token != null ? AuthrizationModel(token: token) : null,
              );
              print(
                  "RegistrationOtpController: User parsed from userData: ${userModel.user?.name}");
            } catch (e2) {
              print(
                  "RegistrationOtpController: Error parsing user from userData: $e2");
            }
          }
        }

        // Validate token exists
        if (token == null || token.isEmpty) {
          print("RegistrationOtpController: ERROR - Token is null or empty!");
          state = AsyncError(
            const ErrorModel(
                errorMessage:
                    "Token not received from server. Please try again."),
            StackTrace.current,
          );
          Alerts.showSnackBar("Token not received. Please try again.");
          return;
        }

        // Validate user exists
        if (userModel == null || userModel.user == null) {
          print("RegistrationOtpController: ERROR - User data is null!");
          state = AsyncError(
            const ErrorModel(
                errorMessage:
                    "User data not received from server. Please try again."),
            StackTrace.current,
          );
          Alerts.showSnackBar("User data not received. Please try again.");
          return;
        }

        // Save token and user data - EXACTLY like login_controller does
        AppPrefs prefs = getIt();

        // Save token (same way as login_controller - using save, not saveSecuredData)
        prefs.save(PrefKeys.token, token);
        print(
            "RegistrationOtpController: Token saved: ${token.length > 20 ? '${token.substring(0, 20)}...' : token}");

        // Save user data (same way as login_controller - using saveUser method pattern)
        await prefs.saveSecuredData(
            PrefKeys.user, json.encode(userModel.user!.toJson()));
        print(
            "RegistrationOtpController: User data saved: ${userModel.user?.name}");

        // Update login controller state so the app knows user is logged in
        // This is critical - without this, EntryPoint might not recognize the user as logged in
        ref.read(loginControllerProvider.notifier).saveUserModel(userModel);
        if (userModel.user != null) {
          await ref
              .read(loginControllerProvider.notifier)
              .saveUser(userModel.user!);
        }
        print("RegistrationOtpController: Login controller state updated");

        // Update registration OTP state
        state = AsyncData(RegistrationOtpState(
          phone: phone,
          isVerified: true,
          userModel: userModel,
        ));

        // Show success message
        Alerts.showSnackBar(
          "Registration successful! Welcome!",
          alertsType: AlertsType.success,
        );

        // Navigate to home (entryPoint)
        print("RegistrationOtpController: Navigating to entryPoint");
        NavigationService.pushNamedAndRemoveUntil(Routes.entryPoint);
      } catch (e) {
        print("RegistrationOtpController: Error processing response: $e");
        state = AsyncError(
          const ErrorModel(
              errorMessage: "Error processing registration. Please try again."),
          StackTrace.current,
        );
        Alerts.showSnackBar("Error processing registration. Please try again.");
      }
    });
  }

  resendOtp({required String phone}) async {
    // You can implement resend OTP functionality here if needed
    // For now, just show a message
    Alerts.showSnackBar("OTP sent to $phone");
  }
}

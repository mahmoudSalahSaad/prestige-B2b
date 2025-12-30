import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/utils/alerts.dart';
import 'package:shop/features/auth/data/model/user_model.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';
import 'package:shop/features/auth/doman/use_cases/register_use_case.dart';

part 'register_controller.freezed.dart';
part 'register_controller.g.dart';
part 'register_state.dart';

@riverpod
class RegisterController extends _$RegisterController {
  @override
  Future<RegisterState> build() async {
    state = AsyncData(RegisterState());
    return state.requireValue;
  }

  register({required AuthEntity parameters}) async {
    RegisterUseCase registerUseCase = getIt();

    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });

    final result = await registerUseCase.call(parameters);
    result.fold((l) {
      Alerts.showSnackBar(l.errorMessage ?? "");
      state = AsyncError(l, StackTrace.current);
    }, (r) async {
      // Registration successful, navigate to OTP verification
      state = AsyncData(state.requireValue.copyWith(userModel: r));

      // Navigate to OTP screen with phone number
      print(
          "RegisterController: Navigating to OTP with phone: ${parameters.phone}");
      NavigationService.push(Routes.otpPassword, arguments: {
        'phone': parameters.phone,
        'isRegistration': true,
      });
    });
  }
}

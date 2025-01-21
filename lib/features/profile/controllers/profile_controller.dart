import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/features/auth/data/model/user_model.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';
import 'package:shop/features/auth/doman/use_cases/change_password_use_case.dart';
import 'package:shop/features/auth/doman/use_cases/remove_account_use_case.dart';
import 'package:shop/features/auth/doman/use_cases/update_profile_use_case.dart';
import 'package:shop/features/auth/presentation/controller/login_controller.dart';

part 'profile_controller.freezed.dart';
part 'profile_controller.g.dart';
part 'profile_state.dart';

@Riverpod(keepAlive: true)
class ProfileController extends _$ProfileController {
  @override
  Future<ProfileState> build() async {
    state = AsyncData(ProfileState());
    return state.requireValue;
  }

  updateUser(AuthEntity authEntity) async {
    UpdateProfileUseCase updateProfileUseCase = getIt();
    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });
    final result = await updateProfileUseCase.call(authEntity);
    result.fold(
      (error) => state = AsyncError(error, StackTrace.empty),
      (result) {
        state = AsyncData(ProfileState(userModel: result));
        ref.read(loginControllerProvider.notifier).saveUser(result);
      },
    );
  }

  changePassword(AuthEntity authEntity) async {
    ChangePasswordUseCase changePasswordUseCase = getIt();
    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });
    print(":adssdsad===> ${authEntity.toString()}");
    final result = await changePasswordUseCase.call(authEntity);
    result.fold(
      (error) => state = AsyncError(error, StackTrace.empty),
      (result) {
        state = AsyncData(ProfileState(userModel: null));
      },
    );
  }

  removeAccount(AuthEntity authEntity) async {
    RemoveAccountUseCase removeAccountUseCase = getIt();
    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });
    final result = await removeAccountUseCase.call(authEntity);
    result.fold(
      (error) => state = AsyncError(error, StackTrace.empty),
      (result) {
        state = AsyncData(ProfileState(userModel: null));
      },
    );
  }
}

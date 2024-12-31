part of 'login_controller.dart';

@freezed
abstract class LoginState with _$LoginState {
  factory LoginState({
     final UserModel? userModel,
  }) = _LoginState;
}

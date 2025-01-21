part of 'forgot_password_controller.dart';

@freezed
abstract class ForgotPasswordState with _$ForgotPasswordState {
  factory ForgotPasswordState({
     final String? token,
     final String? email,
  }) = _ForgotPasswordState;
}

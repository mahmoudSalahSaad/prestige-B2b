part of 'register_controller.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  factory RegisterState({
    final UserModel? userModel,
  }) = _RegisterState;
}

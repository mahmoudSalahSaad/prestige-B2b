part of 'registration_otp_controller.dart';

@freezed
abstract class RegistrationOtpState with _$RegistrationOtpState {
  factory RegistrationOtpState({
    final String? phone,
    final bool? isVerified,
    final UserModel? userModel,
  }) = _RegistrationOtpState;
}



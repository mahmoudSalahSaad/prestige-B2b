part of 'profile_controller.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  factory ProfileState({final User? userModel}) = _ProfileState;
}

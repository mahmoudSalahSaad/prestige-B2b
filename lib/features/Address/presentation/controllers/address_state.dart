part of 'address_controller.dart';

@freezed
abstract class AddressState with _$AddressState {
  factory AddressState({
    @Default([]) final List<AddressModel> addresses,
    final  AddressModel? defaultAddress  ,
  }) = _AddressState;
}

part of 'add_address_controller.dart';

@freezed
abstract class AddAddressState with _$AddAddressState {
  factory AddAddressState({
    final AddressModel? address,
  }) = _AddAddressState;
}

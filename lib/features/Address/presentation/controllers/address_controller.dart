import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/core/services/local/cache_consumer.dart';
import 'package:shop/features/Address/data/models/address_model.dart';
import 'package:shop/features/Address/domain/usecases/get_address_use_case.dart';

part 'address_controller.freezed.dart';
part 'address_controller.g.dart';
part 'address_state.dart';

@riverpod
class AddressController extends _$AddressController {
  @override
  /// This function is used to initialize the state of the [AddressController]
  ///
  /// It returns a [Future] that completes with the initial state of the
  /// [AddressController] which is an [AsyncData] holding an [AddressState]
  /// with no addresses. It then fetches the addresses and loads the default
  /// address.
  Future<AddressState> build() async {
    state = AsyncData(AddressState());
    await _fetchAddresses();
    await _loadDefaultAddress();
    return state.requireValue;
  }

  /// This function is used to fetch the addresses from the server
  ///
  /// It first changes the state to [AsyncLoading] and then calls the
  /// [GetAddressUseCase] to fetch the addresses. If the call is successful,
  /// it updates the state with the fetched addresses. If the call fails,
  /// it updates the state with the error.
  Future<void> _fetchAddresses() async {
    final getAddressUseCase = getIt<GetAddressUseCase>();

    // Change the state to loading
    state = const AsyncLoading();

    // Call the usecase to fetch the addresses
    final result = await getAddressUseCase.call(const NoParameters());

    // Update the state with the result
    result.fold(
      (error) => state = AsyncError(error, StackTrace.current),
      (addresses) => state = AsyncData(AddressState(addresses: addresses)),
    );
  }

  /// Adds a new address to the current list of addresses in the state.
  ///
  /// This method takes an [AddressModel] as a parameter, creates a new list
  /// of addresses by adding the provided address to the existing list,
  /// and updates the state with this new list.
  ///
  /// [address]: The address to be added to the list.
  void addItem(AddressModel address) {
    // Create a new list from the current addresses and add the new address
    final updatedAddresses = List<AddressModel>.from(state.requireValue.addresses)..add(address);

    // Update the state with the new list of addresses
    state = AsyncData(state.requireValue.copyWith(addresses: updatedAddresses));
  }

  void removeItem(AddressModel address) {
    final updatedAddresses = List<AddressModel>.from(state.requireValue.addresses)
      ..removeWhere((item) => item.id == address.id);
    state = AsyncData(state.requireValue.copyWith(addresses: updatedAddresses));
  }

  void updateItem(AddressModel address) {
    final addresses = List<AddressModel>.from(state.requireValue.addresses);
    final index = addresses.indexWhere((item) => item.id == address.id);

    if (index != -1) {
      addresses[index] = address;
      state = AsyncData(state.requireValue.copyWith(addresses: addresses));
    }
  }

  /// Selects the given [AddressModel] as the default address and saves it in the preferences.
  ///
  /// This method takes an [AddressModel] as a parameter, saves it in the preferences
  /// and updates the state with the new default address.
  ///
  /// [address]: The address to be selected as the default address.
  Future<void> selectDefaultAddress(AddressModel address) async {
    final appPrefs = getIt<AppPrefs>();
    // Save the address as a JSON string in the preferences
    await appPrefs.save("default_address", json.encode(address.toJson()));
    // Update the state with the new default address
    state = AsyncData(state.requireValue.copyWith(defaultAddress: address));
  }

  /// Loads the default address from the preferences and updates the state.
  ///
  /// This method retrieves the default address stored in the preferences as a
  /// JSON string. If a default address is found, it is decoded into an
  /// [AddressModel] and the state is updated to include this default address.
  Future<void> _loadDefaultAddress() async {
    // Retrieve the application preferences
    final appPrefs = getIt<AppPrefs>();

    // Get the default address JSON string from the preferences
    final defaultAddressJson = await appPrefs.get("default_address");

    // If a default address is found, decode it and update the state
    if (defaultAddressJson != null) {
      final defaultAddress = AddressModel.fromJson(json.decode(defaultAddressJson));
      state = AsyncData(state.requireValue.copyWith(defaultAddress: defaultAddress));
    }
  }
}

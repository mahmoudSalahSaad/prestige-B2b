import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/features/Address/data/models/address_model.dart';
import 'package:shop/features/Address/domain/entities/address_entity.dart';
import 'package:shop/features/Address/domain/usecases/add_address_use_case.dart';
import 'package:shop/features/Address/domain/usecases/update_address_use_case.dart';
import 'package:shop/features/Address/presentation/controllers/address_controller.dart';

part 'add_address_controller.freezed.dart';
part 'add_address_controller.g.dart';
part 'add_address_state.dart';

@riverpod
class AddAddressController extends _$AddAddressController {
  @override
  /// This function is used to initialize the state of the [AddAddressController]
  ///
  /// It returns a [Future] that completes with the initial state of the
  /// [AddAddressController] which is an [AsyncData] holding an [AddAddressState]
  /// with no address.
  Future<AddAddressState> build() async {
    state = AsyncData(AddAddressState());

    return state.requireValue;
  }

  /// This function is used to add an address
  ///
  /// It takes an [AddressEntity] as a parameter and uses the [AddAddressUseCase]
  /// to add the address. It then updates the state of the [AddAddressController]
  /// with the added address and adds it to the address list of the
  /// [AddressController].
  Future<void> addAddress({required AddressEntity parameters}) async {
    AddAddressUseCase addAddressUseCase = getIt();

    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });

    final result = await addAddressUseCase.call(parameters);

    result.fold((l) => state = AsyncError(l, StackTrace.current), (r) {
      state = AsyncData(AddAddressState(address: r));
      ref.read(addressControllerProvider.notifier).addItem(r);
      NavigationService.goBack();
    });
  }

  /// This function is used to update an address
  ///
  /// It takes an [AddressEntity] as a parameter and uses the [UpdateAddressUseCase]
  /// to update the address. It then updates the state of the [AddAddressController]
  /// with the updated address and updates it in the address list of the
  /// [AddressController].
  Future<void> updateAddress({required AddressEntity parameters}) async {
    UpdateAddressUseCase updateAddressUseCase = getIt();

    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });

    final result = await updateAddressUseCase.call(parameters);

    result.fold((l) => state = AsyncError(l, StackTrace.current), (r) {
      state = AsyncData(AddAddressState(address: r));
      ref.read(addressControllerProvider.notifier).updateItem(r);
      NavigationService.goBack();
    });
  }
}

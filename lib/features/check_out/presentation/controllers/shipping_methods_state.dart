part of 'shipping_methods_controller.dart';

@freezed
abstract class ShippingMethodsState with _$ShippingMethodsState {
  factory ShippingMethodsState({
    @Default([])
    final List<ShippingMethodModel>
        shippingMethods, // List<ShippingMethodModel>
    final ShippingMethodModel? selectedShippingMethod,
  }) = _ShippingMethodsState;
}

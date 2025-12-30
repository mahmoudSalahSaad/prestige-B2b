import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_entity.freezed.dart';

@freezed
class CheckoutEntity with _$CheckoutEntity {
  const factory CheckoutEntity({
    final String? shippingCarrirer,
    final String? shippingAddress,
    final String? billingAddress,
    final double? shippingAmount,
    final String? deliveryDate,
    final String? paymentMethod,
    final String? paymentType,
    final String? transactionId,
    final String? paymentStatus,
  }) = _CheckoutEntity;
}

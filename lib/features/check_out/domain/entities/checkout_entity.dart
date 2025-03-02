import 'package:equatable/equatable.dart';

class CheckoutEntity extends Equatable {
  final String? shippingCarrirer;
  final String? shippingAddress;
  final String? billingAddress;
  final double? shippingAmount;
  final String? deliveryDate;

  const CheckoutEntity({
    this.shippingCarrirer,
    this.shippingAddress,
    this.billingAddress,
    this.shippingAmount,
    this.deliveryDate,
  });
  @override
  List<Object> get props => [];
}

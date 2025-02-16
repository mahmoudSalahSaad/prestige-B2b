import 'package:equatable/equatable.dart';

class AddressEntity extends Equatable {
  final int? id;
  final String name;
  final String cityId;
  final String countryId;
  final String line;
  final bool isBillingAddress;
  final bool isShippingAddress;
  final String? line2;
  final String? state;
  final String? postalCode;
  const AddressEntity(
      {required this.name,
      required this.cityId,
      required this.countryId,
      required this.line,
      required this.isBillingAddress,
      required this.isShippingAddress,
      this.line2,
      this.state,
      this.postalCode,
      this.id});
  @override
  List<Object> get props =>
      [name, cityId, countryId, line, isBillingAddress, isShippingAddress];
}

import 'package:equatable/equatable.dart';

class AddressEntity extends Equatable {
  final int? id;
  final String name;
  final String cityId;
  final String countryId;
  final String line;
  final bool isBillingAddress;
  final bool isShippingAddress;

  const AddressEntity(
      {required this.name,
      required this.cityId,
      required this.countryId,
      required this.line,
      required this.isBillingAddress,
      required this.isShippingAddress,
      this.id});
  @override
  List<Object> get props =>
      [name, cityId, countryId, line, isBillingAddress, isShippingAddress];
}

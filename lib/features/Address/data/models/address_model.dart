import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/features/settings/data/models/city_model.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
class AddressModel with _$AddressModel {
  factory AddressModel(
      {final int? id,
      final String? name,
      final String? line1,
      final String? line2,
      final CityModel? city,
      final String? state,
      final String? postalCode,
      final CityModel? country , 
      @JsonKey(name: "is_billing_address") final bool? isBillingAddress, 
      @JsonKey(name: "is_shipping_address") final bool? isShippingAddress
      }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}

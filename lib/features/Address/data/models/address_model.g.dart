// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      line1: json['line1'] as String?,
      line2: json['line2'] as String?,
      city: json['city'] == null
          ? null
          : CityModel.fromJson(json['city'] as Map<String, dynamic>),
      state: json['state'] as String?,
      postalCode: json['postalCode'] as String?,
      country: json['country'] == null
          ? null
          : CityModel.fromJson(json['country'] as Map<String, dynamic>),
      isBillingAddress: json['is_billing_address'] as bool?,
      isShippingAddress: json['is_shipping_address'] as bool?,
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'line1': instance.line1,
      'line2': instance.line2,
      'city': instance.city,
      'state': instance.state,
      'postalCode': instance.postalCode,
      'country': instance.country,
      'is_billing_address': instance.isBillingAddress,
      'is_shipping_address': instance.isShippingAddress,
    };

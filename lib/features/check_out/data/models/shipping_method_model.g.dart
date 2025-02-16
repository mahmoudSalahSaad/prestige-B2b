// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_method_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShippingMethodModelImpl _$$ShippingMethodModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ShippingMethodModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      carrier: json['carrier'] as String?,
      description: json['description'] as String?,
      cost: (json['cost'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ShippingMethodModelImplToJson(
        _$ShippingMethodModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'carrier': instance.carrier,
      'description': instance.description,
      'cost': instance.cost,
    };

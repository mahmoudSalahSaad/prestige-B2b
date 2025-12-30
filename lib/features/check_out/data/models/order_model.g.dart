// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: (json['id'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      status: json['status'] as String?,
      billingAddress: json['billing_address'] as String?,
      shippingAmount: (json['shipping_amount'] as num?)?.toDouble(),
      paymentStatus: json['payment_status'] as String?,
      paidAt: json['paid_at'] as String?,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'status': instance.status,
      'billing_address': instance.billingAddress,
      'shipping_amount': instance.shippingAmount,
      'payment_status': instance.paymentStatus,
      'paid_at': instance.paidAt,
      'items': instance.items,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$OrderItemModelImpl _$$OrderItemModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemModelImpl(
      id: (json['order_id'] as num?)?.toInt(),
      name: json['product_name'] as String?,
      sku: json['product_sku'] as String?,
      variationName: json['variation_name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      taxAmount: (json['tax_amount'] as num?)?.toDouble(),
      quantity: (json['quantity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrderItemModelImplToJson(
        _$OrderItemModelImpl instance) =>
    <String, dynamic>{
      'order_id': instance.id,
      'product_name': instance.name,
      'product_sku': instance.sku,
      'variation_name': instance.variationName,
      'price': instance.price,
      'tax_amount': instance.taxAmount,
      'quantity': instance.quantity,
    };

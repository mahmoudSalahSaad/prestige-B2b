// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      id: (json['id'] as num?)?.toInt(),
      shippingAmount: (json['shipping_amount'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      promotionDiscount: (json['promotion_discount'] as num?)?.toDouble(),
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => CartProducts.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shipping_amount': instance.shippingAmount,
      'discount': instance.discount,
      'total': instance.total,
      'promotion_discount': instance.promotionDiscount,
      'items': instance.items,
    };

_$CartProductsImpl _$$CartProductsImplFromJson(Map<String, dynamic> json) =>
    _$CartProductsImpl(
      id: (json['id'] as num?)?.toInt(),
      product: json['product'] == null
          ? null
          : ProductModels.fromJson(json['product'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      unit: json['unit'] as String?,
      regularPrice: (json['regular_price'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      variationId: (json['variation_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CartProductsImplToJson(_$CartProductsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product': instance.product,
      'quantity': instance.quantity,
      'price': instance.price,
      'unit': instance.unit,
      'regular_price': instance.regularPrice,
      'total': instance.total,
      'variation_id': instance.variationId,
    };

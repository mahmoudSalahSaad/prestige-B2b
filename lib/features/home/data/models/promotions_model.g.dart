// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionsModelImpl _$$PromotionsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PromotionsModelImpl(
      sections: json['sections'] == null
          ? null
          : Sections.fromJson(json['sections'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PromotionsModelImplToJson(
        _$PromotionsModelImpl instance) =>
    <String, dynamic>{
      'sections': instance.sections,
    };

_$SectionsImpl _$$SectionsImplFromJson(Map<String, dynamic> json) =>
    _$SectionsImpl(
      promotions: (json['promotions'] as List<dynamic>?)
          ?.map((e) => Promotions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SectionsImplToJson(_$SectionsImpl instance) =>
    <String, dynamic>{
      'promotions': instance.promotions,
    };

_$PromotionsImpl _$$PromotionsImplFromJson(Map<String, dynamic> json) =>
    _$PromotionsImpl(
      id: (json['id'] as num?)?.toInt(),
      imageUrl: json['image_url'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      minItems: (json['min_items'] as num?)?.toInt(),
      maxAmount: (json['min_amount'] as num?)?.toInt(),
      minCategories: json['min_categories'] as String?,
      endDate: json['end_date'] as String?,
      unit: json['unit'] as String?,
      xyOffer: json['xy_offer'] == null
          ? null
          : XyOffer.fromJson(json['xy_offer'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : PriceModel.fromJson(json['price'] as Map<String, dynamic>),
      discount: (json['discount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PromotionsImplToJson(_$PromotionsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'min_items': instance.minItems,
      'min_amount': instance.maxAmount,
      'min_categories': instance.minCategories,
      'end_date': instance.endDate,
      'unit': instance.unit,
      'xy_offer': instance.xyOffer,
      'price': instance.price,
      'discount': instance.discount,
    };

_$XyOfferImpl _$$XyOfferImplFromJson(Map<String, dynamic> json) =>
    _$XyOfferImpl(
      buyQuantity: (json['buy_quantity'] as num?)?.toInt(),
      buyProduct: json['buy_product'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      getProduct: json['get_product'] as String?,
    );

Map<String, dynamic> _$$XyOfferImplToJson(_$XyOfferImpl instance) =>
    <String, dynamic>{
      'buy_quantity': instance.buyQuantity,
      'buy_product': instance.buyProduct,
      'price': instance.price,
      'get_product': instance.getProduct,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pormotion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PormotionModelImpl _$$PormotionModelImplFromJson(Map<String, dynamic> json) =>
    _$PormotionModelImpl(
      name: json['name'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      minItems: (json['min_items'] as num?)?.toDouble(),
      minAmount: (json['min_amount'] as num?)?.toDouble(),
      minCategories: (json['min_categories'] as num?)?.toDouble(),
      groupId: (json['group_id'] as num?)?.toInt(),
      xYOffer: json['xy_offer'] == null
          ? null
          : XYOffer.fromJson(json['xy_offer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PormotionModelImplToJson(
        _$PormotionModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'discount': instance.discount,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'min_items': instance.minItems,
      'min_amount': instance.minAmount,
      'min_categories': instance.minCategories,
      'group_id': instance.groupId,
      'xy_offer': instance.xYOffer,
    };

_$XYOfferImpl _$$XYOfferImplFromJson(Map<String, dynamic> json) =>
    _$XYOfferImpl(
      buyQuantity: (json['buy_quantity'] as num?)?.toInt(),
      getQuantity: (json['get_quantity'] as num?)?.toInt(),
      getProduct: json['get_product'] == null
          ? null
          : ProductModels.fromJson(json['get_product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$XYOfferImplToJson(_$XYOfferImpl instance) =>
    <String, dynamic>{
      'buy_quantity': instance.buyQuantity,
      'get_quantity': instance.getQuantity,
      'get_product': instance.getProduct,
    };

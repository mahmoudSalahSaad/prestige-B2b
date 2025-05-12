// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemsModelImpl _$$ItemsModelImplFromJson(Map<String, dynamic> json) =>
    _$ItemsModelImpl(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ProductModels.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ItemsModelImplToJson(_$ItemsModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$ProductModelsImpl _$$ProductModelsImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelsImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      shortDescription: json['shortDescription'] as String?,
      thumbnail: json['thumbnail'] as String?,
      slug: json['slug'] as String?,
      price: json['price'] == null
          ? null
          : PriceModel.fromJson(json['price'] as Map<String, dynamic>),
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$ProductModelsImplToJson(_$ProductModelsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortDescription': instance.shortDescription,
      'thumbnail': instance.thumbnail,
      'slug': instance.slug,
      'price': instance.price,
      'unit': instance.unit,
    };

_$PriceModelImpl _$$PriceModelImplFromJson(Map<String, dynamic> json) =>
    _$PriceModelImpl(
      beforeDiscount: (json['before_discount'] as num?)?.toDouble(),
      afterDiscount: (json['after_discount'] as num?)?.toDouble(),
      hasDiscount: json['has_discount'] as bool?,
    );

Map<String, dynamic> _$$PriceModelImplToJson(_$PriceModelImpl instance) =>
    <String, dynamic>{
      'before_discount': instance.beforeDiscount,
      'after_discount': instance.afterDiscount,
      'has_discount': instance.hasDiscount,
    };

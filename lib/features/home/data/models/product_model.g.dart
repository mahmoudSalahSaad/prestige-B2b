// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
    );

Map<String, dynamic> _$$ProductModelsImplToJson(_$ProductModelsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'shortDescription': instance.shortDescription,
      'thumbnail': instance.thumbnail,
      'slug': instance.slug,
      'price': instance.price,
    };

_$PriceModelImpl _$$PriceModelImplFromJson(Map<String, dynamic> json) =>
    _$PriceModelImpl(
      beforePrice: json['beforePrice'] as String?,
      afterDiscount: json['afterDiscount'] as String?,
      hasDiscount: json['hasDiscount'] as String?,
    );

Map<String, dynamic> _$$PriceModelImplToJson(_$PriceModelImpl instance) =>
    <String, dynamic>{
      'beforePrice': instance.beforePrice,
      'afterDiscount': instance.afterDiscount,
      'hasDiscount': instance.hasDiscount,
    };

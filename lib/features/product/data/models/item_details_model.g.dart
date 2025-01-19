// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemDetailsModelImpl _$$ItemDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ItemDetailsModelImpl(
      product: json['product'] == null
          ? null
          : ProductDetailsModel.fromJson(
              json['product'] as Map<String, dynamic>),
      related: (json['related'] as List<dynamic>?)
          ?.map((e) => ProductDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ItemDetailsModelImplToJson(
        _$ItemDetailsModelImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'related': instance.related,
    };

_$ProductDetailsModelImpl _$$ProductDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      shortDescription: json['shortDescription'] as String?,
      thumbnail: json['thumbnail'] as String?,
      price: json['display_price_value'] == null
          ? null
          : PriceModel.fromJson(
              json['display_price_value'] as Map<String, dynamic>),
      barcode: json['barcode'] as String?,
      sku: json['sku'] as String?,
      options: json['options'] as String?,
      unit: json['unit'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isVariable: json['is_variable'] as bool?,
      variations: (json['variations'] as List<dynamic>?)
              ?.map((e) => VariationModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      quantity: (json['item_quantity'] as num?)?.toInt() ?? 0,
      isActive: (json['is_active'] as num?)?.toInt(),
      isFeatured: (json['is_featured'] as num?)?.toInt(),
      thumbnailUrl: json['thumbnail_url'] as String?,
      taxAmount: (json['tax_amount'] as num?)?.toInt(),
      taxId: json['tax_id'] == null
          ? null
          : TaxId.fromJson(json['tax_id'] as Map<String, dynamic>),
      categoryModel: json['categoryModel'] == null
          ? null
          : CategoryModel.fromJson(
              json['categoryModel'] as Map<String, dynamic>),
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductDetailsModelImplToJson(
        _$ProductDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'thumbnail': instance.thumbnail,
      'display_price_value': instance.price,
      'barcode': instance.barcode,
      'sku': instance.sku,
      'options': instance.options,
      'unit': instance.unit,
      'images': instance.images,
      'is_variable': instance.isVariable,
      'variations': instance.variations,
      'item_quantity': instance.quantity,
      'is_active': instance.isActive,
      'is_featured': instance.isFeatured,
      'thumbnail_url': instance.thumbnailUrl,
      'tax_amount': instance.taxAmount,
      'tax_id': instance.taxId,
      'categoryModel': instance.categoryModel,
      'brand': instance.brand,
    };

_$BrandImpl _$$BrandImplFromJson(Map<String, dynamic> json) => _$BrandImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$BrandImplToJson(_$BrandImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$TaxIdImpl _$$TaxIdImplFromJson(Map<String, dynamic> json) => _$TaxIdImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      rate: json['rate'] as num?,
      isDefault: (json['is_default'] as num?)?.toInt(),
      isActive: (json['is_active'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TaxIdImplToJson(_$TaxIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rate': instance.rate,
      'is_default': instance.isDefault,
      'is_active': instance.isActive,
    };

_$VariationModelImpl _$$VariationModelImplFromJson(Map<String, dynamic> json) =>
    _$VariationModelImpl(
      id: (json['id'] as num?)?.toInt(),
      sku: json['sku'] as String?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      options: json['options'] as String?,
      discountPrice: (json['discount_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$VariationModelImplToJson(
        _$VariationModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sku': instance.sku,
      'name': instance.name,
      'price': instance.price,
      'options': instance.options,
      'discount_price': instance.discountPrice,
    };

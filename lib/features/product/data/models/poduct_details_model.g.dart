// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poduct_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PoductDetailsModelImpl _$$PoductDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PoductDetailsModelImpl(
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
      unit: json['unit'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      isVariable: json['is_variable'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      isActive: (json['is_active'] as num?)?.toInt(),
      isFeatured: (json['is_featured'] as num?)?.toInt(),
      thumbnailUrl: (json['thumbnail_url'] as num?)?.toInt(),
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

Map<String, dynamic> _$$PoductDetailsModelImplToJson(
        _$PoductDetailsModelImpl instance) =>
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
      'unit': instance.unit,
      'images': instance.images,
      'is_variable': instance.isVariable,
      'quantity': instance.quantity,
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
      isDefault: json['is_default'] as bool?,
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$$TaxIdImplToJson(_$TaxIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rate': instance.rate,
      'is_default': instance.isDefault,
      'is_active': instance.isActive,
    };

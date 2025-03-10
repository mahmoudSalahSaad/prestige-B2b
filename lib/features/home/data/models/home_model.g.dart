// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      title: json['title'] as String?,
      cover: json['cover'] as String?,
      sections: json['sections'] == null
          ? null
          : SectionsModel.fromJson(json['sections'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'cover': instance.cover,
      'sections': instance.sections,
    };

_$SectionsModelImpl _$$SectionsModelImplFromJson(Map<String, dynamic> json) =>
    _$SectionsModelImpl(
      slider: json['slider'] == null
          ? null
          : SliderModel.fromJson(json['slider'] as Map<String, dynamic>),
      deals: (json['deals'] as List<dynamic>?)
          ?.map((e) => ProductModels.fromJson(e as Map<String, dynamic>))
          .toList(),
      featuredproducts: (json['featuredproducts'] as List<dynamic>?)
          ?.map((e) => ProductModels.fromJson(e as Map<String, dynamic>))
          .toList(),
      image4col: json['image4col'] == null
          ? null
          : Image4Col.fromJson(json['image4col'] as Map<String, dynamic>),
      brands: (json['brands'] as List<dynamic>?)
          ?.map((e) => BrandsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SectionsModelImplToJson(_$SectionsModelImpl instance) =>
    <String, dynamic>{
      'slider': instance.slider,
      'deals': instance.deals,
      'featuredproducts': instance.featuredproducts,
      'image4col': instance.image4col,
      'brands': instance.brands,
    };

_$ImageModelImpl _$$ImageModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageModelImpl(
      path: json['path'] as String?,
      link: json['link'] as String?,
      linkType: json['link_type'] as String?,
      linkSlug: json['link_slug'] as String?,
    );

Map<String, dynamic> _$$ImageModelImplToJson(_$ImageModelImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'link': instance.link,
      'link_type': instance.linkType,
      'link_slug': instance.linkSlug,
    };

_$SliderModelImpl _$$SliderModelImplFromJson(Map<String, dynamic> json) =>
    _$SliderModelImpl(
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      video: (json['video'] as List<dynamic>?)
          ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SliderModelImplToJson(_$SliderModelImpl instance) =>
    <String, dynamic>{
      'images': instance.images,
      'video': instance.video,
    };

_$Image4ColImpl _$$Image4ColImplFromJson(Map<String, dynamic> json) =>
    _$Image4ColImpl(
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$Image4ColImplToJson(_$Image4ColImpl instance) =>
    <String, dynamic>{
      'images': instance.images,
    };

_$BrandsModelImpl _$$BrandsModelImplFromJson(Map<String, dynamic> json) =>
    _$BrandsModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      logo: json['logo'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$BrandsModelImplToJson(_$BrandsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'url': instance.url,
    };

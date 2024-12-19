// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sliders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SlidersModelImpl _$$SlidersModelImplFromJson(Map<String, dynamic> json) =>
    _$SlidersModelImpl(
      id: (json['id'] as num?)?.toInt(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      title: json['title'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$SlidersModelImplToJson(_$SlidersModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'images': instance.images,
      'title': instance.title,
      'slug': instance.slug,
    };

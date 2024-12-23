// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
      thumbnail: json['thumbnail'] as String?,
      coverImage: json['coverImage'] as String?,
      isPrivate: (json['isPrivate'] as num?)?.toInt(),
      isActive: (json['isActive'] as num?)?.toInt(),
      parentId: (json['parentId'] as num?)?.toInt(),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'slug': instance.slug,
      'thumbnail': instance.thumbnail,
      'coverImage': instance.coverImage,
      'isPrivate': instance.isPrivate,
      'isActive': instance.isActive,
      'parentId': instance.parentId,
      'children': instance.children,
    };

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/features/home/data/models/items_model.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeModel with _$HomeModel {
  factory HomeModel({
    final String? title,
    final String? cover,
    final SectionsModel? sections,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

@freezed
class SectionsModel with _$SectionsModel {
  factory SectionsModel({
    final SliderModel? slider,
    final List<ProductModels>? deals,
    final List<ProductModels>? featuredproducts,
    final Image4Col? image4col,
    final List<BrandsModel>? brands,
  }) = _SectionsModel;

  factory SectionsModel.fromJson(Map<String, dynamic> json) =>
      _$SectionsModelFromJson(json);
}

@freezed
class ImageModel with _$ImageModel {
  factory ImageModel({
    final String? path,
    final String? link,
    @JsonKey(name: "link_type") final String? linkType,
    @JsonKey(name: "link_slug") final String? linkSlug,
    final int? width , 

  }) = _ImageModel;

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);
}

@freezed
class SliderModel with _$SliderModel {
  factory SliderModel({
    final List<ImageModel>? images,
    final List<ImageModel>? video,
  }) = _SliderModel;

  factory SliderModel.fromJson(Map<String, dynamic> json) =>
      _$SliderModelFromJson(json);
}

@freezed
class Image4Col with _$Image4Col {
  factory Image4Col({
    final List<ImageModel>? images,
  }) = _Image4Col;

  factory Image4Col.fromJson(Map<String, dynamic> json) =>
      _$Image4ColFromJson(json);
}

@freezed
class BrandsModel with _$BrandsModel {
  factory BrandsModel({
    final int? id,
    final String? name,
    final String? logo,
    final String? url,
  }) = _BrandsModel;

  factory BrandsModel.fromJson(Map<String, dynamic> json) =>
      _$BrandsModelFromJson(json);
}

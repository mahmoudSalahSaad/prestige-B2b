import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/features/discover/data/models/category_model.dart';
import 'package:shop/features/home/data/models/items_model.dart';
import 'package:shop/features/product/data/models/pormotion_model.dart';

part 'item_details_model.freezed.dart';
part 'item_details_model.g.dart';

@freezed
class ItemDetailsModel with _$ItemDetailsModel {
  factory ItemDetailsModel(
      {final ProductDetailsModel? product,
      final List<ProductModels>? related,
      final List<PormotionModel>? promotions}) = _ItemDetailsModel;

  factory ItemDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailsModelFromJson(json);
}

@freezed
class ProductDetailsModel with _$ProductDetailsModel {
  factory ProductDetailsModel({
    final int? id,
    final String? name,
    final String? slug,
    final String? description,
    final String? shortDescription,
    final String? thumbnail,
    @JsonKey(name: "display_price_value") final PriceModel? price,
    final String? barcode,
    final String? sku,
    final String? unit,
    final List<String>? images,
    @JsonKey(name: "is_variable") final bool? isVariable,
    @Default([]) final List<VariationModel> variations,
    @Default(1) @JsonKey(name: "item_quantity") final int? quantity,
    @JsonKey(name: "is_active") final int? isActive,
    @JsonKey(name: "is_featured") final int? isFeatured,
    @JsonKey(name: "thumbnail_url") final String? thumbnailUrl,
    @JsonKey(name: "tax_amount") final int? taxAmount,
    @JsonKey(name: "tax_id") final TaxId? taxId,
    final CategoryModel? categoryModel,
    //final Brand? brand,
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);
}

@freezed
class Brand with _$Brand {
  factory Brand({
    final int? id,
    final String? name,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class TaxId with _$TaxId {
  factory TaxId({
    final int? id,
    final String? name,
    final num? rate,
    @JsonKey(name: "is_default") final int? isDefault,
    @JsonKey(name: "is_active") final int? isActive,
  }) = _TaxId;

  factory TaxId.fromJson(Map<String, dynamic> json) => _$TaxIdFromJson(json);
}

@freezed
class VariationModel with _$VariationModel {
  factory VariationModel({
    final int? id,
    final String? sku,
    final String? name,
    final double? price,
    final String? options,
    @JsonKey(name: "discount_price") final double? discountPrice,
    @JsonKey(name: "product_price_id") final int? productPriceId,
    @JsonKey(name: "unit_id") final int? unitId,
  }) = _VariationModel;

  factory VariationModel.fromJson(Map<String, dynamic> json) =>
      _$VariationModelFromJson(json);
}

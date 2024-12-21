import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/features/home/data/models/category_model.dart';
import 'package:shop/features/home/data/models/items_model.dart';

part 'poduct_details_model.freezed.dart';
part 'poduct_details_model.g.dart';

@freezed
class PoductDetailsModel with _$PoductDetailsModel {
  factory PoductDetailsModel({
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
    @JsonKey(name: "is_variable") final String? isVariable,
    final int? quantity,
    @JsonKey(name: "is_active") final int? isActive,
    @JsonKey(name: "is_featured") final int? isFeatured,
    @JsonKey(name: "thumbnail_url") final int? thumbnailUrl,
    @JsonKey(name: "tax_amount") final int? taxAmount,
    @JsonKey(name: "tax_id") final TaxId? taxId,
    final CategoryModel? categoryModel,
    final Brand? brand,
  }) = _PoductDetailsModel;

  factory PoductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PoductDetailsModelFromJson(json);
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
    @JsonKey(name: "is_default") final bool? isDefault,
    @JsonKey(name: "is_active") final bool? isActive,
  }) = _TaxId;

  factory TaxId.fromJson(Map<String, dynamic> json) => _$TaxIdFromJson(json);
}

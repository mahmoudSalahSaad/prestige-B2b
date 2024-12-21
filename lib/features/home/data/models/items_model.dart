import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_model.freezed.dart';
part 'items_model.g.dart';

@freezed
class ItemsModel with _$ItemsModel {
  factory ItemsModel({final List<ProductModels>? items}) = _ItemsModel;

  factory ItemsModel.fromJson(Map<String, dynamic> json) =>
      _$ItemsModelFromJson(json);
}

@freezed
class ProductModels with _$ProductModels {
  factory ProductModels({
    final int? id,
    final String? name,
    @JsonValue('short_description') final String? shortDescription,
    final String? thumbnail,
    final String? slug,
    final PriceModel? price,
  }) = _ProductModels;

  factory ProductModels.fromJson(Map<String, dynamic> json) =>
      _$ProductModelsFromJson(json);
}

@freezed
class PriceModel with _$PriceModel {
  factory PriceModel(
      {@JsonKey(name: "before_price") final String? beforePrice,
      @JsonKey(name: "after_discount") final String? afterDiscount,
      @JsonKey(name: "has_discount") final bool? hasDiscount}) = _PriceModel;

  factory PriceModel.fromJson(Map<String, dynamic> json) =>
      _$PriceModelFromJson(json);
}

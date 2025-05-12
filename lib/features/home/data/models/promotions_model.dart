import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/features/home/data/models/items_model.dart';

part 'promotions_model.freezed.dart';
part 'promotions_model.g.dart';

@freezed
class PromotionsModel with _$PromotionsModel {
  factory PromotionsModel({final Sections? sections}) = _PromotionsModel;

  factory PromotionsModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionsModelFromJson(json);
}

@freezed
class Sections with _$Sections {
  factory Sections({final List<Promotions>? promotions , final List<ProductModels>? deals,}) = _Sections;

  factory Sections.fromJson(Map<String, dynamic> json) =>
      _$SectionsFromJson(json);
}

@freezed
class Promotions with _$Promotions {
  factory Promotions({
    final int? id,
    @JsonKey(name: "image_url") final String? imageUrl,
    final String? name,
    final String? description,
    final String? type,
    @JsonKey(name: "min_items") final int? minItems,
    @JsonKey(name: "min_amount") final int? maxAmount,
    @JsonKey(name: "min_categories") final String? minCategories,
    @JsonKey(name: "end_date") final String? endDate,
    final String? unit,
    @JsonKey(name: "xy_offer") final XyOffer? xyOffer,

    final PriceModel? price,
    final int? discount
  }) = _Promotions;

  factory Promotions.fromJson(Map<String, dynamic> json) =>
      _$PromotionsFromJson(json);
}

@freezed
class XyOffer with _$XyOffer {
  factory XyOffer({
    @JsonKey(name: "buy_quantity") final int? buyQuantity,
    @JsonKey(name: "buy_product") final String? buyProduct,
    final double? price,
    @JsonKey(name: "get_product") final String? getProduct,
  }) = _XyOffer;

  factory XyOffer.fromJson(Map<String, dynamic> json) =>
      _$XyOfferFromJson(json);
}

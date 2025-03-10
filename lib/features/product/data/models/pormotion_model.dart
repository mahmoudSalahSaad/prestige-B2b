import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/features/home/data/models/items_model.dart';

part 'pormotion_model.freezed.dart';
part 'pormotion_model.g.dart';

@freezed
class PormotionModel with _$PormotionModel {
  factory PormotionModel(
      {final String? name,
      final String? description,
      final String? type,
      final double? discount,
      @JsonKey(name: "start_date") final String? startDate,
      @JsonKey(name: "end_date") final String? endDate,
      @JsonKey(name: "min_items") final double? minItems,
      @JsonKey(name: "min_amount") final double? minAmount,
      @JsonKey(name: "min_categories") final double? minCategories,
      @JsonKey(name: "group_id") final int? groupId,
      @JsonKey(name: "xy_offer") final XYOffer? xYOffer}) = _PormotionModel;

  factory PormotionModel.fromJson(Map<String, dynamic> json) =>
      _$PormotionModelFromJson(json);
}

@freezed
class XYOffer with _$XYOffer {
  factory XYOffer(
          {@JsonKey(name: "buy_quantity") final int? buyQuantity,
          @JsonKey(name: "get_quantity") final int? getQuantity,
          @JsonKey(name: "get_product") final ProductModels? getProduct}) =
      _XYOffer;

  factory XYOffer.fromJson(Map<String, dynamic> json) =>
      _$XYOfferFromJson(json);
}

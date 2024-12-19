import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModels with _$ProductModels {

  factory ProductModels({
    final int? id, 
    final String? name,
   @JsonValue( 'short_description')  final String? shortDescription,
    final String? thumbnail,
    final String? slug,
    final PriceModel? price,
  }) = _ProductModels;

  factory ProductModels.fromJson(Map<String, dynamic> json) => _$ProductModelsFromJson(json);
}

@freezed
class PriceModel with _$PriceModel {

  factory PriceModel({
    @JsonValue("before_price") final String? beforePrice,
    @JsonValue("after_discount") final String? afterDiscount ,
    @JsonValue("has_discount") final String? hasDiscount
  }) = _PriceModel;

  factory PriceModel.fromJson(Map<String, dynamic> json) => _$PriceModelFromJson(json);
}
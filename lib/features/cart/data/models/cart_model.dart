import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/features/home/data/models/items_model.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  factory CartModel({
    final int? id,
    @JsonKey(name: "shipping_amount") final double? shippingAmount,
    final double? discount,
    final double? total,
    @JsonKey(name: "promotion_discount") final double? promotionDiscount,
    @Default([]) final List<CartProducts>? items,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

@freezed
class CartProducts with _$CartProducts {
  factory CartProducts(
      {final int? id,
       final ProductModels? product,
      final int? quantity,
      final double? price,
      final double? total,
      @JsonKey(name: "variation_id") final int? variationId}) = _CartProducts;

  factory CartProducts.fromJson(Map<String, dynamic> json) =>
      _$CartProductsFromJson(json);
}

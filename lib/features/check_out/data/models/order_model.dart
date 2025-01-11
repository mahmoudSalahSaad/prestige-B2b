import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  factory OrderModel(
      {final int? id,
      final User? user,
      final String? status,
      @JsonKey(name: "billing_address") final String? billingAddress,
      @JsonKey(name: "shipping_amount") final double? shippingAmount,
      @Default([]) final List<OrderItemModel>? items}) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}

@freezed
class User with _$User {
  factory User({
    final int? id,
    final String? name,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class OrderItemModel with _$OrderItemModel {
  factory OrderItemModel({
    @JsonKey(name: "order_id") final int? id,
    @JsonKey(name: "product_name") final String? name,
    @JsonKey(name: "product_sku") final String? sku,
    @JsonKey(name: "variation_name") final String? variationName,
    final double? price,
    @JsonKey(name: "tax_amount") final double? taxAmount,
    final int? quantity,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);
}

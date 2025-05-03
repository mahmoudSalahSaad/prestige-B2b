import 'package:equatable/equatable.dart';

class CartEntity extends Equatable {
  final int productID;
  final int? variationID;
  final int? priceID;
  final int? unitID;
  final int quantity;

  const CartEntity(
      {required this.quantity, required this.productID, this.variationID, this.priceID, this.unitID, });
  @override
  List<Object> get props => [quantity, productID];
}

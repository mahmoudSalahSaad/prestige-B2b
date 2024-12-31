import 'package:equatable/equatable.dart';

class CartEntity extends Equatable {
  final int productID;
  final int? variationID;
  final int quantity;

  const CartEntity(
      {required this.quantity, required this.productID, this.variationID});
  @override
  List<Object> get props => [quantity, productID];
}

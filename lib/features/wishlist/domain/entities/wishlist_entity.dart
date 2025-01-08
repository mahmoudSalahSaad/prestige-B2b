import 'package:equatable/equatable.dart';
import 'package:shop/features/home/data/models/items_model.dart';

class WishlistEntity extends Equatable {
  final ProductModels productModel;

  const WishlistEntity({required this.productModel});
  @override
  List<Object> get props => [productModel];
}

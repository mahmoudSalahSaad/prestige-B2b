import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/cart/data/models/cart_model.dart';
import 'package:shop/features/cart/domain/entities/cart_entity.dart';
import 'package:shop/features/cart/domain/repo/cart_repository.dart';

import '../../../../core/base/base_usecase.dart';

class RemoveItemToCartUseCase extends BaseUseCase<CartModel, CartEntity> {
  final CartRepository cartRepository;

  RemoveItemToCartUseCase({required this.cartRepository});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  *
  * */

  @override
  Future<Either<ErrorModel, CartModel>> call(CartEntity parameters) async {
    return await cartRepository.removeItemToCart(parameters);
  }

  @override
  Future<Either<ErrorModel, CartModel>> callTest(CartEntity parameters) async {
    return await cartRepository.removeItemToCart(parameters);
  }
}

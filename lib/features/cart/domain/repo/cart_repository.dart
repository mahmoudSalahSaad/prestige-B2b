import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/cart/data/models/cart_model.dart';
import 'package:shop/features/cart/domain/entities/cart_entity.dart';

abstract class CartRepository {
  Future<Either<ErrorModel, CartModel>> addToCart(
      {required CartEntity parameters});

  Future<Either<ErrorModel, CartModel>> getMyCartData(
      {required NoParameters parameters});

  Future<Either<ErrorModel, CartModel>> addItemToCart(CartEntity parameters);
  Future<Either<ErrorModel, CartModel>> removeItemToCart(CartEntity parameters);
}

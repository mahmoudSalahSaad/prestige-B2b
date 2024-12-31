import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_response.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/core/services/network/end_points.dart';
import 'package:shop/core/services/network/network_client.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/cart/data/models/cart_model.dart';
import 'package:shop/features/cart/domain/entities/cart_entity.dart';
import 'package:shop/features/cart/domain/repo/cart_repository.dart';

class CartRepositoryImplementation extends CartRepository {
  final NetworkClient networkClient;

  CartRepositoryImplementation({required this.networkClient});
  @override
  Future<Either<ErrorModel, CartModel>> addToCart(
      {required CartEntity parameters}) async {
    NetworkCallType networkCallType = NetworkCallType.post;

    final Either<ErrorModel, BaseResponse> response =
        await networkClient.call(data: {
      'product_id': parameters.productID,
      'quantity': parameters.quantity,
    }, url: EndPoints.addToCart, type: networkCallType);

    return response.fold((l) {
      return Left(l);
    }, (r) {
      return Right(CartModel.fromJson(r.data));
    });
  }

  @override
  Future<Either<ErrorModel, CartModel>> getMyCartData(
      {required NoParameters parameters}) async {
    NetworkCallType networkCallType = NetworkCallType.post;

    final Either<ErrorModel, BaseResponse> response = await networkClient
        .call(data: {}, url: EndPoints.myCart, type: networkCallType);

    return response.fold((l) {
      return Left(l);
    }, (r) {
      return Right(CartModel.fromJson(r.data));
    });
  }
}
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

  /// Helper method to safely parse cart data from API response
  CartModel _parseCartData(dynamic data) {
    // Handle case where API returns empty list [] instead of empty cart object
    if (data is List && data.isEmpty) {
      return CartModel(
        id: null,
        shippingAmount: 0,
        discount: 0,
        total: 0,
        promotionDiscount: 0,
        items: [],
      );
    }

    // Handle normal case where API returns cart object
    if (data is Map<String, dynamic>) {
      return CartModel.fromJson(data);
    }

    // Fallback: return empty cart for any other unexpected data type
    return CartModel(
      id: null,
      shippingAmount: 0,
      discount: 0,
      total: 0,
      promotionDiscount: 0,
      items: [],
    );
  }

  @override
  Future<Either<ErrorModel, CartModel>> addToCart(
      {required CartEntity parameters}) async {
    NetworkCallType networkCallType = NetworkCallType.post;

    final Either<ErrorModel, BaseResponse> response =
        await networkClient.call(data: {
      'product_id': parameters.productID,
      'quantity': parameters.quantity,
      "variant_id": parameters.variationID,
      "product_price_id": parameters.priceID,
      "unit_id": parameters.unitID,
    }, url: EndPoints.addToCart, type: networkCallType);

    return response.fold((l) {
      return Left(l);
    }, (r) {
      return Right(_parseCartData(r.data));
    });
  }

  @override
  Future<Either<ErrorModel, CartModel>> getMyCartData(
      {required NoParameters parameters}) async {
    NetworkCallType networkCallType = NetworkCallType.post;

    final Either<ErrorModel, BaseResponse> response = await networkClient
        .call(data: {}, url: EndPoints.myCart, type: networkCallType);

    return response.fold((l) {
      // Authentication errors are now handled centrally in NetworkClient
      return Left(l);
    }, (r) {
      // Handle case where API returns empty list [] instead of empty cart object
      if (r.data is List && (r.data as List).isEmpty) {
        // Return empty cart model when API returns empty array
        return Right(CartModel(
          id: null,
          shippingAmount: 0,
          discount: 0,
          total: 0,
          promotionDiscount: 0,
          items: [],
        ));
      }

      // Handle normal case where API returns cart object
      if (r.data is Map<String, dynamic>) {
        return Right(CartModel.fromJson(r.data));
      }

      // Fallback: return empty cart for any other unexpected data type
      return Right(CartModel(
        id: null,
        shippingAmount: 0,
        discount: 0,
        total: 0,
        promotionDiscount: 0,
        items: [],
      ));
    });
  }

  @override
  Future<Either<ErrorModel, CartModel>> addItemToCart(
      CartEntity parameters) async {
    NetworkCallType networkCallType = NetworkCallType.post;

    final Either<ErrorModel, BaseResponse> response = await networkClient.call(
        data: {
          'product_id': parameters.productID,
        },
        url: EndPoints.addItemToCart(parameters.productID.toString()),
        type: networkCallType);

    return response.fold((l) {
      return Left(l);
    }, (r) {
      return Right(_parseCartData(r.data));
    });
  }

  @override
  Future<Either<ErrorModel, CartModel>> removeItemToCart(
      CartEntity parameters) async {
    NetworkCallType networkCallType = NetworkCallType.post;

    final Either<ErrorModel, BaseResponse> response = await networkClient.call(
        data: {},
        url: EndPoints.removeItemToCart(parameters.productID.toString()),
        type: networkCallType);

    return response.fold((l) {
      return Left(l);
    }, (r) {
      return Right(_parseCartData(r.data));
    });
  }

  @override
  Future<Either<ErrorModel, CartModel>> addPromotionToCart(
      {required CartEntity parameters}) async {
    NetworkCallType networkCallType = NetworkCallType.post;

    final Either<ErrorModel, BaseResponse> response =
        await networkClient.call(data: {
      'promotion_id': parameters.productID,
      'quantity': parameters.quantity,
    }, url: EndPoints.addPromotionToCart, type: networkCallType);

    return response.fold((l) {
      return Left(l);
    }, (r) {
      return Right(_parseCartData(r.data));
    });
  }
}

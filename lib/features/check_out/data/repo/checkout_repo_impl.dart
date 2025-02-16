import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/base/base_response.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/core/services/network/end_points.dart';
import 'package:shop/core/services/network/network_client.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/Address/presentation/controllers/address_controller.dart';
import 'package:shop/features/check_out/data/models/order_model.dart';
import 'package:shop/features/check_out/data/models/shipping_method_model.dart';
import 'package:shop/features/check_out/domain/repo/checkout_repo.dart';
import 'package:shop/features/check_out/presentation/controllers/shipping_methods_controller.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  final NetworkClient networkClient;

  CheckoutRepoImpl({required this.networkClient});
  @override
  Future<Either<ErrorModel, OrderModel>> placeOrder(
      {required NoParameters parameters}) async {
    final ref = ProviderContainer();
    NetworkCallType type = NetworkCallType.post;

    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {
        "billing_address": ref
            .read(addressControllerProvider)
            .requireValue
            .defaultAddress
            ?.line1,
        "shipping_address": ref
            .read(addressControllerProvider)
            .requireValue
            .defaultAddress
            ?.line1,
        "shipping_method":
            "${ref.read(shippingMethodsControllerProvider).requireValue.selectedShippingMethod?.name}-${ref.read(shippingMethodsControllerProvider).requireValue.selectedShippingMethod?.carrier}"
      },
      url: EndPoints.checkout,
      type: type,
    );
    return result.fold((l) => Left(l), (r) {
      OrderModel userModel = OrderModel.fromJson(r.data);
      return Right(userModel);
    });
  }

  @override
  Future<Either<ErrorModel, List<ShippingMethodModel>>> getShippingMethods(
      {required NoParameters parameters}) async {
    NetworkCallType type = NetworkCallType.get;

    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {},
      url: EndPoints.shippingMethods,
      type: type,
    );
    return result.fold((l) => Left(l), (r) {
      List<ShippingMethodModel> shippingMethods = [];
      try {
        shippingMethods = List<ShippingMethodModel>.from(
            r.data.map((x) => ShippingMethodModel.fromJson(x)));
        return Right(shippingMethods);
      } catch (e) {
        return Left(ErrorModel(errorMessage: e.toString()));
      }
    });
  }
}

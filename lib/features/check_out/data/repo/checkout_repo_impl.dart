import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_response.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/core/services/network/end_points.dart';
import 'package:shop/core/services/network/network_client.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/check_out/data/models/order_model.dart';
import 'package:shop/features/check_out/domain/repo/checkout_repo.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  final NetworkClient networkClient;

  CheckoutRepoImpl({required this.networkClient});
  @override
  Future<Either<ErrorModel, OrderModel>> placeOrder(
      {required NoParameters parameters}) async {
    NetworkCallType type = NetworkCallType.post;

    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {},
      url: EndPoints.checkout,
      type: type,
    );
    return result.fold((l) => Left(l), (r) {
      OrderModel userModel = OrderModel.fromJson(r.data);
      return Right(userModel);
    });
  }
}

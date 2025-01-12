import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_response.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/core/services/network/end_points.dart';
import 'package:shop/core/services/network/network_client.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/orders/data/models/my_orders_model.dart';
import 'package:shop/features/orders/domain/repo/my_orders_repo.dart';

class MyOrdersRepoImpl extends MyOrdersRepo {
  final NetworkClient networkClient;

  MyOrdersRepoImpl({required this.networkClient});
  @override
  Future<Either<ErrorModel, MyOrdersModel>> getMyOrders(
      {required NoParameters parameters}) async {
    NetworkCallType type = NetworkCallType.post;

    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {},
      url: EndPoints.myOrders,
      type: type,
    );
    return result.fold((l) => Left(l), (r) {
      MyOrdersModel userModel = MyOrdersModel.fromJson(r.data);
      return Right(userModel);
    });
  }
}

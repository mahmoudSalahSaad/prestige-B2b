import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/orders/data/models/my_orders_model.dart';
import 'package:shop/features/orders/domain/repo/my_orders_repo.dart';

import '../../../../core/base/base_usecase.dart';

class MyOrdersUseCase extends BaseUseCase<MyOrdersModel, NoParameters> {
  final MyOrdersRepo myOrdersRepo;

  MyOrdersUseCase({required this.myOrdersRepo});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  *
  * */

  @override
  Future<Either<ErrorModel, MyOrdersModel>> call(
      NoParameters parameters) async {
    return await myOrdersRepo.getMyOrders(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, MyOrdersModel>> callTest(
      NoParameters parameters) async {
    return await myOrdersRepo.getMyOrders(parameters: parameters);
  }
}

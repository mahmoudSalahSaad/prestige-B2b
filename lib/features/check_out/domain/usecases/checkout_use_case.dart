import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/check_out/data/models/order_model.dart';
import 'package:shop/features/check_out/domain/repo/checkout_repo.dart';

import '../../../../core/base/base_usecase.dart';

class CheckoutUseCase extends BaseUseCase<OrderModel, NoParameters> {
  final CheckoutRepo checkoutRepo;

  CheckoutUseCase({required this.checkoutRepo});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  *
  * */

  @override
  Future<Either<ErrorModel, OrderModel>> call(NoParameters parameters) async {
    return await checkoutRepo.placeOrder(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, OrderModel>> callTest(
      NoParameters parameters) async {
    return await checkoutRepo.placeOrder(parameters: parameters);
  }
}

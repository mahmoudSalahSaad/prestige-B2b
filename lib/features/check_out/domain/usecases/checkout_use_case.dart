import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/check_out/data/models/order_model.dart';
import 'package:shop/features/check_out/domain/entities/checkout_entity.dart';
import 'package:shop/features/check_out/domain/repo/checkout_repo.dart';

import '../../../../core/base/base_usecase.dart';

class CheckoutUseCase extends BaseUseCase<OrderModel, CheckoutEntity> {
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
  Future<Either<ErrorModel, OrderModel>> call(CheckoutEntity parameters) async {
    return await checkoutRepo.placeOrder(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, OrderModel>> callTest(
      CheckoutEntity parameters) async {
    return await checkoutRepo.placeOrder(parameters: parameters);
  }
}

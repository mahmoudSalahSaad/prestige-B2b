import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/cart/data/models/cart_model.dart';
import 'package:shop/features/cart/domain/repo/cart_repository.dart';

import '../../../../core/base/base_usecase.dart';

class GetMyCartUseCase extends BaseUseCase<CartModel, NoParameters> {
  final CartRepository cartRepository;

  GetMyCartUseCase({required this.cartRepository});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  *
  * */

  @override
  Future<Either<ErrorModel, CartModel>> call(NoParameters parameters) async {
    return await cartRepository.getMyCartData(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, CartModel>> callTest(
      NoParameters parameters) async {
    return await cartRepository.getMyCartData(parameters: parameters);
  }
}

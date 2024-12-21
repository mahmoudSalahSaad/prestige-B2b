import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/product/data/models/poduct_details_model.dart';
import 'package:shop/features/product/domain/entity/product_entity.dart';
import 'package:shop/features/product/domain/repository/repository.dart';

import '../../../../core/base/base_usecase.dart';

class GetProductDetailsUseCase
    extends BaseUseCase<PoductDetailsModel, ProductEntity> {
  final ProductRepository productRepository;

  GetProductDetailsUseCase({required this.productRepository});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  *
  * */

  @override
  Future<Either<ErrorModel, PoductDetailsModel>> call(
      ProductEntity parameters) async {
    return await productRepository.getProductDetails(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, PoductDetailsModel>> callTest(
      ProductEntity parameters) async {
    return await productRepository.getProductDetails(parameters: parameters);
  }
}

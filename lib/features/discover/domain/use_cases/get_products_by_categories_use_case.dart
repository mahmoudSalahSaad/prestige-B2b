import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/discover/domain/repository/repository.dart';
import 'package:shop/features/home/data/models/items_model.dart';
import 'package:shop/features/product/domain/entity/product_entity.dart';

import '../../../../core/base/base_usecase.dart';

class GetProductsByCategoriesUseCase
    extends BaseUseCase<ItemsModel, ProductEntity> {
  final DiscoverRepository discoverRepository;

  GetProductsByCategoriesUseCase({required this.discoverRepository});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  *
  * */

  @override
  Future<Either<ErrorModel, ItemsModel>> call(ProductEntity parameters) async {
    return await discoverRepository.getProductsByCategory(
        parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, ItemsModel>> callTest(
      ProductEntity parameters) async {
    return await discoverRepository.getProductsByCategory(
        parameters: parameters);
  }
}

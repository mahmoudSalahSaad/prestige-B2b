import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/discover/data/models/category_model.dart';
import 'package:shop/features/discover/domain/repository/repository.dart';

import '../../../../core/base/base_usecase.dart';

class GetFullCategoriesUseCase
    extends BaseUseCase<List<CategoryModel>, NoParameters> {
  final DiscoverRepository discoverRepository;

  GetFullCategoriesUseCase({required this.discoverRepository});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  *
  * */

  @override
  Future<Either<ErrorModel, List<CategoryModel>>> call(
      NoParameters parameters) async {
    return await discoverRepository.getFullCategories(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, List<CategoryModel>>> callTest(
      NoParameters parameters) async {
    return await discoverRepository.getFullCategories(parameters: parameters);
  }
}

import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/home/data/models/home_model.dart';
import 'package:shop/features/home/domain/repository/repository.dart';

import '../../../../core/base/base_usecase.dart';

class GetHomeStaticPageUseCase extends BaseUseCase<HomeModel, NoParameters> {
  final Repository homeRepo;

  GetHomeStaticPageUseCase({required this.homeRepo});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  *
  * */

  @override
  Future<Either<ErrorModel, HomeModel>> call(NoParameters parameters) async {
    return await homeRepo.getHomeStaticPage(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, HomeModel>> callTest(
      NoParameters parameters) async {
    return await homeRepo.getHomeStaticPage(parameters: parameters);
  }
}

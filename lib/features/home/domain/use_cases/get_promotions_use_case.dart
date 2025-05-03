import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/home/data/models/promotions_model.dart';
import 'package:shop/features/home/domain/repository/repository.dart';

import '../../../../core/base/base_usecase.dart';

class GetPromotionsStaticPageUseCase
    extends BaseUseCase<PromotionsModel, NoParameters> {
  final Repository homeRepo;

  GetPromotionsStaticPageUseCase({required this.homeRepo});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  *
  * */

  @override
  Future<Either<ErrorModel, PromotionsModel>> call(
      NoParameters parameters) async {
    return await homeRepo.getPromotionStaticPage(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, PromotionsModel>> callTest(
      NoParameters parameters) async {
    return await homeRepo.getPromotionStaticPage(parameters: parameters);
  }
}

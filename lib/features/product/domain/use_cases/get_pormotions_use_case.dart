import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/product/data/models/pormotion_model.dart';
import 'package:shop/features/product/domain/entity/product_entity.dart';
import 'package:shop/features/product/domain/repository/repository.dart';

class GetPormotionsUseCase
    implements BaseUseCase<List<PormotionModel>, ProductEntity> {
  final ProductRepository repository;

  GetPormotionsUseCase(this.repository);

  @override
  Future<Either<ErrorModel, List<PormotionModel>>> call(
      ProductEntity parameters) async {
    return await repository.getPormotions(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, List<PormotionModel>>> callTest(
      ProductEntity parameters) {
    // TODO: implement callTest
    throw UnimplementedError();
  }
}

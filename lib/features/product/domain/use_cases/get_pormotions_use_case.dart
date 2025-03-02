import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/product/data/models/pormotion_model.dart';
import 'package:shop/features/product/domain/repository/repository.dart';

class GetPormotionsUseCase
    implements BaseUseCase<List<PormotionModel>, NoParameters> {
  final ProductRepository repository;

  GetPormotionsUseCase(this.repository);

  @override
  Future<Either<ErrorModel, List<PormotionModel>>> call(
      NoParameters parameters) async {
    return await repository.getPormotions(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, List<PormotionModel>>> callTest(
      NoParameters parameters) {
    // TODO: implement callTest
    throw UnimplementedError();
  }
}

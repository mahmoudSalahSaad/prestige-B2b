import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/product/data/models/item_details_model.dart';
import 'package:shop/features/product/data/models/pormotion_model.dart';
import 'package:shop/features/product/domain/entity/product_entity.dart';

abstract class ProductRepository {
  Future<Either<ErrorModel, ItemDetailsModel>> getProductDetails(
      {required ProductEntity parameters});

  Future<Either<ErrorModel , List<PormotionModel>>> getPormotions({required ProductEntity parameters});


  
}

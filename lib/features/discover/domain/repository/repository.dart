import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/discover/data/models/category_model.dart';
import 'package:shop/features/home/data/models/items_model.dart';
import 'package:shop/features/product/domain/entity/product_entity.dart';

abstract class DiscoverRepository {
  Future<Either<ErrorModel, List<CategoryModel>>> getFullCategories(
      {required NoParameters parameters});

  Future<Either<ErrorModel, ItemsModel>> getProductsByCategory(
      {required ProductEntity parameters});
}

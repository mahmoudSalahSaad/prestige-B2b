import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/home/data/models/category_model.dart';
import 'package:shop/features/home/data/models/items_model.dart';
import 'package:shop/features/home/data/models/sliders_model.dart';

abstract class Repository {
  Future<Either<ErrorModel, List<SlidersModel>>> getSliders(
      {required NoParameters parameters});
  Future<Either<ErrorModel, List<CategoryModel>>> getCategories(
      {required NoParameters parameters});
  Future<Either<ErrorModel, ItemsModel>> getProducts(
      {required NoParameters parameters});
}

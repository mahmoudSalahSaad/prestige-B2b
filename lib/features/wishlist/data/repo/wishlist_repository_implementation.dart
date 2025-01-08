import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/home/data/models/items_model.dart';
import 'package:shop/features/wishlist/domain/entities/wishlist_entity.dart';
import 'package:shop/features/wishlist/domain/repo/wishlist_repository.dart';

class WishlistRepositoryImplementation extends WishlistRepository {
  @override
  Future<Either<ErrorModel, ProductModels>> addProduct(
      {required WishlistEntity parameters}) {
    // TODO: implement addProduct
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorModel, List<ProductModels>>> getWishlist(
      {required NoParameters parameters}) {
    // TODO: implement getWi shlist
    throw UnimplementedError();
  }

  @override
  Future<Either<ErrorModel, ProductModels>> removeProduct(
      {required WishlistEntity parameters}) {
    // TODO: implement removeProduct
    throw UnimplementedError();
  }
}

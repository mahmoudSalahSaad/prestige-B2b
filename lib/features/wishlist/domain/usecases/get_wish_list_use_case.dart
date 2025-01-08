import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/home/data/models/items_model.dart';
import 'package:shop/features/wishlist/domain/repo/wishlist_repository.dart';

import '../../../../core/base/base_usecase.dart';

class RemoveWishListUseCase
    extends BaseUseCase<List<ProductModels>, NoParameters> {
  final WishlistRepository wishlistRepository;

  RemoveWishListUseCase({required this.wishlistRepository});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  *
  * */

  @override
  Future<Either<ErrorModel, List<ProductModels>>> call(
      NoParameters parameters) async {
    return await wishlistRepository.getWishlist(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, List<ProductModels>>> callTest(
      NoParameters parameters) async {
    return await wishlistRepository.getWishlist(parameters: parameters);
  }
}

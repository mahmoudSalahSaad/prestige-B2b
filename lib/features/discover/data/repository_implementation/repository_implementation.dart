import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_response.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/core/services/network/end_points.dart';
import 'package:shop/core/services/network/network_client.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/discover/data/models/category_model.dart';
import 'package:shop/features/discover/domain/repository/repository.dart';
import 'package:shop/features/home/data/models/items_model.dart';
import 'package:shop/features/product/domain/entity/product_entity.dart';

class DiscoverdRepositoryImplementation extends DiscoverRepository {
  final NetworkClient networkClient;

  DiscoverdRepositoryImplementation({required this.networkClient});

  @override

  /// This method will fetch the product details from the server and return a [PoductDetailsModel] object.
  /// If there is an error, it will return an [ErrorModel] object
  ///
  /// [parameters] is the product slug
  @override
  Future<Either<ErrorModel, List<CategoryModel>>> getFullCategories(
      {required NoParameters parameters}) async {
    /// The type of network call (get, post, put, delete)
    NetworkCallType type = NetworkCallType.get;

    /// The result of the network call
    Either<ErrorModel, BaseResponse> result = await networkClient(
      /// The url of the network call
      url: /* EndPoints.productdetails(parameters.productSlug) */
          EndPoints.categories,

      /// The type of network call
      type: type,

      /// The data to be sent with the network call
      data: {"with": "children"},
    );

    print(
        "pfpdokgdf======>${result.fold((l) => l.errorMessage, (r) => r.data)}");

    /// If the result is an error, return the error
    return result.fold(
      (l) => Left(l),

      /// If the result is a success, convert the result to a [PoductDetailsModel] object
      (r) {
        List<CategoryModel> categories = [];
        try {
          //print("pfpdokgdf======>${r.data}");

          /// Iterate over the list of categories and convert each one to a CategoryModel object
          for (Map<String, dynamic> item in r.data) {
            categories.add(CategoryModel.fromJson(item));
          }

          /// Return a Right containing the list of categories
          return Right(categories);
        } catch (e) {
          /// If there is an error, return a Left containing an ErrorModel object
          return Left(ErrorModel(errorMessage: e.toString()));
        }
      },
    );
  }

  @override
  Future<Either<ErrorModel, ItemsModel>> getProductsByCategory(
      {required ProductEntity parameters}) async {
    NetworkCallType type = NetworkCallType.get;

    /// The result of the network call
    Either<ErrorModel, BaseResponse> result = await networkClient(
      /// The url of the network call
      url: /* EndPoints.productdetails(parameters.productSlug) */
          EndPoints.getProductsByCategory(parameters.productSlug),

      /// The type of network call
      type: type,

      /// The data to be sent with the network call
      data: {},
    );
    return result.fold(
      (l) => Left(l),

      /// If the result is a success, convert the result to a [PoductDetailsModel] object
      (r) {
        ItemsModel products = ItemsModel();
        try {
          //print("pfpdokgdf======>${r.data}");

          /// Iterate over the list of products and convert each one to a CategoryModel object
          ///
          print("pfpdokgdf======>${r.data}");
          products = ItemsModel.fromJson(r.data);

          print("pfpdokgdf======>${products.toJson()}");

          /// Return a Right containing the list of products
          return Right(products);
        } catch (e) {
          /// If there is an error, return a Left containing an ErrorModel object
          return Left(ErrorModel(errorMessage: e.toString()));
        }
      },
    );
  }
}

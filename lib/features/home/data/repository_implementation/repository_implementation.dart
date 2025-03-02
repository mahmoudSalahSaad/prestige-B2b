import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_response.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/core/services/network/end_points.dart';
import 'package:shop/core/services/network/network_client.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/discover/data/models/category_model.dart';
import 'package:shop/features/home/data/models/home_model.dart';
import 'package:shop/features/home/data/models/items_model.dart';
// import 'package:shop/features/home/data/models/sliders_model.dart';
import 'package:shop/features/home/domain/repository/repository.dart';

class RepositoryImplementation implements Repository {
  final NetworkClient networkClient;

  RepositoryImplementation({required this.networkClient});
  @override

  /// Gets the list of categories
  ///
  /// This function is used to fetch the list of categories from the server.
  /// It uses the [NetworkClient] to make a GET request to the server.
  /// The response is then parsed and converted to a list of [CategoryModel] objects.
  /// If the request fails, it returns a [Left] containing an [ErrorModel] object.
  /// If the request is successful, it returns a [Right] containing the list of categories.
  @override
  Future<Either<ErrorModel, List<CategoryModel>>> getCategories(
      {required NoParameters parameters}) async {
    NetworkCallType type = NetworkCallType.get;

    Either<ErrorModel, BaseResponse> result = await networkClient(
      url: EndPoints.categories,
      type: type,
      data: {},
    );
    return result.fold((l) => Left(l), (r) {
      List<CategoryModel> categories = [];
      try {
        // Iterate over the list of categories and convert each one to a CategoryModel object
        for (Map<String, dynamic> item in r.data) {
          categories.add(CategoryModel.fromJson(item));
        }
        // Return a Right containing the list of categories
        return Right(categories);
      } catch (e) {
        // If there is an error, return a Left containing an ErrorModel object
        return Left(ErrorModel(errorMessage: e.toString()));
      }
    });
  }

  @override

  /// Gets the list of products
  ///
  /// This function is used to fetch the list of products from the server.
  /// It uses the [NetworkClient] to make a GET request to the server.
  /// The response is then parsed and converted to a list of [ProductModels] objects.
  /// If the request fails, it returns a [Left] containing an [ErrorModel] object.
  /// If the request is successful, it returns a [Right] containing the list of products.
  @override
  Future<Either<ErrorModel, ItemsModel>> getProducts(
      {required NoParameters parameters}) async {
    NetworkCallType type = NetworkCallType.get;

    Either<ErrorModel, BaseResponse> result = await networkClient(
      url: EndPoints.productList,
      type: type,
      data: {},
    );
    return result.fold((l) => Left(l), (r) {
      ItemsModel products = ItemsModel();
      try {
        // Iterate over the list of products and convert each one to a ProductModel object
        products = ItemsModel.fromJson(r.data);
        // Return a Right containing the list of products
        return Right(products);
      } catch (e) {
        // If there is an error, return a Left containing an ErrorModel object
        return Left(ErrorModel(errorMessage: e.toString()));
      }
    });
  }

  @override

  /// Gets the static data for the home page
  ///
  /// This function is used to fetch the static data for the home page from the server.
  /// It uses the [NetworkClient] to make a GET request to the server.
  /// The response is then parsed and converted to a [HomeModel] object.
  /// If the request fails, it returns a [Left] containing an [ErrorModel] object.
  /// If the request is successful, it returns a [Right] containing the [HomeModel] object.
  @override
  Future<Either<ErrorModel, HomeModel>> getHomeStaticPage(
      {required NoParameters parameters}) async {
    const NetworkCallType callType = NetworkCallType.post;

    final Either<ErrorModel, BaseResponse> response = await networkClient(
      url: EndPoints.getHomeStaticPage,
      type: callType,
      data: {},
    );

    return response.fold(
      (error) => Left(error),
      (baseResponse) {
        try {
          final HomeModel homeData = HomeModel.fromJson(baseResponse.data);
          return Right(homeData);
        } catch (e) {
          return Left(ErrorModel(errorMessage: e.toString()));
        }
      },
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_response.dart';
import 'package:shop/core/services/network/network_client.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/product/data/models/item_details_model.dart';
import 'package:shop/features/product/domain/entity/product_entity.dart';
import 'package:shop/features/product/domain/repository/repository.dart';

class ProductRepositoryImplementation extends ProductRepository {
  final NetworkClient networkClient;

  ProductRepositoryImplementation({required this.networkClient});

  @override

  /// This method will fetch the product details from the server and return a [PoductDetailsModel] object.
  /// If there is an error, it will return an [ErrorModel] object
  ///
  /// [parameters] is the product slug
  @override
  Future<Either<ErrorModel, ItemDetailsModel>> getProductDetails(
      {required ProductEntity parameters}) async {
    /// The type of network call (get, post, put, delete)
    NetworkCallType type = NetworkCallType.get;

    /// The result of the network call
    Either<ErrorModel, BaseResponse> result = await networkClient(
      /// The url of the network call
      url: /* EndPoints.productdetails(parameters.productSlug) */
          "/products/${parameters.productSlug}",

      /// The type of network call
      type: type,

      /// The data to be sent with the network call
      data: {},
    );

    print(
        "pfpdokgdf======>${result.fold((l) => l.errorMessage, (r) => r.data)}");

    /// If the result is an error, return the error
    return result.fold(
      (l) => Left(l),

      /// If the result is a success, convert the result to a [PoductDetailsModel] object
      (r) {
        ItemDetailsModel categories = ItemDetailsModel();
        try {
          //print("pfpdokgdf======>${r.data}");

          /// Iterate over the list of categories and convert each one to a CategoryModel object
          categories = ItemDetailsModel.fromJson(r.data);

          /// Return a Right containing the list of categories
          return Right(categories);
        } catch (e) {
          /// If there is an error, return a Left containing an ErrorModel object
          return Left(ErrorModel(errorMessage: e.toString()));
        }
      },
    );
  }
}

import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_response.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/core/services/network/end_points.dart';
import 'package:shop/core/services/network/network_client.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/Address/data/models/address_model.dart';
import 'package:shop/features/Address/domain/entities/address_entity.dart';
import 'package:shop/features/Address/domain/repo/address_repo.dart';

class AddressRepoImpl extends AddressRepo {
  final NetworkClient networkClient;

  AddressRepoImpl({required this.networkClient});
  @override

  /// Adds a new address to the server.
  ///
  /// [parameters] is an [AddressEntity] containing the information of the address to be added.
  /// The address is added to the server and the response is returned.
  /// If the addition is successful, a [Right] is returned with the added address as an [AddressModel].
  /// If the addition fails, a [Left] is returned with the error as an [ErrorModel].
  @override
  Future<Either<ErrorModel, AddressModel>> addAddress(
      {required AddressEntity parameters}) async {
    NetworkCallType type = NetworkCallType.post;

    // The data to be sent to the server.
    Map<String, dynamic> data = {
      'name': parameters.name,
      "line1": parameters.line,
      "line2": parameters.line2,
      "state": parameters.state,
      "postal_code": parameters.postalCode,
      "country_id": parameters.countryId,
      "city_id": parameters.cityId,
      "is_billing_address": parameters.isBillingAddress ? 1 : 0,
      "is_shipping_address": parameters.isShippingAddress ? 1 : 0
    };

    // Call the server to add the address.
    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: data,
      url: EndPoints.addAddress,
      type: type,
    );

    // If the addition is successful, return the added address.
    // Otherwise, return the error.
    return result.fold((l) => Left(l), (r) {
      AddressModel addressModel = AddressModel.fromJson(r.data);
      return Right(addressModel);
    });
  }

  @override
  Future<Either<ErrorModel, List>> deleteAddress(
      {required AddressEntity parameters}) async {
    NetworkCallType type = NetworkCallType.post;

    // The data to be sent to the server.
    Map<String, dynamic> data = {};

    // Call the server to add the address.
    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: data,
      url: EndPoints.deleteAddress(parameters.id.toString()),
      type: type,
    );

    // If the addition is successful, return the added address.
    // Otherwise, return the error.
    return result.fold((l) => Left(l), (r) {
      return const Right([]);
    });
  }

  @override
  Future<Either<ErrorModel, List<AddressModel>>> getAddresses(
      {required NoParameters parameters}) async {
    NetworkCallType type = NetworkCallType.get;

    // The data to be sent to the server.
    Map<String, dynamic> data = {};

    // Call the server to add the address.
    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: data,
      url: EndPoints.getAddresses,
      type: type,
    );

    // If the addition is successful, return the added address.
    // Otherwise, return the error.
    return result.fold((l) => Left(l), (r) {
      List<AddressModel> addresses = [];
      for (var element in r.data) {
        addresses.add(AddressModel.fromJson(element));
      }
      return Right(addresses);
    });
  }

  @override
  Future<Either<ErrorModel, AddressModel>> updateAddress(
      {required AddressEntity parameters}) async {
    NetworkCallType type = NetworkCallType.post;

    // The data to be sent to the server.
    Map<String, dynamic> data = {
      'name': parameters.name,
      "line1": parameters.line,
      "country_id": parameters.countryId,
      "city_id": parameters.cityId,
      "line2": parameters.line2,
      "state": parameters.state,
      "postal_code": parameters.postalCode,
      "is_billing_address": parameters.isBillingAddress ? 1 : 0,
      "is_shipping_address": parameters.isShippingAddress ? 1 : 0
    };

    // Call the server to add the address.
    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: data,
      url: EndPoints.updateAddress(parameters.id.toString()),
      type: type,
    );

    // If the addition is successful, return the added address.
    // Otherwise, return the error.
    return result.fold((l) => Left(l), (r) {
      AddressModel addressModel = AddressModel.fromJson(r.data);
      return Right(addressModel);
    });
  }
}

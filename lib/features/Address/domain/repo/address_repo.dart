import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/Address/data/models/address_model.dart';
import 'package:shop/features/Address/domain/entities/address_entity.dart';

abstract class AddressRepo {
  Future<Either<ErrorModel, AddressModel>> addAddress(
      {required AddressEntity parameters});
  Future<Either<ErrorModel, List<AddressModel>>> getAddresses(
      {required NoParameters parameters});
  Future<Either<ErrorModel, AddressModel>> updateAddress(
      {required AddressEntity parameters});
  Future<Either<ErrorModel, List>> deleteAddress(
      {required AddressEntity parameters});
}

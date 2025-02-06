import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/Address/domain/entities/address_entity.dart';
import 'package:shop/features/Address/domain/repo/address_repo.dart';

import '../../../../core/base/base_usecase.dart';

class DeleteAddressUseCase extends BaseUseCase<List, AddressEntity> {
  final AddressRepo addressRepo;

  DeleteAddressUseCase({required this.addressRepo});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  *
  * */

  @override
  Future<Either<ErrorModel, List>> call(AddressEntity parameters) async {
    return await addressRepo.deleteAddress(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, List>> callTest(AddressEntity parameters) async {
    return await addressRepo.deleteAddress(parameters: parameters);
  }
}

import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/Address/data/models/address_model.dart';
import 'package:shop/features/Address/domain/repo/address_repo.dart';

import '../../../../core/base/base_usecase.dart';

class GetAddressUseCase extends BaseUseCase<List<AddressModel>, NoParameters> {
  final AddressRepo addressRepo;

  GetAddressUseCase({required this.addressRepo});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  *
  * */

  @override
  Future<Either<ErrorModel, List<AddressModel>>> call(
      NoParameters parameters) async {
    return await addressRepo.getAddresses(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, List<AddressModel>>> callTest(
      NoParameters parameters) async {
    return await addressRepo.getAddresses(parameters: parameters);
  }
}

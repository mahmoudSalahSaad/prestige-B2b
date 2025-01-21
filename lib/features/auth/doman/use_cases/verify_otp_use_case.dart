import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';
import 'package:shop/features/auth/doman/repository/repository.dart';

import '../../../../core/base/base_usecase.dart';

class VerifyOtpUseCase extends BaseUseCase<Map<String, dynamic>, AuthEntity> {
  final AuthRepository authRepository;

  VerifyOtpUseCase({required this.authRepository});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  *
  * */

  @override
  Future<Either<ErrorModel, Map<String, dynamic>>> call(
      AuthEntity parameters) async {
    return await authRepository.verifyOTP(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, Map<String, dynamic>>> callTest(
      AuthEntity parameters) async {
    return await authRepository.verifyOTP(parameters: parameters);
  }
}

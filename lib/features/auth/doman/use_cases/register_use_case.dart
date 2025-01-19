import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/auth/data/model/user_model.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';
import 'package:shop/features/auth/doman/repository/repository.dart';

import '../../../../core/base/base_usecase.dart';

class RegisterUseCase extends BaseUseCase<UserModel, AuthEntity> {
  final AuthRepository authRepository;

  RegisterUseCase({required this.authRepository});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  *
  * */

  @override
  Future<Either<ErrorModel, UserModel>> call(AuthEntity parameters) async {
    return await authRepository.register(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, UserModel>> callTest(AuthEntity parameters) async {
    return await authRepository.register(parameters: parameters);
  }
}

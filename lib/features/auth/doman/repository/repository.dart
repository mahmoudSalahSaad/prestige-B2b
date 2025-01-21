import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/auth/data/model/user_model.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';

abstract class AuthRepository {
  Future<Either<ErrorModel, UserModel>> login({required AuthEntity parameters});
  Future<Either<ErrorModel, UserModel>> register(
      {required AuthEntity parameters});

  Future<Either<ErrorModel, User>> updateProfile(
      {required AuthEntity parameters});
  Future<Either<ErrorModel, List>> chnagePassword(
      {required AuthEntity parameters});
  Future<Either<ErrorModel, List>> removeAccount(
      {required AuthEntity parameters});
  Future<Either<ErrorModel, List>> forgetPassword(
      {required AuthEntity parameters});

  /// Initiates a password reset process for the user associated with the given
  /// [parameters]. Returns a [Future] containing either an [ErrorModel] if
  /// the operation fails or an empty [List] if the password reset request is
  /// successful.

  Future<Either<ErrorModel, Map<String, dynamic>>> verifyOTP(
      {required AuthEntity parameters});

  Future<Either<ErrorModel, List>> resetPassword(
      {required AuthEntity parameters});
}

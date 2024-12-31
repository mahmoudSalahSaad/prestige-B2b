import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/auth/data/model/user_model.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';

abstract class AuthRepository {
  Future<Either<ErrorModel, UserModel>> login({required AuthEntity parameters});
}

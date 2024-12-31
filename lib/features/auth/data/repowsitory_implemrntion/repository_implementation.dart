import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_response.dart';
import 'package:shop/core/services/network/end_points.dart';
import 'package:shop/core/services/network/network_client.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/auth/data/model/user_model.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';
import 'package:shop/features/auth/doman/repository/repository.dart';

class AuthRequirementRepositoryImplementation extends AuthRepository {
  final NetworkClient networkClient;

  AuthRequirementRepositoryImplementation({required this.networkClient});
  @override
  Future<Either<ErrorModel, UserModel>> login(
      {required AuthEntity parameters}) async {
    NetworkCallType type = NetworkCallType.post;

    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {
        'email': parameters.email,
        'password': parameters.password,
      },
      url: EndPoints.login,
      type: type,
    );
    return result.fold((l) => Left(l), (r) {
      print("Tokkkkken====>${r.data.toString()}");
      UserModel userModel = UserModel.fromJson(r.data);
      return Right(userModel);
    });
  }
}

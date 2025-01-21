import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
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
      UserModel userModel = UserModel.fromJson(r.data);
      return Right(userModel);
    });
  }

  @override
  Future<Either<ErrorModel, UserModel>> register(
      {required AuthEntity parameters}) async {
    NetworkCallType type = NetworkCallType.post;
    FormData formData = FormData.fromMap({
      'email': parameters.email,
      'password': parameters.password,
      "name": parameters.name,
      "phone": parameters.phone,
      "address": parameters.address,
      "postal_code": parameters.postalCode,
      'password_confirmation': parameters.confirmPassword,
      'city_id': parameters.cityId,
      'country_id': parameters.countryId,
      "attachment": parameters.attachment != null
          ? await MultipartFile.fromFile(parameters.attachment ?? '')
          : "",
    });
    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {},
      formData: formData,
      url: EndPoints.register,
      type: type,
    );
    return result.fold((l) => Left(l), (r) {
      UserModel userModel = UserModel.fromJson(r.data);
      return Right(userModel);
    });
  }

  @override
  Future<Either<ErrorModel, List>> chnagePassword(
      {required AuthEntity parameters}) async {
    NetworkCallType type = NetworkCallType.post;

    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {
        'old_password': parameters.oldPassword,
        'password': parameters.password,
        "password_confirmation": parameters.confirmPassword
      },
      url: EndPoints.changePassword,
      type: type,
    );
    return result.fold((l) => Left(l), (r) {
      return const Right([]);
    });
  }

  @override
/*************  ✨ Codeium Command ⭐  *************/
  /// Removes an account based on the provided authentication parameters.
  ///
  /// This method takes an [AuthEntity] object as a parameter and attempts to
  /// remove the associated account. It returns a [Future] which either
  /// contains an [ErrorModel] on failure or a [List] on success.

  /// ****  9983fa46-d423-46f0-bca3-e720e18c019a  ******
  Future<Either<ErrorModel, List>> removeAccount(
      {required AuthEntity parameters}) async {
    NetworkCallType type = NetworkCallType.post;

    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {},
      url: EndPoints.removeAccount,
      type: type,
    );
    return result.fold((l) => Left(l), (r) {
      return const Right([]);
    });
  }

  @override
  Future<Either<ErrorModel, User>> updateProfile(
      {required AuthEntity parameters}) async {
    NetworkCallType type = NetworkCallType.post;
    FormData formData = FormData.fromMap({
      'email': parameters.email,
      "name": parameters.name,
      "phone": parameters.phone,
      "photo": parameters.attachment != null
          ? await MultipartFile.fromFile(parameters.attachment ?? '')
          : "",
    });
    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {},
      formData: formData,
      url: EndPoints.updateProfile,
      type: type,
    );
    return result.fold((l) => Left(l), (r) {
      User userModel = User.fromJson(r.data);
      return Right(userModel);
    });
  }

  @override
  Future<Either<ErrorModel, List>> forgetPassword(
      {required AuthEntity parameters}) async {
    NetworkCallType type = NetworkCallType.post;

    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {"email": parameters.email},
      url: EndPoints.forgetPassword,
      type: type,
    );
    return result.fold((l) => Left(l), (r) {
      return const Right([]);
    });
  }

  @override
  Future<Either<ErrorModel, List>> resetPassword(
      {required AuthEntity parameters}) async {
    NetworkCallType type = NetworkCallType.post;

    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {
        'password': parameters.password,
        "password_confirmation": parameters.confirmPassword,
        "token": parameters.token
      },
      url: EndPoints.resetPassword,
      type: type,
    );
    return result.fold((l) => Left(l), (r) {
      return const Right([]);
    });
  }

  @override
  Future<Either<ErrorModel, Map<String, dynamic>>> verifyOTP(
      {required AuthEntity parameters}) async {
    NetworkCallType type = NetworkCallType.post;

    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {'email': parameters.email, "otp": parameters.otp},
      url: EndPoints.resetPassword,
      type: type,
    );
    return result.fold((l) => Left(l), (r) {
      return Right(r.data);
    });
  }
}

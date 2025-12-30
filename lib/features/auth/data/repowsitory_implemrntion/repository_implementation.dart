import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/base/base_response.dart';
import 'package:shop/core/controller/language_controller.dart';
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

    print('Email: ${parameters.email}');
    print('Password: ${parameters.password}');

    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {
        'phone': parameters.email, // Using email field for phone number
        'password': parameters.password,
      },
      url: '/customers/phone-login',
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
    print('Email: ${parameters.email}');
    print('Password: ${parameters.password}');
    print('Name: ${parameters.name}');
    print('Phone: ${parameters.phone}');
    print('Address: ${parameters.address}');
    print('Postal Code: ${parameters.postalCode}');
    print('Confirm Password: ${parameters.confirmPassword}');
    print('City Id: ${parameters.cityId}');
    print('Country Id: ${parameters.countryId}');
    print('Attachment: ${parameters.attachment}');
    print('Commercial Register: ${parameters.commercialRegister}');
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
      "attachment":
          (parameters.attachment != null && parameters.attachment != "")
              ? await MultipartFile.fromFile(parameters.attachment ?? '')
              : "",
      "comp_register": (parameters.commercialRegister != null &&
              parameters.commercialRegister != "")
          ? await MultipartFile.fromFile(parameters.commercialRegister ?? '')
          : "",
    });
    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {},
      formData: formData,
      url: '/customers/otp-register',
      type: type,
    );
    return result.fold((l) => Left(l), (r) {
      UserModel userModel = UserModel.fromJson({});
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
      data: {"phone": parameters.email}, // Using email field for phone number
      url: '/customers/forget-password/send-otp',
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

    print("ResetPasswordRepository: Password: ${parameters.password}");
    print(
        "ResetPasswordRepository: Confirm Password: ${parameters.confirmPassword}");
    print("ResetPasswordRepository: Token: ${parameters.token}");

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
      data: {
        'phone': "${parameters.phone}",
        "otp_code": "${parameters.otp}"
      }, // Using email field for phone number
      url: '/customers/verify-otp',
      type: type,
    );

    final ref  = ProviderContainer() ; 


    return result.fold((l) => Left(l), (r) {
      // Check if data is an empty list
      if (r.data is List && (r.data as List).isEmpty) {
        return  Left(ErrorModel(errorMessage: ref.read(languageControllerProvider).locale.languageCode == "ar" ? "رموز التحقق غير صالحة" : "Invalid OTP"));
         
      }
      return Right(r.data);
    });
  }
}

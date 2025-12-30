import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_response.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/services/local/cache_consumer.dart';
import 'package:shop/core/services/local/storage_keys.dart';
import 'package:shop/data/datasource/remote/dio/dio_client.dart';
import 'package:shop/data/datasource/remote/exception/api_error_handler.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';
import 'package:shop/features/auth/doman/use_cases/login_use_case.dart';

import '../../utils/logger.dart';

class NetworkClient {
  Future<Either<ErrorModel, BaseResponse>> call({
    required Map<String, dynamic> data,
    required String url,
    required NetworkCallType type,
    FormData? formData,
  }) async {
    DioClient dioClient = getIt<DioClient>();
    late Response response;
    AppPrefs prefs = getIt();
    final lang = await prefs.get("selected_language", defaultValue: "ar");

    Options options = Options(
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'X-App-Locale': lang,
        'User-Agent': 'android',
      },
    );
    String? token = await prefs.getSecuredData(PrefKeys.token);
    token ??= await prefs.get(PrefKeys.token);

    print("Tokkkkken====>$token");
    if (token != null && token.isNotEmpty) {
      options.headers?.addAll({'Authorization': 'Bearer $token'});
    }
    data.forEach((key, value) {
      log('data $key', '$value');
    });
    if (formData != null) {
      for (var element in formData.files) {
        log('form data ${element.key}', element.value.filename ?? 'null');
      }
    }
    try {
      switch (type) {
        case NetworkCallType.get:
          response =
              await dioClient.get(url, queryParameters: data, options: options);
          break;
        case NetworkCallType.post:
          response = await dioClient.post(url,
              queryParameters: data,
              data: formData,
              ignorePath: true,
              options: options);
          break;
        case NetworkCallType.put:
          response = await dioClient.put(url, data: data, options: options);
          break;
        case NetworkCallType.delete:
          response = await dioClient.delete(url, data: data, options: options);
          break;
      }
      logger.i('response ${response.data}');

      BaseResponse baseResponse = BaseResponse.fromJson(response.data);
      if (baseResponse.code == 200 || baseResponse.code == 201) {
        return Right(baseResponse);
      }

      // Handle authentication errors
      if (response.data["message"] == "Unauthenticated." ||
          response.data["message"] == "Unauthorised" ||
          response.data["message"] == "Unauthorized") {
        await _handleSessionExpiration();
        return const Left(
            ErrorModel(errorMessage: "Session expired. Please login again."));
      }
      if (response.data == null) {
        return Left(ErrorModel(errorMessage: baseResponse.message));
      }

      // Handle authentication status codes
      if (baseResponse.code == 401 ||
          baseResponse.code == 402 ||
          baseResponse.code == 403) {
        await _handleSessionExpiration();
        return const Left(
            ErrorModel(errorMessage: "Authentication required. Please login."));
      }

      return Right(baseResponse);
    } catch (e) {
      log('network client error', e.toString());

      // Handle Dio exceptions with authentication errors
      if (e is DioException) {
        if (e.response?.statusCode == 401 || e.response?.statusCode == 403) {
          await _handleSessionExpiration();
          return const Left(
              ErrorModel(errorMessage: "Session expired. Please login again."));
        }
      }

      if (e is ErrorModel) return Left(e);
      return Left(ApiErrorHandler.getMessage(e));
    }
  }

  /// Handles session expiration by attempting automatic re-login
  Future<void> _handleSessionExpiration() async {
    AppPrefs prefs = getIt();
    
    try {
      // Get saved credentials
      String? savedPhone = await prefs.getSecuredData('saved_phone');
      String? savedPassword = await prefs.getSecuredData('saved_password');
      
      // If we have saved credentials, attempt automatic re-login
      if (savedPhone != null && savedPhone.isNotEmpty && 
          savedPassword != null && savedPassword.isNotEmpty) {
        print("Attempting automatic re-login with saved credentials");
        
        try {
          LoginUseCase loginUseCase = getIt();
          // Use phone as email (as per app convention)
          final result = await loginUseCase.call(AuthEntity(
            email: savedPhone,
            password: savedPassword,
            phone: savedPhone,
          ));
          
          result.fold((l) {
            // Auto-login failed, clear and navigate to login
            print("Auto re-login failed: ${l.errorMessage}");
            prefs.clear();
            NavigationService.pushNamedAndRemoveUntil(Routes.login);
          }, (r) async {
            // Auto-login successful
            print("Auto re-login successful, navigating to home");
            prefs.save(PrefKeys.token, r.authorization?.token);
            if (r.user != null) {
              await prefs.saveSecuredData(
                  PrefKeys.user, json.encode(r.user!.toJson()));
            }
            // Navigate to home
            NavigationService.pushNamedAndRemoveUntil(Routes.entryPoint);
          });
        } catch (e) {
          print("Error during auto re-login: $e");
          prefs.clear();
          NavigationService.pushNamedAndRemoveUntil(Routes.login);
        }
      } else {
        // No saved credentials, just navigate to login
        print("No saved credentials, navigating to login");
        prefs.clear();
        NavigationService.pushNamedAndRemoveUntil(Routes.login);
      }
    } catch (e) {
      print("Error handling session expiration: $e");
      prefs.clear();
      NavigationService.pushNamedAndRemoveUntil(Routes.login);
    }
  }
}

enum NetworkCallType { get, post, put, delete }

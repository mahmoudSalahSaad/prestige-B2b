import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/core/services/local/cache_consumer.dart';
import 'package:shop/core/services/network/network_client.dart';
import 'package:shop/data/datasource/remote/dio/dio_client.dart';
import 'package:shop/data/datasource/remote/dio/logging_interceptor.dart';
import 'package:shop/features/home/data/repository_implementation/repository_implementation.dart';
import 'package:shop/features/home/domain/repository/repository.dart';
import 'package:shop/features/home/domain/use_cases/get_categories_use_case.dart';
import 'package:shop/features/home/domain/use_cases/get_products_use_case.dart';
import 'package:shop/features/home/domain/use_cases/get_sliders_use_case.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  /*
  * >USECASES<
  *
  *
  * */

  getIt.registerLazySingleton(() => GetProductsUseCase(homeRepo: getIt()));
  getIt.registerLazySingleton(() => GetCategoriesUseCase(homeRepo: getIt()));
  getIt.registerLazySingleton(() => GetSlidersUseCase(homeRepo: getIt()));

  /// Core
  getIt.registerLazySingleton(() => DioClient(
      "https://dev.prestigeb2b.net/api/v1", getIt(),
      loggingInterceptor: getIt(), cacheConsumer: getIt()));

  /// External
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => NetworkClient());
  getIt.registerLazySingleton(() => sharedPreferences);
  getIt.registerLazySingleton(() => Dio());
  getIt.registerLazySingleton(() => LoggingInterceptor());
  getIt.registerLazySingleton(() => const FlutterSecureStorage());
  getIt.registerLazySingleton(
      () => AppPrefs(secureStorage: getIt(), sharedPreferences: getIt()));
  //
  // getIt.registerLazySingleton<PrettyDioLogger>(() => PrettyDioLogger(requestHeader: true, requestBody: true, responseHeader: true));
  // getIt.registerLazySingleton(() => ApiConsumer(getIt<Dio>(), getIt<PrettyDioLogger>(), getIt()));
  /*
  * Repository */
  getIt.registerLazySingleton<Repository>(
      () => RepositoryImplementation(networkClient: getIt()));
  // getIt.registerLazySingleton<HomeRepository>(
  //     () => HomeRepositoryImplemention(networkClient: getIt()));
  // getIt.registerLazySingleton<ApointmentRepository>(
  //     () => ApointmentsRepositoryImplemention(networkClient: getIt()));
  // getIt.registerLazySingleton<MedicalRepository>(
  //     () => MedicaneRepositoryImplemention(networkClient: getIt()));
  // getIt.registerLazySingleton<HomeRepository>(
  //     () => HomeRepositoryImplmentaion(networkClient: getIt()));
  // getIt.registerLazySingleton<AuthRefreshRepository>(
  //     () => AuthRefreshRepositoryImpl(networkClient: getIt()));
}

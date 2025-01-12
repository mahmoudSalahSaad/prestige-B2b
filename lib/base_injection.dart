import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/core/services/local/cache_consumer.dart';
import 'package:shop/core/services/network/network_client.dart';
import 'package:shop/data/datasource/remote/dio/dio_client.dart';
import 'package:shop/data/datasource/remote/dio/logging_interceptor.dart';
import 'package:shop/features/auth/data/repowsitory_implemrntion/repository_implementation.dart';
import 'package:shop/features/auth/doman/repository/repository.dart';
import 'package:shop/features/auth/doman/use_cases/login_use_case.dart';
import 'package:shop/features/cart/data/repo/cart_repository_implementation.dart';
import 'package:shop/features/cart/domain/repo/cart_repository.dart';
import 'package:shop/features/cart/domain/usecases/add_item_to_cart_use_case.dart';
import 'package:shop/features/cart/domain/usecases/add_to_cart_use_case.dart';
import 'package:shop/features/cart/domain/usecases/get_my_cart_use_case.dart';
import 'package:shop/features/cart/domain/usecases/remove_item_tocart_use_case.dart';
import 'package:shop/features/check_out/data/repo/checkout_repo_impl.dart';
import 'package:shop/features/check_out/domain/repo/checkout_repo.dart';
import 'package:shop/features/check_out/domain/usecases/checkout_use_case.dart';
import 'package:shop/features/discover/data/repository_implementation/repository_implementation.dart';
import 'package:shop/features/discover/domain/repository/repository.dart';
import 'package:shop/features/discover/domain/use_cases/get_full_categories_use_case.dart';
import 'package:shop/features/discover/domain/use_cases/get_products_by_categories_use_case.dart';
import 'package:shop/features/home/data/repository_implementation/repository_implementation.dart';
import 'package:shop/features/home/domain/repository/repository.dart';
import 'package:shop/features/home/domain/use_cases/get_categories_use_case.dart';
import 'package:shop/features/home/domain/use_cases/get_products_use_case.dart';
import 'package:shop/features/home/domain/use_cases/get_sliders_use_case.dart';
import 'package:shop/features/orders/data/repo/my_orders_repo_impl.dart';
import 'package:shop/features/orders/domain/repo/my_orders_repo.dart';
import 'package:shop/features/orders/domain/usecases/my_orders_use_case.dart';
import 'package:shop/features/product/data/repository_implementation/repository_implementation.dart';
import 'package:shop/features/product/domain/repository/repository.dart';
import 'package:shop/features/product/domain/use_cases/get_product_details_use_case.dart';

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
  getIt.registerLazySingleton(
      () => GetProductDetailsUseCase(productRepository: getIt()));
  getIt.registerLazySingleton(
      () => GetFullCategoriesUseCase(discoverRepository: getIt()));
  getIt.registerLazySingleton(
      () => GetProductsByCategoriesUseCase(discoverRepository: getIt()));
  getIt.registerLazySingleton(() => LoginUseCase(authRepository: getIt()));
  getIt.registerLazySingleton(() => AddToCartUseCase(cartRepository: getIt()));
  getIt.registerLazySingleton(() => GetMyCartUseCase(cartRepository: getIt()));
  getIt.registerLazySingleton(
      () => AddItemToCartUseCase(cartRepository: getIt()));
  getIt.registerLazySingleton(
      () => RemoveItemToCartUseCase(cartRepository: getIt()));
  getIt.registerLazySingleton(() => CheckoutUseCase(checkoutRepo: getIt()));
  getIt.registerLazySingleton(() => MyOrdersUseCase(myOrdersRepo: getIt()));

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
  getIt.registerLazySingleton<AuthRepository>(
      () => AuthRequirementRepositoryImplementation(networkClient: getIt()));

  getIt.registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImplementation(networkClient: getIt()));
  getIt.registerLazySingleton<DiscoverRepository>(
      () => DiscoverdRepositoryImplementation(networkClient: getIt()));
  getIt.registerLazySingleton<CartRepository>(
      () => CartRepositoryImplementation(networkClient: getIt()));
  getIt.registerLazySingleton<CheckoutRepo>(
      () => CheckoutRepoImpl(networkClient: getIt()));
  getIt.registerLazySingleton<MyOrdersRepo>(
      () => MyOrdersRepoImpl(networkClient: getIt()));

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

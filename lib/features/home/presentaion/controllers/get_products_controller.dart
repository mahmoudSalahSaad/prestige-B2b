import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/features/home/data/models/items_model.dart';
import 'package:shop/features/home/domain/use_cases/get_products_use_case.dart';

part 'get_products_controller.freezed.dart';
part 'get_products_controller.g.dart';
part 'get_products_state.dart';

@Riverpod(keepAlive: true)
class GetProductsController extends _$GetProductsController {
  @override

  /// Builds the initial state for fetching products.
  ///
  /// This method initializes the state with `AsyncData` containing an empty
  /// `GetProductsState` and returns the required value from the state.
  Future<GetProductsState> build() async {
    // Initialize the state with an empty GetProductsState wrapped in AsyncData
    state = AsyncData(GetProductsState());

    await getProducts();

    // Return the required value from the state
    return state.requireValue;
  }

  /// Fetches the products from the server.
  ///
  /// This method is responsible for fetching the products from the server using
  /// the `GetProductsUseCase` class. It updates the state with the result of the
  /// operation.
  ///
  /// The method first sets the state to loading, then fetches the products from
  /// the server using the `GetProductsUseCase` class. If the result is an error,
  /// it sets the state to an error with the error message and the current stack
  /// trace. If the result is a list of products, it sets the state to a
  /// successful result with the list of products.
  Future<void> getProducts() async {
    // Get the GetProductsUseCase instance from the service locator
    final getProductsUseCase = getIt<GetProductsUseCase>();

    // Set the state to loading
    state = const AsyncLoading();

    // Fetch the products from the server
    final result = await getProductsUseCase.call(const NoParameters());

    print("adsjbcdjhbjsbvs===========>$result");

    // Handle the result of the operation
    result.fold(
      (l) {
        print("adsjbcdjhbjsbvs===========>${l.errorMessage}");

        // If the result is an error, set the state to an error with the
        // error message and the current stack trace
        state = AsyncError(l, StackTrace.current);
      },
      (r) {
        Logger().d(r.items);
        // If the result is a list of products, set the state to a successful
        // result with the list of products
        state = AsyncData(GetProductsState(products: r.items ?? []));
      },
    );
  }
}

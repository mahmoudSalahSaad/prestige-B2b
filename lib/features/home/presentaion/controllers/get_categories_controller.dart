import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/features/home/domain/use_cases/get_categories_use_case.dart';

import '../../../discover/data/models/category_model.dart';

part 'get_categories_controller.freezed.dart';
part 'get_categories_controller.g.dart';
part 'get_categories_state.dart';

@Riverpod(keepAlive: true)
class GetCategoriesController extends _$GetCategoriesController {
  @override
  Future<GetCategoriesState> build() async {
    state = AsyncData(GetCategoriesState());
    await getCaegoires();
    return state.requireValue;
  }

  /// Gets the categories from the server and updates the state of the widget
  ///
  /// This method is used to get the categories from the server and update the state of the widget.
  /// It uses the [GetCategoriesUseCase] to get the categories, and then updates the state of the widget
  /// with the response.
  ///
  /// The state of the widget is initially set to [AsyncLoading] to indicate that the data is being loaded.
  /// If the response is successful, the state is updated to [AsyncData] with the categories.
  /// If the response is an error, the state is updated to [AsyncError] with the error and the stack trace.
  Future<void> getCaegoires() async {
    /// Gets the categories from the server
    ///
    /// This method is used to get the categories from the server.
    /// It uses the [GetCategoriesUseCase] to get the categories.
    GetCategoriesUseCase getCategoriesUseCase = getIt();

    /// Sets the state of the widget to [AsyncLoading] to indicate that the data is being loaded
    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });

    /// Waits for the response from the server
    final response = await getCategoriesUseCase.call(const NoParameters());

    /// Updates the state of the widget based on the response
    response.fold((l) {
      /// If the response is an error, updates the state to [AsyncError] with the error and the stack trace
      state = AsyncError(l, StackTrace.current);
    }, (r) {
      /// If the response is successful, updates the state to [AsyncData] with the categories
      state = AsyncData(GetCategoriesState(categories: r));
    });
  }
}

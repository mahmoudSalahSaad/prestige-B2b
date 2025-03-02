import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/features/discover/data/models/category_model.dart';
import 'package:shop/features/discover/domain/use_cases/get_full_categories_use_case.dart';
import 'package:shop/features/discover/presentaion/controllers/products_by_categories_controller.dart';
import 'package:shop/features/home/data/models/items_model.dart';
import 'package:shop/features/home/presentaion/controllers/get_products_controller.dart';

part 'discover_controller.freezed.dart';
part 'discover_controller.g.dart';
part 'discover_state.dart';

@Riverpod(keepAlive: true)
class DiscoverController extends _$DiscoverController {
  @override

  /// Builds the controller and loads the full categories
  ///
  /// This method is the entry point of the controller and loads the full categories
  /// from the server. It is called when the controller is initialized.
  ///
  /// The method returns the state of the controller which is an [AsyncData] object
  /// with the categories loaded from the server.
  ///
  /// If the server returns an error, the state is set to [AsyncError] with the
  /// error and the stack trace.
  ///
  /// The method is marked as `async` because it makes a network call to the server
  /// to load the categories.
  @override
  Future<DiscoverState> build() async {
    /// Initializes the state of the controller to [AsyncData] with a default value
    state = AsyncData(DiscoverState());

    /// Calls the [getFullCategories] method to load the categories from the server
    await getFullCategories();

    /// Returns the state of the controller which is an [AsyncData] object with the
    /// categories loaded from the server.
    return state.requireValue;
  }

  Future<void> getFullCategories() async {
    final getFullCategoriesUseCase = getIt<GetFullCategoriesUseCase>();
    state = const AsyncLoading();
    final response = await getFullCategoriesUseCase.call(const NoParameters());
    response.fold(
      (error) => state = AsyncError(error, StackTrace.current),
      (categories) => state = AsyncData(DiscoverState(categories: categories)),
    );
  }

  /// Selects a category and updates the state accordingly.
  ///
  /// If the selected category is the same as the current one, it deselects it.
  /// Otherwise, it updates the state with the new category and fetches products
  /// for the selected category.
  ///
  /// [category] is the category to be selected.
  void selectCategory(CategoryModel category) {
    // Get the current state of the controller
    final currentState = state.requireValue;

    // Get the currently selected category
    final currentCategory = currentState.selectedCategory;

    // Check if the selected category is the same as the current one
    final isSameCategory = currentCategory?.id == category.id;

    // Update the state with the new selection or deselect if the same category
    state = AsyncData(currentState.copyWith(
        selectedCategory: isSameCategory ? null : category,
        selectedSubCategory: null));

    // Fetch products for the new category if it is different from the current one
    if (!isSameCategory) {
      _fetchProductsByCategory(category.slug);
    } else {
      ref.read(getProductsControllerProvider.notifier).getProducts();
    }
  }

  /// Selects a subcategory and updates the state accordingly.
  ///
  /// If the selected subcategory is the same as the current one, it deselects it.
  /// Otherwise, it updates the state with the new subcategory and fetches products
  /// for the selected subcategory.
  ///
  /// [category] is the subcategory to be selected.
  void selectSubCategory(CategoryModel category) {
    // Get the current state of the controller
    final currentState = state.requireValue;

    // Get the currently selected subcategory
    final currentSubCategory = currentState.selectedSubCategory;

    // Check if the selected subcategory is the same as the current one
    final isSameSubCategory = currentSubCategory?.id == category.id;

    // Update the state with the new selection or deselect if the same subcategory
    state = AsyncData(currentState.copyWith(
      selectedSubCategory: isSameSubCategory ? null : category,
    ));

    // Fetch products for the new subcategory if it is different from the current one
    if (!isSameSubCategory) {
      _fetchProductsByCategory(category.slug);
    }
  }

  /// Fetches products for the given category slug and updates the state accordingly.
  ///
  /// If [categorySlug] is null, it does nothing.
  ///
  /// [categorySlug] is the slug of the category for which products are to be fetched.
  void _fetchProductsByCategory(String? categorySlug) {
    // If the category slug is null, do nothing
    if (categorySlug == null) {
      return;
    }

    // Get the ProductsByCategoriesController for the given category slug
    final productsByCategoriesController =
        ref.read(productsByCategoriesControllerProvider(categorySlug).notifier);

    // Fetch products for the given category slug
    productsByCategoriesController.getProducts(categorySlug);
  }
}

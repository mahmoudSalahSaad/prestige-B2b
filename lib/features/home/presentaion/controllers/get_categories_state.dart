part of 'get_categories_controller.dart';

@freezed
abstract class GetCategoriesState with _$GetCategoriesState {
  factory GetCategoriesState({
    @Default([]) final List<CategoryModel> categories,
  }) = _GetCategoriesState;
}

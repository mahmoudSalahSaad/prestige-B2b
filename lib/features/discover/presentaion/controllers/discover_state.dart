part of 'discover_controller.dart';

@freezed
abstract class DiscoverState with _$DiscoverState {
  factory DiscoverState(
      {@Default([]) final List<CategoryModel> categories,
      final CategoryModel? selectedCategory,
      final CategoryModel? selectedSubCategory,
      final ItemsModel? items}) = _DiscoverState;
}

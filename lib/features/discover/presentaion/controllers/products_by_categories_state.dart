part of 'products_by_categories_controller.dart';

@freezed
abstract class ProductsByCategoriesState with _$ProductsByCategoriesState {
  factory ProductsByCategoriesState({final ItemsModel? items}) =
      _ProductsByCategoriesState;
}

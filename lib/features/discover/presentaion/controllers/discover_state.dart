part of 'discover_controller.dart';

@freezed
abstract class DiscoverState with _$DiscoverState {
  factory DiscoverState(
      {@Default([]) final List<CategoryModel> categories,
      final ItemsModel? items}) = _DiscoverState;
}

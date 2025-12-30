part of 'cities_controller.dart';

@freezed
abstract class CitiesState with _$CitiesState {
  factory CitiesState({
    @Default([]) final List<CityModel>? cities,
    final CityModel? selectedCity,
    @Default(1) final int currentPage,
    @Default(10) final int pageSize,
    @Default(false) final bool hasMoreData,
    @Default(false) final bool isLoadingMore,
  }) = _CitiesState;
}

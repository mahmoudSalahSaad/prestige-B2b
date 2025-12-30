part of 'countries_controller.dart';

@freezed
abstract class CountriesState with _$CountriesState {
  factory CountriesState({
    @Default([]) final List<CityModel>? countries,
    final CityModel? selectedCountry,
    @Default(1) final int currentPage,
    @Default(10) final int pageSize,
    @Default(false) final bool hasMoreData,
    @Default(false) final bool isLoadingMore,
  }) = _CountriesState;
}

part of 'countries_controller.dart';

@freezed
abstract class CountriesState with _$CountriesState {
  factory CountriesState({@Default([]) final List<CityModel>? countries , final CityModel? selectedCountry}) =
      _CountriesState;
}
  
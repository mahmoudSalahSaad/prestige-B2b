part of 'cities_controller.dart';

@freezed
abstract class CitiesState with _$CitiesState {
  factory CitiesState({@Default([]) final List<CityModel>? cities , final CityModel? selectedCity}) =
      _CitiesState;
}

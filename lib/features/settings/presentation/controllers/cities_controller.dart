import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/features/settings/data/models/city_model.dart';
import 'package:shop/features/settings/domain/entities/country_entity.dart';
import 'package:shop/features/settings/domain/usecases/get_cities_use_case.dart';

part 'cities_controller.freezed.dart';
part 'cities_controller.g.dart';
part 'cities_state.dart';

@riverpod
class CitiesController extends _$CitiesController {
  @override
  Future<CitiesState> build() async {
    state = AsyncData(CitiesState());
    return state.requireValue;
  }

  getCities(int countryId) async {
    GetCitiesUseCase getCitiesUseCase = getIt();

    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });

    final result =
        await getCitiesUseCase.call(CountryEntity(id: countryId, name: ''));
    result.fold((l) => state = AsyncError(l, StackTrace.current),
        (r) => state = AsyncData(CitiesState(cities: r)));
  }

  selectCity(CityModel city) {
    state = state.whenData((value) => value.copyWith(selectedCity: city));
    print(state.requireValue);
  }
}

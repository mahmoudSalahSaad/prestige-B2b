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

  getCities(int countryId, {bool loadMore = false}) async {
    GetCitiesUseCase getCitiesUseCase = getIt();

    if (!loadMore) {
      Future.delayed(Duration.zero, () {
        state = const AsyncLoading();
      });
    } else {
      // Set loading more state
      state = state.whenData((value) => value.copyWith(isLoadingMore: true));
    }

    final result =
        await getCitiesUseCase.call(CountryEntity(id: countryId, name: ''));
    result.fold(
      (l) => state = AsyncError(l, StackTrace.current),
      (r) {
        if (loadMore) {
          // Append to existing cities
          final currentCities = state.requireValue.cities ?? [];
          final newCities = [...currentCities, ...r];
          state = AsyncData(CitiesState(
            cities: newCities,
            currentPage: state.requireValue.currentPage + 1,
            hasMoreData: r.length >= state.requireValue.pageSize,
            isLoadingMore: false,
          ));
        } else {
          // Load first page
          state = AsyncData(CitiesState(
            cities: r,
            currentPage: 1,
            hasMoreData: r.length >= 10, // Assuming page size is 10
            isLoadingMore: false,
          ));
        }
      },
    );
  }

  selectCity(CityModel city) {
    state = state.whenData((value) => value.copyWith(selectedCity: city));
    print(state.requireValue);
  }
}

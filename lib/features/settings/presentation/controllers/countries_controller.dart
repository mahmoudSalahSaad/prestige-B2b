import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/features/settings/data/models/city_model.dart';
import 'package:shop/features/settings/domain/usecases/get_countries_use_case.dart';

part 'countries_controller.freezed.dart';
part 'countries_controller.g.dart';
part 'countries_state.dart';

@Riverpod(keepAlive: true)
class CountriesController extends _$CountriesController {
  @override
  Future<CountriesState> build() async {
    state = AsyncData(CountriesState());
    return state.requireValue;
  }

  getCountries() async {
    GetCountriesUseCase getCountriesUseCase = getIt();

    Future.delayed(Duration.zero, () {
      state = const AsyncLoading();
    });

    final result = await getCountriesUseCase.call(const NoParameters());
    result.fold((l) => state = AsyncError(l, StackTrace.current),
        (r) => state = AsyncData(CountriesState(countries: r)));
  }

  selectCountry(CityModel country) {
    state = state.whenData((value) => value.copyWith(selectedCountry: country));
    print(state.requireValue);
  }
}

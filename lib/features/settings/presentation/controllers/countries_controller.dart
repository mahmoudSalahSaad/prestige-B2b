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

  getCountries({bool loadMore = false}) async {
    GetCountriesUseCase getCountriesUseCase = getIt();

    if (!loadMore) {
      if (state.hasValue) {
        state = AsyncData(state.requireValue.copyWith(isLoadingMore: true));
      } else {
        Future.delayed(Duration.zero, () {
          state = const AsyncLoading();
        });
      }
    } else {
      // Set loading more state
      state = state.whenData((value) => value.copyWith(isLoadingMore: true));
    }

    final result = await getCountriesUseCase.call(const NoParameters());
    result.fold((l) => state = AsyncError(l, StackTrace.current), (r) {
      if (loadMore) {
        // Append to existing countries
        final currentCountries = state.requireValue.countries ?? [];
        final newCountries = [...currentCountries, ...r];
        state = AsyncData(
          state.requireValue.copyWith(
            countries: newCountries,
            selectedCountry:
                state.requireValue.selectedCountry ?? newCountries.first,
            currentPage: state.requireValue.currentPage + 1,
            hasMoreData: r.length >= state.requireValue.pageSize,
            isLoadingMore: false,
          ),
        );
      } else {
        // Load first page
        state = AsyncData(
          state.requireValue.copyWith(
            countries: r,
            selectedCountry: state.requireValue.selectedCountry,
            currentPage: 1,
            hasMoreData: r.length >= 10, // Assuming page size is 10
            isLoadingMore: false,
          ),
        );
      }
    });
  }

  selectCountry(CityModel country) {
    state = state.whenData((value) => value.copyWith(selectedCountry: country));
    print(state.requireValue);
  }
}

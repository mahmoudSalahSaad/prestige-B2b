import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/settings/data/models/city_model.dart';
import 'package:shop/features/settings/domain/repo/settings_repo.dart';

import '../../../../core/base/base_usecase.dart';

class GetCountriesUseCase extends BaseUseCase<List<CityModel>, NoParameters> {
  final SettingsRepo settingsRepo;

  GetCountriesUseCase({required this.settingsRepo});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  *
  * */

  @override
  Future<Either<ErrorModel, List<CityModel>>> call(
      NoParameters parameters) async {
    return await settingsRepo.getCountries(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, List<CityModel>>> callTest(
      NoParameters parameters) async {
    return await settingsRepo.getCountries(parameters: parameters);
  }
}

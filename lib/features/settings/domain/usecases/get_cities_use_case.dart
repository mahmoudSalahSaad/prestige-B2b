import 'package:dartz/dartz.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/settings/data/models/city_model.dart';
import 'package:shop/features/settings/domain/entities/country_entity.dart';
import 'package:shop/features/settings/domain/repo/settings_repo.dart';

import '../../../../core/base/base_usecase.dart';

class GetCitiesUseCase extends BaseUseCase<List<CityModel>, CountryEntity> {
  final SettingsRepo settingsRepo;

  GetCitiesUseCase({required this.settingsRepo});
  /*
  * USE CASE
  * base on BaseUseCase
  * have Call and Call Test
  * it could some operation here before sending data to the Bloc // Cubit // provider // Get x provider
  
  * */

  @override
  Future<Either<ErrorModel, List<CityModel>>> call(
      CountryEntity parameters) async {
    return await settingsRepo.getCities(parameters: parameters);
  }

  @override
  Future<Either<ErrorModel, List<CityModel>>> callTest(
      CountryEntity parameters) async {
    return await settingsRepo.getCities(parameters: parameters);
  }
}

import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/settings/data/models/city_model.dart';
import 'package:shop/features/settings/domain/entities/country_entity.dart';

abstract class SettingsRepo {
  Future<Either<ErrorModel, List<CityModel>>> getCountries(
      {required NoParameters parameters});
  Future<Either<ErrorModel, List<CityModel>>> getCities(
      {required CountryEntity parameters});
}

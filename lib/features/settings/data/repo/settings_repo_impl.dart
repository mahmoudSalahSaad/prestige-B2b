import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_response.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/core/services/network/end_points.dart';
import 'package:shop/core/services/network/network_client.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/settings/data/models/city_model.dart';
import 'package:shop/features/settings/domain/entities/country_entity.dart';
import 'package:shop/features/settings/domain/repo/settings_repo.dart';

class SettingsRepoImpl extends SettingsRepo {
  final NetworkClient networkClient;

  SettingsRepoImpl({required this.networkClient});
  @override
  Future<Either<ErrorModel, List<CityModel>>> getCities(
      {required CountryEntity parameters}) async {
    NetworkCallType type = NetworkCallType.get;

    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {},
      url: EndPoints.getCities(parameters.id),
      type: type,
    );
    return result.fold((l) => Left(l), (r) {
      List<CityModel> cities = [];
      for (Map<String, dynamic> item in r.data) {
        cities.add(CityModel.fromJson(item));
      }
      return Right(cities);
    });
  }

  @override
  Future<Either<ErrorModel, List<CityModel>>> getCountries(
      {required NoParameters parameters}) async {
    NetworkCallType type = NetworkCallType.get;

    Either<ErrorModel, BaseResponse> result = await networkClient.call(
      data: {},
      url: EndPoints.getCountries,
      type: type,
    );
    return result.fold((l) => Left(l), (r) {
      List<CityModel> cities = [];
      for (Map<String, dynamic> item in r.data) {
        cities.add(CityModel.fromJson(item));
      }
      return Right(cities);
    });
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    final User? user,
    final AuthrizationModel? authorization,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class User with _$User {
  factory User(
      {final int? id,
      final String? name,
      final String? email,
      final String? role,
      final String? phone,
      final String? address,
      @JsonKey(name: "postal_code") final String? postalCode,
      final String? photo,
      final double? budget,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "budget_start_date") final String? budgetStartDate,
      final String? number,
      @JsonKey(name: "full_address") final String? fullAddress,
      final String? group,
      final CityModel? city,
      final CityModel? country}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class AuthrizationModel with _$AuthrizationModel {
  factory AuthrizationModel({
    final String? token,
  }) = _AuthrizationModel;

  factory AuthrizationModel.fromJson(Map<String, dynamic> json) =>
      _$AuthrizationModelFromJson(json);
}

@freezed
class CityModel with _$CityModel {
  factory CityModel({final int? id, final String? name, final String? slug}) =
      _CityModel;

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);
}

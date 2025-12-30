import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/features/settings/data/models/city_model.dart';

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
      @JsonKey(name: "reset_password_token") final String? resetPasswordToken,
      final String? phone,
      final String? address,
      @JsonKey(name: "postal_code") final String? postalCode,
      final String? photo,
      final double? budget,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "budget_start_date") final String? budgetStartDate,
      final String? number,
      @JsonKey(name: "full_address") final String? fullAddress,
      final Group? group,
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
class Group with _$Group {
  factory Group({
    final int? id,
    final String? name,
    final String? slug,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}

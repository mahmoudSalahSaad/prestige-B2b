import 'package:equatable/equatable.dart';

class AuthEntity extends Equatable {
  final String email;
  final String password;
  final String? confirmPassword;
  final String? name;
  final String? phone;
  final String? address;
  final int? countryId;
  final String? postalCode;
  final int? cityId;
  final String? attachment;

  const AuthEntity({
    required this.email,
    required this.password,
    this.name,
    this.phone,
    this.address,
    this.countryId,
    this.postalCode,
    this.cityId,
    this.attachment,
    this.confirmPassword,
  });
  @override
  List<Object> get props => [email, password];
}

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
  final String? oldPassword;
  final String? otp;
  final String? token;
  final String? companyName;
  final String? groupName;
  final String? vatNumber;

  const AuthEntity({
    required this.email,
    this.token,
    this.oldPassword,
    this.otp,
    required this.password,
    this.name,
    this.phone,
    this.address,
    this.countryId,
    this.postalCode,
    this.cityId,
    this.attachment,
    this.confirmPassword,
    this.companyName,
    this.groupName,
    this.vatNumber,
  });
  @override
  List<Object> get props => [email, password];
}

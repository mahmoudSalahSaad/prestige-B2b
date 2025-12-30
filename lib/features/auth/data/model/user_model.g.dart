// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      authorization: json['authorization'] == null
          ? null
          : AuthrizationModel.fromJson(
              json['authorization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'authorization': instance.authorization,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      resetPasswordToken: json['reset_password_token'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      postalCode: json['postal_code'] as String?,
      photo: json['photo'] as String?,
      budget: (json['budget'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool?,
      budgetStartDate: json['budget_start_date'] as String?,
      number: json['number'] as String?,
      fullAddress: json['full_address'] as String?,
      group: json['group'] == null
          ? null
          : Group.fromJson(json['group'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : CityModel.fromJson(json['city'] as Map<String, dynamic>),
      country: json['country'] == null
          ? null
          : CityModel.fromJson(json['country'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'reset_password_token': instance.resetPasswordToken,
      'phone': instance.phone,
      'address': instance.address,
      'postal_code': instance.postalCode,
      'photo': instance.photo,
      'budget': instance.budget,
      'is_active': instance.isActive,
      'budget_start_date': instance.budgetStartDate,
      'number': instance.number,
      'full_address': instance.fullAddress,
      'group': instance.group,
      'city': instance.city,
      'country': instance.country,
    };

_$AuthrizationModelImpl _$$AuthrizationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthrizationModelImpl(
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$AuthrizationModelImplToJson(
        _$AuthrizationModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

_$GroupImpl _$$GroupImplFromJson(Map<String, dynamic> json) => _$GroupImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$GroupImplToJson(_$GroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
    };

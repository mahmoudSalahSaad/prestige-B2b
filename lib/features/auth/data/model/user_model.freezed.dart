// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  User? get user => throw _privateConstructorUsedError;
  AuthrizationModel? get authorization => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({User? user, AuthrizationModel? authorization});

  $UserCopyWith<$Res>? get user;
  $AuthrizationModelCopyWith<$Res>? get authorization;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? authorization = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      authorization: freezed == authorization
          ? _value.authorization
          : authorization // ignore: cast_nullable_to_non_nullable
              as AuthrizationModel?,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthrizationModelCopyWith<$Res>? get authorization {
    if (_value.authorization == null) {
      return null;
    }

    return $AuthrizationModelCopyWith<$Res>(_value.authorization!, (value) {
      return _then(_value.copyWith(authorization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, AuthrizationModel? authorization});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $AuthrizationModelCopyWith<$Res>? get authorization;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? authorization = freezed,
  }) {
    return _then(_$UserModelImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      authorization: freezed == authorization
          ? _value.authorization
          : authorization // ignore: cast_nullable_to_non_nullable
              as AuthrizationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  _$UserModelImpl({this.user, this.authorization});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final User? user;
  @override
  final AuthrizationModel? authorization;

  @override
  String toString() {
    return 'UserModel(user: $user, authorization: $authorization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.authorization, authorization) ||
                other.authorization == authorization));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, authorization);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {final User? user,
      final AuthrizationModel? authorization}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  User? get user;
  @override
  AuthrizationModel? get authorization;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "postal_code")
  String? get postalCode => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  double? get budget => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "budget_start_date")
  String? get budgetStartDate => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  @JsonKey(name: "full_address")
  String? get fullAddress => throw _privateConstructorUsedError;
  CityModel? get city => throw _privateConstructorUsedError;
  CityModel? get country => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? role,
      String? phone,
      String? address,
      @JsonKey(name: "postal_code") String? postalCode,
      String? photo,
      double? budget,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "budget_start_date") String? budgetStartDate,
      String? number,
      @JsonKey(name: "full_address") String? fullAddress,
      CityModel? city,
      CityModel? country});

  $CityModelCopyWith<$Res>? get city;
  $CityModelCopyWith<$Res>? get country;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? postalCode = freezed,
    Object? photo = freezed,
    Object? budget = freezed,
    Object? isActive = freezed,
    Object? budgetStartDate = freezed,
    Object? number = freezed,
    Object? fullAddress = freezed,
    Object? city = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      budgetStartDate: freezed == budgetStartDate
          ? _value.budgetStartDate
          : budgetStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      fullAddress: freezed == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CityModel?,
    ) as $Val);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get country {
    if (_value.country == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_value.country!, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? email,
      String? role,
      String? phone,
      String? address,
      @JsonKey(name: "postal_code") String? postalCode,
      String? photo,
      double? budget,
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "budget_start_date") String? budgetStartDate,
      String? number,
      @JsonKey(name: "full_address") String? fullAddress,
      CityModel? city,
      CityModel? country});

  @override
  $CityModelCopyWith<$Res>? get city;
  @override
  $CityModelCopyWith<$Res>? get country;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? postalCode = freezed,
    Object? photo = freezed,
    Object? budget = freezed,
    Object? isActive = freezed,
    Object? budgetStartDate = freezed,
    Object? number = freezed,
    Object? fullAddress = freezed,
    Object? city = freezed,
    Object? country = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as double?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      budgetStartDate: freezed == budgetStartDate
          ? _value.budgetStartDate
          : budgetStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      fullAddress: freezed == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CityModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {this.id,
      this.name,
      this.email,
      this.role,
      this.phone,
      this.address,
      @JsonKey(name: "postal_code") this.postalCode,
      this.photo,
      this.budget,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "budget_start_date") this.budgetStartDate,
      this.number,
      @JsonKey(name: "full_address") this.fullAddress,
      this.city,
      this.country});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? role;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  @JsonKey(name: "postal_code")
  final String? postalCode;
  @override
  final String? photo;
  @override
  final double? budget;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "budget_start_date")
  final String? budgetStartDate;
  @override
  final String? number;
  @override
  @JsonKey(name: "full_address")
  final String? fullAddress;
  @override
  final CityModel? city;
  @override
  final CityModel? country;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, role: $role, phone: $phone, address: $address, postalCode: $postalCode, photo: $photo, budget: $budget, isActive: $isActive, budgetStartDate: $budgetStartDate, number: $number, fullAddress: $fullAddress, city: $city, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.budgetStartDate, budgetStartDate) ||
                other.budgetStartDate == budgetStartDate) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.fullAddress, fullAddress) ||
                other.fullAddress == fullAddress) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      email,
      role,
      phone,
      address,
      postalCode,
      photo,
      budget,
      isActive,
      budgetStartDate,
      number,
      fullAddress,
      city,
      country);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
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
      final CityModel? city,
      final CityModel? country}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get role;
  @override
  String? get phone;
  @override
  String? get address;
  @override
  @JsonKey(name: "postal_code")
  String? get postalCode;
  @override
  String? get photo;
  @override
  double? get budget;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "budget_start_date")
  String? get budgetStartDate;
  @override
  String? get number;
  @override
  @JsonKey(name: "full_address")
  String? get fullAddress;
  @override
  CityModel? get city;
  @override
  CityModel? get country;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthrizationModel _$AuthrizationModelFromJson(Map<String, dynamic> json) {
  return _AuthrizationModel.fromJson(json);
}

/// @nodoc
mixin _$AuthrizationModel {
  String? get token => throw _privateConstructorUsedError;

  /// Serializes this AuthrizationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthrizationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthrizationModelCopyWith<AuthrizationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthrizationModelCopyWith<$Res> {
  factory $AuthrizationModelCopyWith(
          AuthrizationModel value, $Res Function(AuthrizationModel) then) =
      _$AuthrizationModelCopyWithImpl<$Res, AuthrizationModel>;
  @useResult
  $Res call({String? token});
}

/// @nodoc
class _$AuthrizationModelCopyWithImpl<$Res, $Val extends AuthrizationModel>
    implements $AuthrizationModelCopyWith<$Res> {
  _$AuthrizationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthrizationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthrizationModelImplCopyWith<$Res>
    implements $AuthrizationModelCopyWith<$Res> {
  factory _$$AuthrizationModelImplCopyWith(_$AuthrizationModelImpl value,
          $Res Function(_$AuthrizationModelImpl) then) =
      __$$AuthrizationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token});
}

/// @nodoc
class __$$AuthrizationModelImplCopyWithImpl<$Res>
    extends _$AuthrizationModelCopyWithImpl<$Res, _$AuthrizationModelImpl>
    implements _$$AuthrizationModelImplCopyWith<$Res> {
  __$$AuthrizationModelImplCopyWithImpl(_$AuthrizationModelImpl _value,
      $Res Function(_$AuthrizationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthrizationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$AuthrizationModelImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthrizationModelImpl implements _AuthrizationModel {
  _$AuthrizationModelImpl({this.token});

  factory _$AuthrizationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthrizationModelImplFromJson(json);

  @override
  final String? token;

  @override
  String toString() {
    return 'AuthrizationModel(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthrizationModelImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of AuthrizationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthrizationModelImplCopyWith<_$AuthrizationModelImpl> get copyWith =>
      __$$AuthrizationModelImplCopyWithImpl<_$AuthrizationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthrizationModelImplToJson(
      this,
    );
  }
}

abstract class _AuthrizationModel implements AuthrizationModel {
  factory _AuthrizationModel({final String? token}) = _$AuthrizationModelImpl;

  factory _AuthrizationModel.fromJson(Map<String, dynamic> json) =
      _$AuthrizationModelImpl.fromJson;

  @override
  String? get token;

  /// Create a copy of AuthrizationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthrizationModelImplCopyWith<_$AuthrizationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

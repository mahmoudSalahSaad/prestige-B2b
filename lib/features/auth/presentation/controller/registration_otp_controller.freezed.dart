// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_otp_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationOtpState {
  String? get phone => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;
  UserModel? get userModel => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationOtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationOtpStateCopyWith<RegistrationOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationOtpStateCopyWith<$Res> {
  factory $RegistrationOtpStateCopyWith(RegistrationOtpState value,
          $Res Function(RegistrationOtpState) then) =
      _$RegistrationOtpStateCopyWithImpl<$Res, RegistrationOtpState>;
  @useResult
  $Res call({String? phone, bool? isVerified, UserModel? userModel});

  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class _$RegistrationOtpStateCopyWithImpl<$Res,
        $Val extends RegistrationOtpState>
    implements $RegistrationOtpStateCopyWith<$Res> {
  _$RegistrationOtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationOtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? isVerified = freezed,
    Object? userModel = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  /// Create a copy of RegistrationOtpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userModel {
    if (_value.userModel == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userModel!, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationOtpStateImplCopyWith<$Res>
    implements $RegistrationOtpStateCopyWith<$Res> {
  factory _$$RegistrationOtpStateImplCopyWith(_$RegistrationOtpStateImpl value,
          $Res Function(_$RegistrationOtpStateImpl) then) =
      __$$RegistrationOtpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? phone, bool? isVerified, UserModel? userModel});

  @override
  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class __$$RegistrationOtpStateImplCopyWithImpl<$Res>
    extends _$RegistrationOtpStateCopyWithImpl<$Res, _$RegistrationOtpStateImpl>
    implements _$$RegistrationOtpStateImplCopyWith<$Res> {
  __$$RegistrationOtpStateImplCopyWithImpl(_$RegistrationOtpStateImpl _value,
      $Res Function(_$RegistrationOtpStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationOtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? isVerified = freezed,
    Object? userModel = freezed,
  }) {
    return _then(_$RegistrationOtpStateImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$RegistrationOtpStateImpl implements _RegistrationOtpState {
  _$RegistrationOtpStateImpl({this.phone, this.isVerified, this.userModel});

  @override
  final String? phone;
  @override
  final bool? isVerified;
  @override
  final UserModel? userModel;

  @override
  String toString() {
    return 'RegistrationOtpState(phone: $phone, isVerified: $isVerified, userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationOtpStateImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, isVerified, userModel);

  /// Create a copy of RegistrationOtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationOtpStateImplCopyWith<_$RegistrationOtpStateImpl>
      get copyWith =>
          __$$RegistrationOtpStateImplCopyWithImpl<_$RegistrationOtpStateImpl>(
              this, _$identity);
}

abstract class _RegistrationOtpState implements RegistrationOtpState {
  factory _RegistrationOtpState(
      {final String? phone,
      final bool? isVerified,
      final UserModel? userModel}) = _$RegistrationOtpStateImpl;

  @override
  String? get phone;
  @override
  bool? get isVerified;
  @override
  UserModel? get userModel;

  /// Create a copy of RegistrationOtpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationOtpStateImplCopyWith<_$RegistrationOtpStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_address_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddAddressState {
  AddressModel? get address => throw _privateConstructorUsedError;

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddAddressStateCopyWith<AddAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddAddressStateCopyWith<$Res> {
  factory $AddAddressStateCopyWith(
          AddAddressState value, $Res Function(AddAddressState) then) =
      _$AddAddressStateCopyWithImpl<$Res, AddAddressState>;
  @useResult
  $Res call({AddressModel? address});

  $AddressModelCopyWith<$Res>? get address;
}

/// @nodoc
class _$AddAddressStateCopyWithImpl<$Res, $Val extends AddAddressState>
    implements $AddAddressStateCopyWith<$Res> {
  _$AddAddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
    ) as $Val);
  }

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressModelCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddAddressStateImplCopyWith<$Res>
    implements $AddAddressStateCopyWith<$Res> {
  factory _$$AddAddressStateImplCopyWith(_$AddAddressStateImpl value,
          $Res Function(_$AddAddressStateImpl) then) =
      __$$AddAddressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressModel? address});

  @override
  $AddressModelCopyWith<$Res>? get address;
}

/// @nodoc
class __$$AddAddressStateImplCopyWithImpl<$Res>
    extends _$AddAddressStateCopyWithImpl<$Res, _$AddAddressStateImpl>
    implements _$$AddAddressStateImplCopyWith<$Res> {
  __$$AddAddressStateImplCopyWithImpl(
      _$AddAddressStateImpl _value, $Res Function(_$AddAddressStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_$AddAddressStateImpl(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
    ));
  }
}

/// @nodoc

class _$AddAddressStateImpl implements _AddAddressState {
  _$AddAddressStateImpl({this.address});

  @override
  final AddressModel? address;

  @override
  String toString() {
    return 'AddAddressState(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddressStateImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressStateImplCopyWith<_$AddAddressStateImpl> get copyWith =>
      __$$AddAddressStateImplCopyWithImpl<_$AddAddressStateImpl>(
          this, _$identity);
}

abstract class _AddAddressState implements AddAddressState {
  factory _AddAddressState({final AddressModel? address}) =
      _$AddAddressStateImpl;

  @override
  AddressModel? get address;

  /// Create a copy of AddAddressState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddAddressStateImplCopyWith<_$AddAddressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

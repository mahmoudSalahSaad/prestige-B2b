// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_details_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsDetailsState {
  PoductDetailsModel? get productDetails => throw _privateConstructorUsedError;

  /// Create a copy of ProductsDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsDetailsStateCopyWith<ProductsDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsDetailsStateCopyWith<$Res> {
  factory $ProductsDetailsStateCopyWith(ProductsDetailsState value,
          $Res Function(ProductsDetailsState) then) =
      _$ProductsDetailsStateCopyWithImpl<$Res, ProductsDetailsState>;
  @useResult
  $Res call({PoductDetailsModel? productDetails});

  $PoductDetailsModelCopyWith<$Res>? get productDetails;
}

/// @nodoc
class _$ProductsDetailsStateCopyWithImpl<$Res,
        $Val extends ProductsDetailsState>
    implements $ProductsDetailsStateCopyWith<$Res> {
  _$ProductsDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productDetails = freezed,
  }) {
    return _then(_value.copyWith(
      productDetails: freezed == productDetails
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as PoductDetailsModel?,
    ) as $Val);
  }

  /// Create a copy of ProductsDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PoductDetailsModelCopyWith<$Res>? get productDetails {
    if (_value.productDetails == null) {
      return null;
    }

    return $PoductDetailsModelCopyWith<$Res>(_value.productDetails!, (value) {
      return _then(_value.copyWith(productDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsDetailsStateImplCopyWith<$Res>
    implements $ProductsDetailsStateCopyWith<$Res> {
  factory _$$ProductsDetailsStateImplCopyWith(_$ProductsDetailsStateImpl value,
          $Res Function(_$ProductsDetailsStateImpl) then) =
      __$$ProductsDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PoductDetailsModel? productDetails});

  @override
  $PoductDetailsModelCopyWith<$Res>? get productDetails;
}

/// @nodoc
class __$$ProductsDetailsStateImplCopyWithImpl<$Res>
    extends _$ProductsDetailsStateCopyWithImpl<$Res, _$ProductsDetailsStateImpl>
    implements _$$ProductsDetailsStateImplCopyWith<$Res> {
  __$$ProductsDetailsStateImplCopyWithImpl(_$ProductsDetailsStateImpl _value,
      $Res Function(_$ProductsDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productDetails = freezed,
  }) {
    return _then(_$ProductsDetailsStateImpl(
      productDetails: freezed == productDetails
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as PoductDetailsModel?,
    ));
  }
}

/// @nodoc

class _$ProductsDetailsStateImpl implements _ProductsDetailsState {
  _$ProductsDetailsStateImpl({this.productDetails});

  @override
  final PoductDetailsModel? productDetails;

  @override
  String toString() {
    return 'ProductsDetailsState(productDetails: $productDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsDetailsStateImpl &&
            (identical(other.productDetails, productDetails) ||
                other.productDetails == productDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productDetails);

  /// Create a copy of ProductsDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsDetailsStateImplCopyWith<_$ProductsDetailsStateImpl>
      get copyWith =>
          __$$ProductsDetailsStateImplCopyWithImpl<_$ProductsDetailsStateImpl>(
              this, _$identity);
}

abstract class _ProductsDetailsState implements ProductsDetailsState {
  factory _ProductsDetailsState({final PoductDetailsModel? productDetails}) =
      _$ProductsDetailsStateImpl;

  @override
  PoductDetailsModel? get productDetails;

  /// Create a copy of ProductsDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsDetailsStateImplCopyWith<_$ProductsDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

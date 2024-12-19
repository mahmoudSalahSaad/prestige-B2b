// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_products_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetProductsState {
  List<ProductModels> get products => throw _privateConstructorUsedError;

  /// Create a copy of GetProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetProductsStateCopyWith<GetProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProductsStateCopyWith<$Res> {
  factory $GetProductsStateCopyWith(
          GetProductsState value, $Res Function(GetProductsState) then) =
      _$GetProductsStateCopyWithImpl<$Res, GetProductsState>;
  @useResult
  $Res call({List<ProductModels> products});
}

/// @nodoc
class _$GetProductsStateCopyWithImpl<$Res, $Val extends GetProductsState>
    implements $GetProductsStateCopyWith<$Res> {
  _$GetProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModels>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProductsStateImplCopyWith<$Res>
    implements $GetProductsStateCopyWith<$Res> {
  factory _$$GetProductsStateImplCopyWith(_$GetProductsStateImpl value,
          $Res Function(_$GetProductsStateImpl) then) =
      __$$GetProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModels> products});
}

/// @nodoc
class __$$GetProductsStateImplCopyWithImpl<$Res>
    extends _$GetProductsStateCopyWithImpl<$Res, _$GetProductsStateImpl>
    implements _$$GetProductsStateImplCopyWith<$Res> {
  __$$GetProductsStateImplCopyWithImpl(_$GetProductsStateImpl _value,
      $Res Function(_$GetProductsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$GetProductsStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModels>,
    ));
  }
}

/// @nodoc

class _$GetProductsStateImpl implements _GetProductsState {
  _$GetProductsStateImpl({final List<ProductModels> products = const []})
      : _products = products;

  final List<ProductModels> _products;
  @override
  @JsonKey()
  List<ProductModels> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'GetProductsState(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of GetProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsStateImplCopyWith<_$GetProductsStateImpl> get copyWith =>
      __$$GetProductsStateImplCopyWithImpl<_$GetProductsStateImpl>(
          this, _$identity);
}

abstract class _GetProductsState implements GetProductsState {
  factory _GetProductsState({final List<ProductModels> products}) =
      _$GetProductsStateImpl;

  @override
  List<ProductModels> get products;

  /// Create a copy of GetProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductsStateImplCopyWith<_$GetProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

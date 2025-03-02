// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "shipping_amount")
  double? get shippingAmount => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "promotion_discount")
  double? get promotionDiscount => throw _privateConstructorUsedError;
  List<CartProducts>? get items => throw _privateConstructorUsedError;

  /// Serializes this CartModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "shipping_amount") double? shippingAmount,
      double? discount,
      double? total,
      @JsonKey(name: "promotion_discount") double? promotionDiscount,
      List<CartProducts>? items});
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? shippingAmount = freezed,
    Object? discount = freezed,
    Object? total = freezed,
    Object? promotionDiscount = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingAmount: freezed == shippingAmount
          ? _value.shippingAmount
          : shippingAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      promotionDiscount: freezed == promotionDiscount
          ? _value.promotionDiscount
          : promotionDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartProducts>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartModelImplCopyWith<$Res>
    implements $CartModelCopyWith<$Res> {
  factory _$$CartModelImplCopyWith(
          _$CartModelImpl value, $Res Function(_$CartModelImpl) then) =
      __$$CartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "shipping_amount") double? shippingAmount,
      double? discount,
      double? total,
      @JsonKey(name: "promotion_discount") double? promotionDiscount,
      List<CartProducts>? items});
}

/// @nodoc
class __$$CartModelImplCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$CartModelImpl>
    implements _$$CartModelImplCopyWith<$Res> {
  __$$CartModelImplCopyWithImpl(
      _$CartModelImpl _value, $Res Function(_$CartModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? shippingAmount = freezed,
    Object? discount = freezed,
    Object? total = freezed,
    Object? promotionDiscount = freezed,
    Object? items = freezed,
  }) {
    return _then(_$CartModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      shippingAmount: freezed == shippingAmount
          ? _value.shippingAmount
          : shippingAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      promotionDiscount: freezed == promotionDiscount
          ? _value.promotionDiscount
          : promotionDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartProducts>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartModelImpl implements _CartModel {
  _$CartModelImpl(
      {this.id,
      @JsonKey(name: "shipping_amount") this.shippingAmount,
      this.discount,
      this.total,
      @JsonKey(name: "promotion_discount") this.promotionDiscount,
      final List<CartProducts>? items = const []})
      : _items = items;

  factory _$CartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "shipping_amount")
  final double? shippingAmount;
  @override
  final double? discount;
  @override
  final double? total;
  @override
  @JsonKey(name: "promotion_discount")
  final double? promotionDiscount;
  final List<CartProducts>? _items;
  @override
  @JsonKey()
  List<CartProducts>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartModel(id: $id, shippingAmount: $shippingAmount, discount: $discount, total: $total, promotionDiscount: $promotionDiscount, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.shippingAmount, shippingAmount) ||
                other.shippingAmount == shippingAmount) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.promotionDiscount, promotionDiscount) ||
                other.promotionDiscount == promotionDiscount) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, shippingAmount, discount,
      total, promotionDiscount, const DeepCollectionEquality().hash(_items));

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      __$$CartModelImplCopyWithImpl<_$CartModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartModelImplToJson(
      this,
    );
  }
}

abstract class _CartModel implements CartModel {
  factory _CartModel(
      {final int? id,
      @JsonKey(name: "shipping_amount") final double? shippingAmount,
      final double? discount,
      final double? total,
      @JsonKey(name: "promotion_discount") final double? promotionDiscount,
      final List<CartProducts>? items}) = _$CartModelImpl;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$CartModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "shipping_amount")
  double? get shippingAmount;
  @override
  double? get discount;
  @override
  double? get total;
  @override
  @JsonKey(name: "promotion_discount")
  double? get promotionDiscount;
  @override
  List<CartProducts>? get items;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartProducts _$CartProductsFromJson(Map<String, dynamic> json) {
  return _CartProducts.fromJson(json);
}

/// @nodoc
mixin _$CartProducts {
  int? get id => throw _privateConstructorUsedError;
  ProductModels? get product => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "regular_price")
  double? get regularPrice => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  @JsonKey(name: "variation_id")
  int? get variationId => throw _privateConstructorUsedError;

  /// Serializes this CartProducts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartProductsCopyWith<CartProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductsCopyWith<$Res> {
  factory $CartProductsCopyWith(
          CartProducts value, $Res Function(CartProducts) then) =
      _$CartProductsCopyWithImpl<$Res, CartProducts>;
  @useResult
  $Res call(
      {int? id,
      ProductModels? product,
      int? quantity,
      double? price,
      @JsonKey(name: "regular_price") double? regularPrice,
      double? total,
      @JsonKey(name: "variation_id") int? variationId});

  $ProductModelsCopyWith<$Res>? get product;
}

/// @nodoc
class _$CartProductsCopyWithImpl<$Res, $Val extends CartProducts>
    implements $CartProductsCopyWith<$Res> {
  _$CartProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? regularPrice = freezed,
    Object? total = freezed,
    Object? variationId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModels?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      variationId: freezed == variationId
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of CartProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelsCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelsCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartProductsImplCopyWith<$Res>
    implements $CartProductsCopyWith<$Res> {
  factory _$$CartProductsImplCopyWith(
          _$CartProductsImpl value, $Res Function(_$CartProductsImpl) then) =
      __$$CartProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      ProductModels? product,
      int? quantity,
      double? price,
      @JsonKey(name: "regular_price") double? regularPrice,
      double? total,
      @JsonKey(name: "variation_id") int? variationId});

  @override
  $ProductModelsCopyWith<$Res>? get product;
}

/// @nodoc
class __$$CartProductsImplCopyWithImpl<$Res>
    extends _$CartProductsCopyWithImpl<$Res, _$CartProductsImpl>
    implements _$$CartProductsImplCopyWith<$Res> {
  __$$CartProductsImplCopyWithImpl(
      _$CartProductsImpl _value, $Res Function(_$CartProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? regularPrice = freezed,
    Object? total = freezed,
    Object? variationId = freezed,
  }) {
    return _then(_$CartProductsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModels?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      regularPrice: freezed == regularPrice
          ? _value.regularPrice
          : regularPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      variationId: freezed == variationId
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartProductsImpl implements _CartProducts {
  _$CartProductsImpl(
      {this.id,
      this.product,
      this.quantity,
      this.price,
      @JsonKey(name: "regular_price") this.regularPrice,
      this.total,
      @JsonKey(name: "variation_id") this.variationId});

  factory _$CartProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartProductsImplFromJson(json);

  @override
  final int? id;
  @override
  final ProductModels? product;
  @override
  final int? quantity;
  @override
  final double? price;
  @override
  @JsonKey(name: "regular_price")
  final double? regularPrice;
  @override
  final double? total;
  @override
  @JsonKey(name: "variation_id")
  final int? variationId;

  @override
  String toString() {
    return 'CartProducts(id: $id, product: $product, quantity: $quantity, price: $price, regularPrice: $regularPrice, total: $total, variationId: $variationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.regularPrice, regularPrice) ||
                other.regularPrice == regularPrice) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.variationId, variationId) ||
                other.variationId == variationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, product, quantity, price,
      regularPrice, total, variationId);

  /// Create a copy of CartProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductsImplCopyWith<_$CartProductsImpl> get copyWith =>
      __$$CartProductsImplCopyWithImpl<_$CartProductsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartProductsImplToJson(
      this,
    );
  }
}

abstract class _CartProducts implements CartProducts {
  factory _CartProducts(
          {final int? id,
          final ProductModels? product,
          final int? quantity,
          final double? price,
          @JsonKey(name: "regular_price") final double? regularPrice,
          final double? total,
          @JsonKey(name: "variation_id") final int? variationId}) =
      _$CartProductsImpl;

  factory _CartProducts.fromJson(Map<String, dynamic> json) =
      _$CartProductsImpl.fromJson;

  @override
  int? get id;
  @override
  ProductModels? get product;
  @override
  int? get quantity;
  @override
  double? get price;
  @override
  @JsonKey(name: "regular_price")
  double? get regularPrice;
  @override
  double? get total;
  @override
  @JsonKey(name: "variation_id")
  int? get variationId;

  /// Create a copy of CartProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartProductsImplCopyWith<_$CartProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

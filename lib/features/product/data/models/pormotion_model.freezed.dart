// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pormotion_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PormotionModel _$PormotionModelFromJson(Map<String, dynamic> json) {
  return _PormotionModel.fromJson(json);
}

/// @nodoc
mixin _$PormotionModel {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  String? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "min_items")
  double? get minItems => throw _privateConstructorUsedError;
  @JsonKey(name: "min_amount")
  double? get minAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "min_categories")
  double? get minCategories => throw _privateConstructorUsedError;
  @JsonKey(name: "group_id")
  int? get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "xy_offer")
  XYOffer? get xYOffer => throw _privateConstructorUsedError;

  /// Serializes this PormotionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PormotionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PormotionModelCopyWith<PormotionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PormotionModelCopyWith<$Res> {
  factory $PormotionModelCopyWith(
          PormotionModel value, $Res Function(PormotionModel) then) =
      _$PormotionModelCopyWithImpl<$Res, PormotionModel>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? type,
      double? discount,
      @JsonKey(name: "start_date") String? startDate,
      @JsonKey(name: "end_date") String? endDate,
      @JsonKey(name: "min_items") double? minItems,
      @JsonKey(name: "min_amount") double? minAmount,
      @JsonKey(name: "min_categories") double? minCategories,
      @JsonKey(name: "group_id") int? groupId,
      @JsonKey(name: "xy_offer") XYOffer? xYOffer});

  $XYOfferCopyWith<$Res>? get xYOffer;
}

/// @nodoc
class _$PormotionModelCopyWithImpl<$Res, $Val extends PormotionModel>
    implements $PormotionModelCopyWith<$Res> {
  _$PormotionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PormotionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? discount = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? minItems = freezed,
    Object? minAmount = freezed,
    Object? minCategories = freezed,
    Object? groupId = freezed,
    Object? xYOffer = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      minItems: freezed == minItems
          ? _value.minItems
          : minItems // ignore: cast_nullable_to_non_nullable
              as double?,
      minAmount: freezed == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      minCategories: freezed == minCategories
          ? _value.minCategories
          : minCategories // ignore: cast_nullable_to_non_nullable
              as double?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      xYOffer: freezed == xYOffer
          ? _value.xYOffer
          : xYOffer // ignore: cast_nullable_to_non_nullable
              as XYOffer?,
    ) as $Val);
  }

  /// Create a copy of PormotionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $XYOfferCopyWith<$Res>? get xYOffer {
    if (_value.xYOffer == null) {
      return null;
    }

    return $XYOfferCopyWith<$Res>(_value.xYOffer!, (value) {
      return _then(_value.copyWith(xYOffer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PormotionModelImplCopyWith<$Res>
    implements $PormotionModelCopyWith<$Res> {
  factory _$$PormotionModelImplCopyWith(_$PormotionModelImpl value,
          $Res Function(_$PormotionModelImpl) then) =
      __$$PormotionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      String? type,
      double? discount,
      @JsonKey(name: "start_date") String? startDate,
      @JsonKey(name: "end_date") String? endDate,
      @JsonKey(name: "min_items") double? minItems,
      @JsonKey(name: "min_amount") double? minAmount,
      @JsonKey(name: "min_categories") double? minCategories,
      @JsonKey(name: "group_id") int? groupId,
      @JsonKey(name: "xy_offer") XYOffer? xYOffer});

  @override
  $XYOfferCopyWith<$Res>? get xYOffer;
}

/// @nodoc
class __$$PormotionModelImplCopyWithImpl<$Res>
    extends _$PormotionModelCopyWithImpl<$Res, _$PormotionModelImpl>
    implements _$$PormotionModelImplCopyWith<$Res> {
  __$$PormotionModelImplCopyWithImpl(
      _$PormotionModelImpl _value, $Res Function(_$PormotionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PormotionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? discount = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? minItems = freezed,
    Object? minAmount = freezed,
    Object? minCategories = freezed,
    Object? groupId = freezed,
    Object? xYOffer = freezed,
  }) {
    return _then(_$PormotionModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      minItems: freezed == minItems
          ? _value.minItems
          : minItems // ignore: cast_nullable_to_non_nullable
              as double?,
      minAmount: freezed == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      minCategories: freezed == minCategories
          ? _value.minCategories
          : minCategories // ignore: cast_nullable_to_non_nullable
              as double?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int?,
      xYOffer: freezed == xYOffer
          ? _value.xYOffer
          : xYOffer // ignore: cast_nullable_to_non_nullable
              as XYOffer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PormotionModelImpl implements _PormotionModel {
  _$PormotionModelImpl(
      {this.name,
      this.description,
      this.type,
      this.discount,
      @JsonKey(name: "start_date") this.startDate,
      @JsonKey(name: "end_date") this.endDate,
      @JsonKey(name: "min_items") this.minItems,
      @JsonKey(name: "min_amount") this.minAmount,
      @JsonKey(name: "min_categories") this.minCategories,
      @JsonKey(name: "group_id") this.groupId,
      @JsonKey(name: "xy_offer") this.xYOffer});

  factory _$PormotionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PormotionModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? type;
  @override
  final double? discount;
  @override
  @JsonKey(name: "start_date")
  final String? startDate;
  @override
  @JsonKey(name: "end_date")
  final String? endDate;
  @override
  @JsonKey(name: "min_items")
  final double? minItems;
  @override
  @JsonKey(name: "min_amount")
  final double? minAmount;
  @override
  @JsonKey(name: "min_categories")
  final double? minCategories;
  @override
  @JsonKey(name: "group_id")
  final int? groupId;
  @override
  @JsonKey(name: "xy_offer")
  final XYOffer? xYOffer;

  @override
  String toString() {
    return 'PormotionModel(name: $name, description: $description, type: $type, discount: $discount, startDate: $startDate, endDate: $endDate, minItems: $minItems, minAmount: $minAmount, minCategories: $minCategories, groupId: $groupId, xYOffer: $xYOffer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PormotionModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.minItems, minItems) ||
                other.minItems == minItems) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.minCategories, minCategories) ||
                other.minCategories == minCategories) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.xYOffer, xYOffer) || other.xYOffer == xYOffer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      type,
      discount,
      startDate,
      endDate,
      minItems,
      minAmount,
      minCategories,
      groupId,
      xYOffer);

  /// Create a copy of PormotionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PormotionModelImplCopyWith<_$PormotionModelImpl> get copyWith =>
      __$$PormotionModelImplCopyWithImpl<_$PormotionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PormotionModelImplToJson(
      this,
    );
  }
}

abstract class _PormotionModel implements PormotionModel {
  factory _PormotionModel(
          {final String? name,
          final String? description,
          final String? type,
          final double? discount,
          @JsonKey(name: "start_date") final String? startDate,
          @JsonKey(name: "end_date") final String? endDate,
          @JsonKey(name: "min_items") final double? minItems,
          @JsonKey(name: "min_amount") final double? minAmount,
          @JsonKey(name: "min_categories") final double? minCategories,
          @JsonKey(name: "group_id") final int? groupId,
          @JsonKey(name: "xy_offer") final XYOffer? xYOffer}) =
      _$PormotionModelImpl;

  factory _PormotionModel.fromJson(Map<String, dynamic> json) =
      _$PormotionModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get type;
  @override
  double? get discount;
  @override
  @JsonKey(name: "start_date")
  String? get startDate;
  @override
  @JsonKey(name: "end_date")
  String? get endDate;
  @override
  @JsonKey(name: "min_items")
  double? get minItems;
  @override
  @JsonKey(name: "min_amount")
  double? get minAmount;
  @override
  @JsonKey(name: "min_categories")
  double? get minCategories;
  @override
  @JsonKey(name: "group_id")
  int? get groupId;
  @override
  @JsonKey(name: "xy_offer")
  XYOffer? get xYOffer;

  /// Create a copy of PormotionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PormotionModelImplCopyWith<_$PormotionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

XYOffer _$XYOfferFromJson(Map<String, dynamic> json) {
  return _XYOffer.fromJson(json);
}

/// @nodoc
mixin _$XYOffer {
  @JsonKey(name: "buy_quantity")
  int? get buyQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "get_quantity")
  int? get getQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "get_product")
  ProductModels? get getProduct => throw _privateConstructorUsedError;

  /// Serializes this XYOffer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of XYOffer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $XYOfferCopyWith<XYOffer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XYOfferCopyWith<$Res> {
  factory $XYOfferCopyWith(XYOffer value, $Res Function(XYOffer) then) =
      _$XYOfferCopyWithImpl<$Res, XYOffer>;
  @useResult
  $Res call(
      {@JsonKey(name: "buy_quantity") int? buyQuantity,
      @JsonKey(name: "get_quantity") int? getQuantity,
      @JsonKey(name: "get_product") ProductModels? getProduct});

  $ProductModelsCopyWith<$Res>? get getProduct;
}

/// @nodoc
class _$XYOfferCopyWithImpl<$Res, $Val extends XYOffer>
    implements $XYOfferCopyWith<$Res> {
  _$XYOfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of XYOffer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyQuantity = freezed,
    Object? getQuantity = freezed,
    Object? getProduct = freezed,
  }) {
    return _then(_value.copyWith(
      buyQuantity: freezed == buyQuantity
          ? _value.buyQuantity
          : buyQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      getQuantity: freezed == getQuantity
          ? _value.getQuantity
          : getQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      getProduct: freezed == getProduct
          ? _value.getProduct
          : getProduct // ignore: cast_nullable_to_non_nullable
              as ProductModels?,
    ) as $Val);
  }

  /// Create a copy of XYOffer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelsCopyWith<$Res>? get getProduct {
    if (_value.getProduct == null) {
      return null;
    }

    return $ProductModelsCopyWith<$Res>(_value.getProduct!, (value) {
      return _then(_value.copyWith(getProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$XYOfferImplCopyWith<$Res> implements $XYOfferCopyWith<$Res> {
  factory _$$XYOfferImplCopyWith(
          _$XYOfferImpl value, $Res Function(_$XYOfferImpl) then) =
      __$$XYOfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "buy_quantity") int? buyQuantity,
      @JsonKey(name: "get_quantity") int? getQuantity,
      @JsonKey(name: "get_product") ProductModels? getProduct});

  @override
  $ProductModelsCopyWith<$Res>? get getProduct;
}

/// @nodoc
class __$$XYOfferImplCopyWithImpl<$Res>
    extends _$XYOfferCopyWithImpl<$Res, _$XYOfferImpl>
    implements _$$XYOfferImplCopyWith<$Res> {
  __$$XYOfferImplCopyWithImpl(
      _$XYOfferImpl _value, $Res Function(_$XYOfferImpl) _then)
      : super(_value, _then);

  /// Create a copy of XYOffer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyQuantity = freezed,
    Object? getQuantity = freezed,
    Object? getProduct = freezed,
  }) {
    return _then(_$XYOfferImpl(
      buyQuantity: freezed == buyQuantity
          ? _value.buyQuantity
          : buyQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      getQuantity: freezed == getQuantity
          ? _value.getQuantity
          : getQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      getProduct: freezed == getProduct
          ? _value.getProduct
          : getProduct // ignore: cast_nullable_to_non_nullable
              as ProductModels?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$XYOfferImpl implements _XYOffer {
  _$XYOfferImpl(
      {@JsonKey(name: "buy_quantity") this.buyQuantity,
      @JsonKey(name: "get_quantity") this.getQuantity,
      @JsonKey(name: "get_product") this.getProduct});

  factory _$XYOfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$XYOfferImplFromJson(json);

  @override
  @JsonKey(name: "buy_quantity")
  final int? buyQuantity;
  @override
  @JsonKey(name: "get_quantity")
  final int? getQuantity;
  @override
  @JsonKey(name: "get_product")
  final ProductModels? getProduct;

  @override
  String toString() {
    return 'XYOffer(buyQuantity: $buyQuantity, getQuantity: $getQuantity, getProduct: $getProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XYOfferImpl &&
            (identical(other.buyQuantity, buyQuantity) ||
                other.buyQuantity == buyQuantity) &&
            (identical(other.getQuantity, getQuantity) ||
                other.getQuantity == getQuantity) &&
            (identical(other.getProduct, getProduct) ||
                other.getProduct == getProduct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, buyQuantity, getQuantity, getProduct);

  /// Create a copy of XYOffer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$XYOfferImplCopyWith<_$XYOfferImpl> get copyWith =>
      __$$XYOfferImplCopyWithImpl<_$XYOfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$XYOfferImplToJson(
      this,
    );
  }
}

abstract class _XYOffer implements XYOffer {
  factory _XYOffer(
          {@JsonKey(name: "buy_quantity") final int? buyQuantity,
          @JsonKey(name: "get_quantity") final int? getQuantity,
          @JsonKey(name: "get_product") final ProductModels? getProduct}) =
      _$XYOfferImpl;

  factory _XYOffer.fromJson(Map<String, dynamic> json) = _$XYOfferImpl.fromJson;

  @override
  @JsonKey(name: "buy_quantity")
  int? get buyQuantity;
  @override
  @JsonKey(name: "get_quantity")
  int? get getQuantity;
  @override
  @JsonKey(name: "get_product")
  ProductModels? get getProduct;

  /// Create a copy of XYOffer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$XYOfferImplCopyWith<_$XYOfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

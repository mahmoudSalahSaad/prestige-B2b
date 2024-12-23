// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemsModel _$ItemsModelFromJson(Map<String, dynamic> json) {
  return _ItemsModel.fromJson(json);
}

/// @nodoc
mixin _$ItemsModel {
  List<ProductModels>? get items => throw _privateConstructorUsedError;

  /// Serializes this ItemsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemsModelCopyWith<ItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsModelCopyWith<$Res> {
  factory $ItemsModelCopyWith(
          ItemsModel value, $Res Function(ItemsModel) then) =
      _$ItemsModelCopyWithImpl<$Res, ItemsModel>;
  @useResult
  $Res call({List<ProductModels>? items});
}

/// @nodoc
class _$ItemsModelCopyWithImpl<$Res, $Val extends ItemsModel>
    implements $ItemsModelCopyWith<$Res> {
  _$ItemsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductModels>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemsModelImplCopyWith<$Res>
    implements $ItemsModelCopyWith<$Res> {
  factory _$$ItemsModelImplCopyWith(
          _$ItemsModelImpl value, $Res Function(_$ItemsModelImpl) then) =
      __$$ItemsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductModels>? items});
}

/// @nodoc
class __$$ItemsModelImplCopyWithImpl<$Res>
    extends _$ItemsModelCopyWithImpl<$Res, _$ItemsModelImpl>
    implements _$$ItemsModelImplCopyWith<$Res> {
  __$$ItemsModelImplCopyWithImpl(
      _$ItemsModelImpl _value, $Res Function(_$ItemsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$ItemsModelImpl(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ProductModels>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemsModelImpl implements _ItemsModel {
  _$ItemsModelImpl({final List<ProductModels>? items}) : _items = items;

  factory _$ItemsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemsModelImplFromJson(json);

  final List<ProductModels>? _items;
  @override
  List<ProductModels>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ItemsModel(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of ItemsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsModelImplCopyWith<_$ItemsModelImpl> get copyWith =>
      __$$ItemsModelImplCopyWithImpl<_$ItemsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemsModelImplToJson(
      this,
    );
  }
}

abstract class _ItemsModel implements ItemsModel {
  factory _ItemsModel({final List<ProductModels>? items}) = _$ItemsModelImpl;

  factory _ItemsModel.fromJson(Map<String, dynamic> json) =
      _$ItemsModelImpl.fromJson;

  @override
  List<ProductModels>? get items;

  /// Create a copy of ItemsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemsModelImplCopyWith<_$ItemsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductModels _$ProductModelsFromJson(Map<String, dynamic> json) {
  return _ProductModels.fromJson(json);
}

/// @nodoc
mixin _$ProductModels {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonValue('short_description')
  String? get shortDescription => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  PriceModel? get price => throw _privateConstructorUsedError;

  /// Serializes this ProductModels to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelsCopyWith<ProductModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelsCopyWith<$Res> {
  factory $ProductModelsCopyWith(
          ProductModels value, $Res Function(ProductModels) then) =
      _$ProductModelsCopyWithImpl<$Res, ProductModels>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonValue('short_description') String? shortDescription,
      String? thumbnail,
      String? slug,
      PriceModel? price});

  $PriceModelCopyWith<$Res>? get price;
}

/// @nodoc
class _$ProductModelsCopyWithImpl<$Res, $Val extends ProductModels>
    implements $ProductModelsCopyWith<$Res> {
  _$ProductModelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? shortDescription = freezed,
    Object? thumbnail = freezed,
    Object? slug = freezed,
    Object? price = freezed,
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
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceModel?,
    ) as $Val);
  }

  /// Create a copy of ProductModels
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceModelCopyWith<$Res>? get price {
    if (_value.price == null) {
      return null;
    }

    return $PriceModelCopyWith<$Res>(_value.price!, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelsImplCopyWith<$Res>
    implements $ProductModelsCopyWith<$Res> {
  factory _$$ProductModelsImplCopyWith(
          _$ProductModelsImpl value, $Res Function(_$ProductModelsImpl) then) =
      __$$ProductModelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonValue('short_description') String? shortDescription,
      String? thumbnail,
      String? slug,
      PriceModel? price});

  @override
  $PriceModelCopyWith<$Res>? get price;
}

/// @nodoc
class __$$ProductModelsImplCopyWithImpl<$Res>
    extends _$ProductModelsCopyWithImpl<$Res, _$ProductModelsImpl>
    implements _$$ProductModelsImplCopyWith<$Res> {
  __$$ProductModelsImplCopyWithImpl(
      _$ProductModelsImpl _value, $Res Function(_$ProductModelsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? shortDescription = freezed,
    Object? thumbnail = freezed,
    Object? slug = freezed,
    Object? price = freezed,
  }) {
    return _then(_$ProductModelsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelsImpl implements _ProductModels {
  _$ProductModelsImpl(
      {this.id,
      this.name,
      @JsonValue('short_description') this.shortDescription,
      this.thumbnail,
      this.slug,
      this.price});

  factory _$ProductModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonValue('short_description')
  final String? shortDescription;
  @override
  final String? thumbnail;
  @override
  final String? slug;
  @override
  final PriceModel? price;

  @override
  String toString() {
    return 'ProductModels(id: $id, name: $name, shortDescription: $shortDescription, thumbnail: $thumbnail, slug: $slug, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, shortDescription, thumbnail, slug, price);

  /// Create a copy of ProductModels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelsImplCopyWith<_$ProductModelsImpl> get copyWith =>
      __$$ProductModelsImplCopyWithImpl<_$ProductModelsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelsImplToJson(
      this,
    );
  }
}

abstract class _ProductModels implements ProductModels {
  factory _ProductModels(
      {final int? id,
      final String? name,
      @JsonValue('short_description') final String? shortDescription,
      final String? thumbnail,
      final String? slug,
      final PriceModel? price}) = _$ProductModelsImpl;

  factory _ProductModels.fromJson(Map<String, dynamic> json) =
      _$ProductModelsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonValue('short_description')
  String? get shortDescription;
  @override
  String? get thumbnail;
  @override
  String? get slug;
  @override
  PriceModel? get price;

  /// Create a copy of ProductModels
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelsImplCopyWith<_$ProductModelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceModel _$PriceModelFromJson(Map<String, dynamic> json) {
  return _PriceModel.fromJson(json);
}

/// @nodoc
mixin _$PriceModel {
  @JsonKey(name: "before_discount")
  double? get beforeDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "after_discount")
  double? get afterDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: "has_discount")
  bool? get hasDiscount => throw _privateConstructorUsedError;

  /// Serializes this PriceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceModelCopyWith<PriceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceModelCopyWith<$Res> {
  factory $PriceModelCopyWith(
          PriceModel value, $Res Function(PriceModel) then) =
      _$PriceModelCopyWithImpl<$Res, PriceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "before_discount") double? beforeDiscount,
      @JsonKey(name: "after_discount") double? afterDiscount,
      @JsonKey(name: "has_discount") bool? hasDiscount});
}

/// @nodoc
class _$PriceModelCopyWithImpl<$Res, $Val extends PriceModel>
    implements $PriceModelCopyWith<$Res> {
  _$PriceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beforeDiscount = freezed,
    Object? afterDiscount = freezed,
    Object? hasDiscount = freezed,
  }) {
    return _then(_value.copyWith(
      beforeDiscount: freezed == beforeDiscount
          ? _value.beforeDiscount
          : beforeDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      afterDiscount: freezed == afterDiscount
          ? _value.afterDiscount
          : afterDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      hasDiscount: freezed == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceModelImplCopyWith<$Res>
    implements $PriceModelCopyWith<$Res> {
  factory _$$PriceModelImplCopyWith(
          _$PriceModelImpl value, $Res Function(_$PriceModelImpl) then) =
      __$$PriceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "before_discount") double? beforeDiscount,
      @JsonKey(name: "after_discount") double? afterDiscount,
      @JsonKey(name: "has_discount") bool? hasDiscount});
}

/// @nodoc
class __$$PriceModelImplCopyWithImpl<$Res>
    extends _$PriceModelCopyWithImpl<$Res, _$PriceModelImpl>
    implements _$$PriceModelImplCopyWith<$Res> {
  __$$PriceModelImplCopyWithImpl(
      _$PriceModelImpl _value, $Res Function(_$PriceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beforeDiscount = freezed,
    Object? afterDiscount = freezed,
    Object? hasDiscount = freezed,
  }) {
    return _then(_$PriceModelImpl(
      beforeDiscount: freezed == beforeDiscount
          ? _value.beforeDiscount
          : beforeDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      afterDiscount: freezed == afterDiscount
          ? _value.afterDiscount
          : afterDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      hasDiscount: freezed == hasDiscount
          ? _value.hasDiscount
          : hasDiscount // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceModelImpl implements _PriceModel {
  _$PriceModelImpl(
      {@JsonKey(name: "before_discount") this.beforeDiscount,
      @JsonKey(name: "after_discount") this.afterDiscount,
      @JsonKey(name: "has_discount") this.hasDiscount});

  factory _$PriceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceModelImplFromJson(json);

  @override
  @JsonKey(name: "before_discount")
  final double? beforeDiscount;
  @override
  @JsonKey(name: "after_discount")
  final double? afterDiscount;
  @override
  @JsonKey(name: "has_discount")
  final bool? hasDiscount;

  @override
  String toString() {
    return 'PriceModel(beforeDiscount: $beforeDiscount, afterDiscount: $afterDiscount, hasDiscount: $hasDiscount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceModelImpl &&
            (identical(other.beforeDiscount, beforeDiscount) ||
                other.beforeDiscount == beforeDiscount) &&
            (identical(other.afterDiscount, afterDiscount) ||
                other.afterDiscount == afterDiscount) &&
            (identical(other.hasDiscount, hasDiscount) ||
                other.hasDiscount == hasDiscount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, beforeDiscount, afterDiscount, hasDiscount);

  /// Create a copy of PriceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceModelImplCopyWith<_$PriceModelImpl> get copyWith =>
      __$$PriceModelImplCopyWithImpl<_$PriceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceModelImplToJson(
      this,
    );
  }
}

abstract class _PriceModel implements PriceModel {
  factory _PriceModel(
          {@JsonKey(name: "before_discount") final double? beforeDiscount,
          @JsonKey(name: "after_discount") final double? afterDiscount,
          @JsonKey(name: "has_discount") final bool? hasDiscount}) =
      _$PriceModelImpl;

  factory _PriceModel.fromJson(Map<String, dynamic> json) =
      _$PriceModelImpl.fromJson;

  @override
  @JsonKey(name: "before_discount")
  double? get beforeDiscount;
  @override
  @JsonKey(name: "after_discount")
  double? get afterDiscount;
  @override
  @JsonKey(name: "has_discount")
  bool? get hasDiscount;

  /// Create a copy of PriceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceModelImplCopyWith<_$PriceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

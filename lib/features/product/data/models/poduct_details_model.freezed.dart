// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poduct_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PoductDetailsModel _$PoductDetailsModelFromJson(Map<String, dynamic> json) {
  return _PoductDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$PoductDetailsModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: "display_price_value")
  PriceModel? get price => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  String? get sku => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: "is_variable")
  String? get isVariable => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  int? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_featured")
  int? get isFeatured => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail_url")
  int? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_amount")
  int? get taxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "tax_id")
  TaxId? get taxId => throw _privateConstructorUsedError;
  CategoryModel? get categoryModel => throw _privateConstructorUsedError;
  Brand? get brand => throw _privateConstructorUsedError;

  /// Serializes this PoductDetailsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PoductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PoductDetailsModelCopyWith<PoductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoductDetailsModelCopyWith<$Res> {
  factory $PoductDetailsModelCopyWith(
          PoductDetailsModel value, $Res Function(PoductDetailsModel) then) =
      _$PoductDetailsModelCopyWithImpl<$Res, PoductDetailsModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? slug,
      String? description,
      String? shortDescription,
      String? thumbnail,
      @JsonKey(name: "display_price_value") PriceModel? price,
      String? barcode,
      String? sku,
      String? unit,
      List<String>? images,
      @JsonKey(name: "is_variable") String? isVariable,
      int? quantity,
      @JsonKey(name: "is_active") int? isActive,
      @JsonKey(name: "is_featured") int? isFeatured,
      @JsonKey(name: "thumbnail_url") int? thumbnailUrl,
      @JsonKey(name: "tax_amount") int? taxAmount,
      @JsonKey(name: "tax_id") TaxId? taxId,
      CategoryModel? categoryModel,
      Brand? brand});

  $PriceModelCopyWith<$Res>? get price;
  $TaxIdCopyWith<$Res>? get taxId;
  $CategoryModelCopyWith<$Res>? get categoryModel;
  $BrandCopyWith<$Res>? get brand;
}

/// @nodoc
class _$PoductDetailsModelCopyWithImpl<$Res, $Val extends PoductDetailsModel>
    implements $PoductDetailsModelCopyWith<$Res> {
  _$PoductDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PoductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? thumbnail = freezed,
    Object? price = freezed,
    Object? barcode = freezed,
    Object? sku = freezed,
    Object? unit = freezed,
    Object? images = freezed,
    Object? isVariable = freezed,
    Object? quantity = freezed,
    Object? isActive = freezed,
    Object? isFeatured = freezed,
    Object? thumbnailUrl = freezed,
    Object? taxAmount = freezed,
    Object? taxId = freezed,
    Object? categoryModel = freezed,
    Object? brand = freezed,
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
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceModel?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isVariable: freezed == isVariable
          ? _value.isVariable
          : isVariable // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
      isFeatured: freezed == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as int?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      taxId: freezed == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as TaxId?,
      categoryModel: freezed == categoryModel
          ? _value.categoryModel
          : categoryModel // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
    ) as $Val);
  }

  /// Create a copy of PoductDetailsModel
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

  /// Create a copy of PoductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaxIdCopyWith<$Res>? get taxId {
    if (_value.taxId == null) {
      return null;
    }

    return $TaxIdCopyWith<$Res>(_value.taxId!, (value) {
      return _then(_value.copyWith(taxId: value) as $Val);
    });
  }

  /// Create a copy of PoductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get categoryModel {
    if (_value.categoryModel == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.categoryModel!, (value) {
      return _then(_value.copyWith(categoryModel: value) as $Val);
    });
  }

  /// Create a copy of PoductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PoductDetailsModelImplCopyWith<$Res>
    implements $PoductDetailsModelCopyWith<$Res> {
  factory _$$PoductDetailsModelImplCopyWith(_$PoductDetailsModelImpl value,
          $Res Function(_$PoductDetailsModelImpl) then) =
      __$$PoductDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? slug,
      String? description,
      String? shortDescription,
      String? thumbnail,
      @JsonKey(name: "display_price_value") PriceModel? price,
      String? barcode,
      String? sku,
      String? unit,
      List<String>? images,
      @JsonKey(name: "is_variable") String? isVariable,
      int? quantity,
      @JsonKey(name: "is_active") int? isActive,
      @JsonKey(name: "is_featured") int? isFeatured,
      @JsonKey(name: "thumbnail_url") int? thumbnailUrl,
      @JsonKey(name: "tax_amount") int? taxAmount,
      @JsonKey(name: "tax_id") TaxId? taxId,
      CategoryModel? categoryModel,
      Brand? brand});

  @override
  $PriceModelCopyWith<$Res>? get price;
  @override
  $TaxIdCopyWith<$Res>? get taxId;
  @override
  $CategoryModelCopyWith<$Res>? get categoryModel;
  @override
  $BrandCopyWith<$Res>? get brand;
}

/// @nodoc
class __$$PoductDetailsModelImplCopyWithImpl<$Res>
    extends _$PoductDetailsModelCopyWithImpl<$Res, _$PoductDetailsModelImpl>
    implements _$$PoductDetailsModelImplCopyWith<$Res> {
  __$$PoductDetailsModelImplCopyWithImpl(_$PoductDetailsModelImpl _value,
      $Res Function(_$PoductDetailsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PoductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? thumbnail = freezed,
    Object? price = freezed,
    Object? barcode = freezed,
    Object? sku = freezed,
    Object? unit = freezed,
    Object? images = freezed,
    Object? isVariable = freezed,
    Object? quantity = freezed,
    Object? isActive = freezed,
    Object? isFeatured = freezed,
    Object? thumbnailUrl = freezed,
    Object? taxAmount = freezed,
    Object? taxId = freezed,
    Object? categoryModel = freezed,
    Object? brand = freezed,
  }) {
    return _then(_$PoductDetailsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceModel?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isVariable: freezed == isVariable
          ? _value.isVariable
          : isVariable // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
      isFeatured: freezed == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as int?,
      taxAmount: freezed == taxAmount
          ? _value.taxAmount
          : taxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      taxId: freezed == taxId
          ? _value.taxId
          : taxId // ignore: cast_nullable_to_non_nullable
              as TaxId?,
      categoryModel: freezed == categoryModel
          ? _value.categoryModel
          : categoryModel // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PoductDetailsModelImpl implements _PoductDetailsModel {
  _$PoductDetailsModelImpl(
      {this.id,
      this.name,
      this.slug,
      this.description,
      this.shortDescription,
      this.thumbnail,
      @JsonKey(name: "display_price_value") this.price,
      this.barcode,
      this.sku,
      this.unit,
      final List<String>? images,
      @JsonKey(name: "is_variable") this.isVariable,
      this.quantity,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "is_featured") this.isFeatured,
      @JsonKey(name: "thumbnail_url") this.thumbnailUrl,
      @JsonKey(name: "tax_amount") this.taxAmount,
      @JsonKey(name: "tax_id") this.taxId,
      this.categoryModel,
      this.brand})
      : _images = images;

  factory _$PoductDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PoductDetailsModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? description;
  @override
  final String? shortDescription;
  @override
  final String? thumbnail;
  @override
  @JsonKey(name: "display_price_value")
  final PriceModel? price;
  @override
  final String? barcode;
  @override
  final String? sku;
  @override
  final String? unit;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "is_variable")
  final String? isVariable;
  @override
  final int? quantity;
  @override
  @JsonKey(name: "is_active")
  final int? isActive;
  @override
  @JsonKey(name: "is_featured")
  final int? isFeatured;
  @override
  @JsonKey(name: "thumbnail_url")
  final int? thumbnailUrl;
  @override
  @JsonKey(name: "tax_amount")
  final int? taxAmount;
  @override
  @JsonKey(name: "tax_id")
  final TaxId? taxId;
  @override
  final CategoryModel? categoryModel;
  @override
  final Brand? brand;

  @override
  String toString() {
    return 'PoductDetailsModel(id: $id, name: $name, slug: $slug, description: $description, shortDescription: $shortDescription, thumbnail: $thumbnail, price: $price, barcode: $barcode, sku: $sku, unit: $unit, images: $images, isVariable: $isVariable, quantity: $quantity, isActive: $isActive, isFeatured: $isFeatured, thumbnailUrl: $thumbnailUrl, taxAmount: $taxAmount, taxId: $taxId, categoryModel: $categoryModel, brand: $brand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PoductDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isVariable, isVariable) ||
                other.isVariable == isVariable) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.taxAmount, taxAmount) ||
                other.taxAmount == taxAmount) &&
            (identical(other.taxId, taxId) || other.taxId == taxId) &&
            (identical(other.categoryModel, categoryModel) ||
                other.categoryModel == categoryModel) &&
            (identical(other.brand, brand) || other.brand == brand));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        slug,
        description,
        shortDescription,
        thumbnail,
        price,
        barcode,
        sku,
        unit,
        const DeepCollectionEquality().hash(_images),
        isVariable,
        quantity,
        isActive,
        isFeatured,
        thumbnailUrl,
        taxAmount,
        taxId,
        categoryModel,
        brand
      ]);

  /// Create a copy of PoductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PoductDetailsModelImplCopyWith<_$PoductDetailsModelImpl> get copyWith =>
      __$$PoductDetailsModelImplCopyWithImpl<_$PoductDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PoductDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _PoductDetailsModel implements PoductDetailsModel {
  factory _PoductDetailsModel(
      {final int? id,
      final String? name,
      final String? slug,
      final String? description,
      final String? shortDescription,
      final String? thumbnail,
      @JsonKey(name: "display_price_value") final PriceModel? price,
      final String? barcode,
      final String? sku,
      final String? unit,
      final List<String>? images,
      @JsonKey(name: "is_variable") final String? isVariable,
      final int? quantity,
      @JsonKey(name: "is_active") final int? isActive,
      @JsonKey(name: "is_featured") final int? isFeatured,
      @JsonKey(name: "thumbnail_url") final int? thumbnailUrl,
      @JsonKey(name: "tax_amount") final int? taxAmount,
      @JsonKey(name: "tax_id") final TaxId? taxId,
      final CategoryModel? categoryModel,
      final Brand? brand}) = _$PoductDetailsModelImpl;

  factory _PoductDetailsModel.fromJson(Map<String, dynamic> json) =
      _$PoductDetailsModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get slug;
  @override
  String? get description;
  @override
  String? get shortDescription;
  @override
  String? get thumbnail;
  @override
  @JsonKey(name: "display_price_value")
  PriceModel? get price;
  @override
  String? get barcode;
  @override
  String? get sku;
  @override
  String? get unit;
  @override
  List<String>? get images;
  @override
  @JsonKey(name: "is_variable")
  String? get isVariable;
  @override
  int? get quantity;
  @override
  @JsonKey(name: "is_active")
  int? get isActive;
  @override
  @JsonKey(name: "is_featured")
  int? get isFeatured;
  @override
  @JsonKey(name: "thumbnail_url")
  int? get thumbnailUrl;
  @override
  @JsonKey(name: "tax_amount")
  int? get taxAmount;
  @override
  @JsonKey(name: "tax_id")
  TaxId? get taxId;
  @override
  CategoryModel? get categoryModel;
  @override
  Brand? get brand;

  /// Create a copy of PoductDetailsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PoductDetailsModelImplCopyWith<_$PoductDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this Brand to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res, $Val extends Brand>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandImplCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$BrandImplCopyWith(
          _$BrandImpl value, $Res Function(_$BrandImpl) then) =
      __$$BrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$BrandImplCopyWithImpl<$Res>
    extends _$BrandCopyWithImpl<$Res, _$BrandImpl>
    implements _$$BrandImplCopyWith<$Res> {
  __$$BrandImplCopyWithImpl(
      _$BrandImpl _value, $Res Function(_$BrandImpl) _then)
      : super(_value, _then);

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$BrandImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandImpl implements _Brand {
  _$BrandImpl({this.id, this.name});

  factory _$BrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Brand(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      __$$BrandImplCopyWithImpl<_$BrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandImplToJson(
      this,
    );
  }
}

abstract class _Brand implements Brand {
  factory _Brand({final int? id, final String? name}) = _$BrandImpl;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$BrandImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of Brand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaxId _$TaxIdFromJson(Map<String, dynamic> json) {
  return _TaxId.fromJson(json);
}

/// @nodoc
mixin _$TaxId {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  num? get rate => throw _privateConstructorUsedError;
  @JsonKey(name: "is_default")
  bool? get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;

  /// Serializes this TaxId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaxId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaxIdCopyWith<TaxId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxIdCopyWith<$Res> {
  factory $TaxIdCopyWith(TaxId value, $Res Function(TaxId) then) =
      _$TaxIdCopyWithImpl<$Res, TaxId>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      num? rate,
      @JsonKey(name: "is_default") bool? isDefault,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class _$TaxIdCopyWithImpl<$Res, $Val extends TaxId>
    implements $TaxIdCopyWith<$Res> {
  _$TaxIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaxId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? rate = freezed,
    Object? isDefault = freezed,
    Object? isActive = freezed,
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
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaxIdImplCopyWith<$Res> implements $TaxIdCopyWith<$Res> {
  factory _$$TaxIdImplCopyWith(
          _$TaxIdImpl value, $Res Function(_$TaxIdImpl) then) =
      __$$TaxIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      num? rate,
      @JsonKey(name: "is_default") bool? isDefault,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class __$$TaxIdImplCopyWithImpl<$Res>
    extends _$TaxIdCopyWithImpl<$Res, _$TaxIdImpl>
    implements _$$TaxIdImplCopyWith<$Res> {
  __$$TaxIdImplCopyWithImpl(
      _$TaxIdImpl _value, $Res Function(_$TaxIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaxId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? rate = freezed,
    Object? isDefault = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$TaxIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as num?,
      isDefault: freezed == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaxIdImpl implements _TaxId {
  _$TaxIdImpl(
      {this.id,
      this.name,
      this.rate,
      @JsonKey(name: "is_default") this.isDefault,
      @JsonKey(name: "is_active") this.isActive});

  factory _$TaxIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxIdImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final num? rate;
  @override
  @JsonKey(name: "is_default")
  final bool? isDefault;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;

  @override
  String toString() {
    return 'TaxId(id: $id, name: $name, rate: $rate, isDefault: $isDefault, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, rate, isDefault, isActive);

  /// Create a copy of TaxId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxIdImplCopyWith<_$TaxIdImpl> get copyWith =>
      __$$TaxIdImplCopyWithImpl<_$TaxIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxIdImplToJson(
      this,
    );
  }
}

abstract class _TaxId implements TaxId {
  factory _TaxId(
      {final int? id,
      final String? name,
      final num? rate,
      @JsonKey(name: "is_default") final bool? isDefault,
      @JsonKey(name: "is_active") final bool? isActive}) = _$TaxIdImpl;

  factory _TaxId.fromJson(Map<String, dynamic> json) = _$TaxIdImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  num? get rate;
  @override
  @JsonKey(name: "is_default")
  bool? get isDefault;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;

  /// Create a copy of TaxId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaxIdImplCopyWith<_$TaxIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

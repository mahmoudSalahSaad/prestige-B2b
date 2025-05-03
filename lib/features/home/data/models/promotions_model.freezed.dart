// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PromotionsModel _$PromotionsModelFromJson(Map<String, dynamic> json) {
  return _PromotionsModel.fromJson(json);
}

/// @nodoc
mixin _$PromotionsModel {
  Sections? get sections => throw _privateConstructorUsedError;

  /// Serializes this PromotionsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PromotionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromotionsModelCopyWith<PromotionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionsModelCopyWith<$Res> {
  factory $PromotionsModelCopyWith(
          PromotionsModel value, $Res Function(PromotionsModel) then) =
      _$PromotionsModelCopyWithImpl<$Res, PromotionsModel>;
  @useResult
  $Res call({Sections? sections});

  $SectionsCopyWith<$Res>? get sections;
}

/// @nodoc
class _$PromotionsModelCopyWithImpl<$Res, $Val extends PromotionsModel>
    implements $PromotionsModelCopyWith<$Res> {
  _$PromotionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromotionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sections = freezed,
  }) {
    return _then(_value.copyWith(
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as Sections?,
    ) as $Val);
  }

  /// Create a copy of PromotionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectionsCopyWith<$Res>? get sections {
    if (_value.sections == null) {
      return null;
    }

    return $SectionsCopyWith<$Res>(_value.sections!, (value) {
      return _then(_value.copyWith(sections: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PromotionsModelImplCopyWith<$Res>
    implements $PromotionsModelCopyWith<$Res> {
  factory _$$PromotionsModelImplCopyWith(_$PromotionsModelImpl value,
          $Res Function(_$PromotionsModelImpl) then) =
      __$$PromotionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Sections? sections});

  @override
  $SectionsCopyWith<$Res>? get sections;
}

/// @nodoc
class __$$PromotionsModelImplCopyWithImpl<$Res>
    extends _$PromotionsModelCopyWithImpl<$Res, _$PromotionsModelImpl>
    implements _$$PromotionsModelImplCopyWith<$Res> {
  __$$PromotionsModelImplCopyWithImpl(
      _$PromotionsModelImpl _value, $Res Function(_$PromotionsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sections = freezed,
  }) {
    return _then(_$PromotionsModelImpl(
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as Sections?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionsModelImpl implements _PromotionsModel {
  _$PromotionsModelImpl({this.sections});

  factory _$PromotionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionsModelImplFromJson(json);

  @override
  final Sections? sections;

  @override
  String toString() {
    return 'PromotionsModel(sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionsModelImpl &&
            (identical(other.sections, sections) ||
                other.sections == sections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sections);

  /// Create a copy of PromotionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionsModelImplCopyWith<_$PromotionsModelImpl> get copyWith =>
      __$$PromotionsModelImplCopyWithImpl<_$PromotionsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionsModelImplToJson(
      this,
    );
  }
}

abstract class _PromotionsModel implements PromotionsModel {
  factory _PromotionsModel({final Sections? sections}) = _$PromotionsModelImpl;

  factory _PromotionsModel.fromJson(Map<String, dynamic> json) =
      _$PromotionsModelImpl.fromJson;

  @override
  Sections? get sections;

  /// Create a copy of PromotionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionsModelImplCopyWith<_$PromotionsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Sections _$SectionsFromJson(Map<String, dynamic> json) {
  return _Sections.fromJson(json);
}

/// @nodoc
mixin _$Sections {
  List<Promotions>? get promotions => throw _privateConstructorUsedError;

  /// Serializes this Sections to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Sections
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionsCopyWith<Sections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionsCopyWith<$Res> {
  factory $SectionsCopyWith(Sections value, $Res Function(Sections) then) =
      _$SectionsCopyWithImpl<$Res, Sections>;
  @useResult
  $Res call({List<Promotions>? promotions});
}

/// @nodoc
class _$SectionsCopyWithImpl<$Res, $Val extends Sections>
    implements $SectionsCopyWith<$Res> {
  _$SectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Sections
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotions = freezed,
  }) {
    return _then(_value.copyWith(
      promotions: freezed == promotions
          ? _value.promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<Promotions>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionsImplCopyWith<$Res>
    implements $SectionsCopyWith<$Res> {
  factory _$$SectionsImplCopyWith(
          _$SectionsImpl value, $Res Function(_$SectionsImpl) then) =
      __$$SectionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Promotions>? promotions});
}

/// @nodoc
class __$$SectionsImplCopyWithImpl<$Res>
    extends _$SectionsCopyWithImpl<$Res, _$SectionsImpl>
    implements _$$SectionsImplCopyWith<$Res> {
  __$$SectionsImplCopyWithImpl(
      _$SectionsImpl _value, $Res Function(_$SectionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Sections
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotions = freezed,
  }) {
    return _then(_$SectionsImpl(
      promotions: freezed == promotions
          ? _value._promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<Promotions>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionsImpl implements _Sections {
  _$SectionsImpl({final List<Promotions>? promotions})
      : _promotions = promotions;

  factory _$SectionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionsImplFromJson(json);

  final List<Promotions>? _promotions;
  @override
  List<Promotions>? get promotions {
    final value = _promotions;
    if (value == null) return null;
    if (_promotions is EqualUnmodifiableListView) return _promotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Sections(promotions: $promotions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionsImpl &&
            const DeepCollectionEquality()
                .equals(other._promotions, _promotions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_promotions));

  /// Create a copy of Sections
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionsImplCopyWith<_$SectionsImpl> get copyWith =>
      __$$SectionsImplCopyWithImpl<_$SectionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionsImplToJson(
      this,
    );
  }
}

abstract class _Sections implements Sections {
  factory _Sections({final List<Promotions>? promotions}) = _$SectionsImpl;

  factory _Sections.fromJson(Map<String, dynamic> json) =
      _$SectionsImpl.fromJson;

  @override
  List<Promotions>? get promotions;

  /// Create a copy of Sections
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionsImplCopyWith<_$SectionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Promotions _$PromotionsFromJson(Map<String, dynamic> json) {
  return _Promotions.fromJson(json);
}

/// @nodoc
mixin _$Promotions {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "min_items")
  int? get minItems => throw _privateConstructorUsedError;
  @JsonKey(name: "min_amount")
  int? get maxAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "min_categories")
  String? get minCategories => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  String? get endDate => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  @JsonKey(name: "xy_offer")
  XyOffer? get xyOffer => throw _privateConstructorUsedError;
  PriceModel? get price => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;

  /// Serializes this Promotions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Promotions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromotionsCopyWith<Promotions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionsCopyWith<$Res> {
  factory $PromotionsCopyWith(
          Promotions value, $Res Function(Promotions) then) =
      _$PromotionsCopyWithImpl<$Res, Promotions>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "image_url") String? imageUrl,
      String? name,
      String? description,
      String? type,
      @JsonKey(name: "min_items") int? minItems,
      @JsonKey(name: "min_amount") int? maxAmount,
      @JsonKey(name: "min_categories") String? minCategories,
      @JsonKey(name: "end_date") String? endDate,
      String? unit,
      @JsonKey(name: "xy_offer") XyOffer? xyOffer,
      PriceModel? price,
      int? discount});

  $XyOfferCopyWith<$Res>? get xyOffer;
  $PriceModelCopyWith<$Res>? get price;
}

/// @nodoc
class _$PromotionsCopyWithImpl<$Res, $Val extends Promotions>
    implements $PromotionsCopyWith<$Res> {
  _$PromotionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Promotions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? minItems = freezed,
    Object? maxAmount = freezed,
    Object? minCategories = freezed,
    Object? endDate = freezed,
    Object? unit = freezed,
    Object? xyOffer = freezed,
    Object? price = freezed,
    Object? discount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
      minItems: freezed == minItems
          ? _value.minItems
          : minItems // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAmount: freezed == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      minCategories: freezed == minCategories
          ? _value.minCategories
          : minCategories // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      xyOffer: freezed == xyOffer
          ? _value.xyOffer
          : xyOffer // ignore: cast_nullable_to_non_nullable
              as XyOffer?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceModel?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of Promotions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $XyOfferCopyWith<$Res>? get xyOffer {
    if (_value.xyOffer == null) {
      return null;
    }

    return $XyOfferCopyWith<$Res>(_value.xyOffer!, (value) {
      return _then(_value.copyWith(xyOffer: value) as $Val);
    });
  }

  /// Create a copy of Promotions
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
abstract class _$$PromotionsImplCopyWith<$Res>
    implements $PromotionsCopyWith<$Res> {
  factory _$$PromotionsImplCopyWith(
          _$PromotionsImpl value, $Res Function(_$PromotionsImpl) then) =
      __$$PromotionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "image_url") String? imageUrl,
      String? name,
      String? description,
      String? type,
      @JsonKey(name: "min_items") int? minItems,
      @JsonKey(name: "min_amount") int? maxAmount,
      @JsonKey(name: "min_categories") String? minCategories,
      @JsonKey(name: "end_date") String? endDate,
      String? unit,
      @JsonKey(name: "xy_offer") XyOffer? xyOffer,
      PriceModel? price,
      int? discount});

  @override
  $XyOfferCopyWith<$Res>? get xyOffer;
  @override
  $PriceModelCopyWith<$Res>? get price;
}

/// @nodoc
class __$$PromotionsImplCopyWithImpl<$Res>
    extends _$PromotionsCopyWithImpl<$Res, _$PromotionsImpl>
    implements _$$PromotionsImplCopyWith<$Res> {
  __$$PromotionsImplCopyWithImpl(
      _$PromotionsImpl _value, $Res Function(_$PromotionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Promotions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? type = freezed,
    Object? minItems = freezed,
    Object? maxAmount = freezed,
    Object? minCategories = freezed,
    Object? endDate = freezed,
    Object? unit = freezed,
    Object? xyOffer = freezed,
    Object? price = freezed,
    Object? discount = freezed,
  }) {
    return _then(_$PromotionsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
      minItems: freezed == minItems
          ? _value.minItems
          : minItems // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAmount: freezed == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      minCategories: freezed == minCategories
          ? _value.minCategories
          : minCategories // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      xyOffer: freezed == xyOffer
          ? _value.xyOffer
          : xyOffer // ignore: cast_nullable_to_non_nullable
              as XyOffer?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as PriceModel?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromotionsImpl implements _Promotions {
  _$PromotionsImpl(
      {this.id,
      @JsonKey(name: "image_url") this.imageUrl,
      this.name,
      this.description,
      this.type,
      @JsonKey(name: "min_items") this.minItems,
      @JsonKey(name: "min_amount") this.maxAmount,
      @JsonKey(name: "min_categories") this.minCategories,
      @JsonKey(name: "end_date") this.endDate,
      this.unit,
      @JsonKey(name: "xy_offer") this.xyOffer,
      this.price,
      this.discount});

  factory _$PromotionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromotionsImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? type;
  @override
  @JsonKey(name: "min_items")
  final int? minItems;
  @override
  @JsonKey(name: "min_amount")
  final int? maxAmount;
  @override
  @JsonKey(name: "min_categories")
  final String? minCategories;
  @override
  @JsonKey(name: "end_date")
  final String? endDate;
  @override
  final String? unit;
  @override
  @JsonKey(name: "xy_offer")
  final XyOffer? xyOffer;
  @override
  final PriceModel? price;
  @override
  final int? discount;

  @override
  String toString() {
    return 'Promotions(id: $id, imageUrl: $imageUrl, name: $name, description: $description, type: $type, minItems: $minItems, maxAmount: $maxAmount, minCategories: $minCategories, endDate: $endDate, unit: $unit, xyOffer: $xyOffer, price: $price, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.minItems, minItems) ||
                other.minItems == minItems) &&
            (identical(other.maxAmount, maxAmount) ||
                other.maxAmount == maxAmount) &&
            (identical(other.minCategories, minCategories) ||
                other.minCategories == minCategories) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.xyOffer, xyOffer) || other.xyOffer == xyOffer) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      imageUrl,
      name,
      description,
      type,
      minItems,
      maxAmount,
      minCategories,
      endDate,
      unit,
      xyOffer,
      price,
      discount);

  /// Create a copy of Promotions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionsImplCopyWith<_$PromotionsImpl> get copyWith =>
      __$$PromotionsImplCopyWithImpl<_$PromotionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromotionsImplToJson(
      this,
    );
  }
}

abstract class _Promotions implements Promotions {
  factory _Promotions(
      {final int? id,
      @JsonKey(name: "image_url") final String? imageUrl,
      final String? name,
      final String? description,
      final String? type,
      @JsonKey(name: "min_items") final int? minItems,
      @JsonKey(name: "min_amount") final int? maxAmount,
      @JsonKey(name: "min_categories") final String? minCategories,
      @JsonKey(name: "end_date") final String? endDate,
      final String? unit,
      @JsonKey(name: "xy_offer") final XyOffer? xyOffer,
      final PriceModel? price,
      final int? discount}) = _$PromotionsImpl;

  factory _Promotions.fromJson(Map<String, dynamic> json) =
      _$PromotionsImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get type;
  @override
  @JsonKey(name: "min_items")
  int? get minItems;
  @override
  @JsonKey(name: "min_amount")
  int? get maxAmount;
  @override
  @JsonKey(name: "min_categories")
  String? get minCategories;
  @override
  @JsonKey(name: "end_date")
  String? get endDate;
  @override
  String? get unit;
  @override
  @JsonKey(name: "xy_offer")
  XyOffer? get xyOffer;
  @override
  PriceModel? get price;
  @override
  int? get discount;

  /// Create a copy of Promotions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionsImplCopyWith<_$PromotionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

XyOffer _$XyOfferFromJson(Map<String, dynamic> json) {
  return _XyOffer.fromJson(json);
}

/// @nodoc
mixin _$XyOffer {
  @JsonKey(name: "buy_quantity")
  int? get buyQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: "buy_product")
  String? get buyProduct => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "get_product")
  String? get getProduct => throw _privateConstructorUsedError;

  /// Serializes this XyOffer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of XyOffer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $XyOfferCopyWith<XyOffer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XyOfferCopyWith<$Res> {
  factory $XyOfferCopyWith(XyOffer value, $Res Function(XyOffer) then) =
      _$XyOfferCopyWithImpl<$Res, XyOffer>;
  @useResult
  $Res call(
      {@JsonKey(name: "buy_quantity") int? buyQuantity,
      @JsonKey(name: "buy_product") String? buyProduct,
      double? price,
      @JsonKey(name: "get_product") String? getProduct});
}

/// @nodoc
class _$XyOfferCopyWithImpl<$Res, $Val extends XyOffer>
    implements $XyOfferCopyWith<$Res> {
  _$XyOfferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of XyOffer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyQuantity = freezed,
    Object? buyProduct = freezed,
    Object? price = freezed,
    Object? getProduct = freezed,
  }) {
    return _then(_value.copyWith(
      buyQuantity: freezed == buyQuantity
          ? _value.buyQuantity
          : buyQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      buyProduct: freezed == buyProduct
          ? _value.buyProduct
          : buyProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      getProduct: freezed == getProduct
          ? _value.getProduct
          : getProduct // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$XyOfferImplCopyWith<$Res> implements $XyOfferCopyWith<$Res> {
  factory _$$XyOfferImplCopyWith(
          _$XyOfferImpl value, $Res Function(_$XyOfferImpl) then) =
      __$$XyOfferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "buy_quantity") int? buyQuantity,
      @JsonKey(name: "buy_product") String? buyProduct,
      double? price,
      @JsonKey(name: "get_product") String? getProduct});
}

/// @nodoc
class __$$XyOfferImplCopyWithImpl<$Res>
    extends _$XyOfferCopyWithImpl<$Res, _$XyOfferImpl>
    implements _$$XyOfferImplCopyWith<$Res> {
  __$$XyOfferImplCopyWithImpl(
      _$XyOfferImpl _value, $Res Function(_$XyOfferImpl) _then)
      : super(_value, _then);

  /// Create a copy of XyOffer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyQuantity = freezed,
    Object? buyProduct = freezed,
    Object? price = freezed,
    Object? getProduct = freezed,
  }) {
    return _then(_$XyOfferImpl(
      buyQuantity: freezed == buyQuantity
          ? _value.buyQuantity
          : buyQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      buyProduct: freezed == buyProduct
          ? _value.buyProduct
          : buyProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      getProduct: freezed == getProduct
          ? _value.getProduct
          : getProduct // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$XyOfferImpl implements _XyOffer {
  _$XyOfferImpl(
      {@JsonKey(name: "buy_quantity") this.buyQuantity,
      @JsonKey(name: "buy_product") this.buyProduct,
      this.price,
      @JsonKey(name: "get_product") this.getProduct});

  factory _$XyOfferImpl.fromJson(Map<String, dynamic> json) =>
      _$$XyOfferImplFromJson(json);

  @override
  @JsonKey(name: "buy_quantity")
  final int? buyQuantity;
  @override
  @JsonKey(name: "buy_product")
  final String? buyProduct;
  @override
  final double? price;
  @override
  @JsonKey(name: "get_product")
  final String? getProduct;

  @override
  String toString() {
    return 'XyOffer(buyQuantity: $buyQuantity, buyProduct: $buyProduct, price: $price, getProduct: $getProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$XyOfferImpl &&
            (identical(other.buyQuantity, buyQuantity) ||
                other.buyQuantity == buyQuantity) &&
            (identical(other.buyProduct, buyProduct) ||
                other.buyProduct == buyProduct) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.getProduct, getProduct) ||
                other.getProduct == getProduct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, buyQuantity, buyProduct, price, getProduct);

  /// Create a copy of XyOffer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$XyOfferImplCopyWith<_$XyOfferImpl> get copyWith =>
      __$$XyOfferImplCopyWithImpl<_$XyOfferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$XyOfferImplToJson(
      this,
    );
  }
}

abstract class _XyOffer implements XyOffer {
  factory _XyOffer(
      {@JsonKey(name: "buy_quantity") final int? buyQuantity,
      @JsonKey(name: "buy_product") final String? buyProduct,
      final double? price,
      @JsonKey(name: "get_product") final String? getProduct}) = _$XyOfferImpl;

  factory _XyOffer.fromJson(Map<String, dynamic> json) = _$XyOfferImpl.fromJson;

  @override
  @JsonKey(name: "buy_quantity")
  int? get buyQuantity;
  @override
  @JsonKey(name: "buy_product")
  String? get buyProduct;
  @override
  double? get price;
  @override
  @JsonKey(name: "get_product")
  String? get getProduct;

  /// Create a copy of XyOffer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$XyOfferImplCopyWith<_$XyOfferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

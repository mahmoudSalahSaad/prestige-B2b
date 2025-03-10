// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  String? get title => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  SectionsModel? get sections => throw _privateConstructorUsedError;

  /// Serializes this HomeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call({String? title, String? cover, SectionsModel? sections});

  $SectionsModelCopyWith<$Res>? get sections;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? cover = freezed,
    Object? sections = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as SectionsModel?,
    ) as $Val);
  }

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectionsModelCopyWith<$Res>? get sections {
    if (_value.sections == null) {
      return null;
    }

    return $SectionsModelCopyWith<$Res>(_value.sections!, (value) {
      return _then(_value.copyWith(sections: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? cover, SectionsModel? sections});

  @override
  $SectionsModelCopyWith<$Res>? get sections;
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? cover = freezed,
    Object? sections = freezed,
  }) {
    return _then(_$HomeModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as SectionsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeModelImpl implements _HomeModel {
  _$HomeModelImpl({this.title, this.cover, this.sections});

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  @override
  final String? title;
  @override
  final String? cover;
  @override
  final SectionsModel? sections;

  @override
  String toString() {
    return 'HomeModel(title: $title, cover: $cover, sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.sections, sections) ||
                other.sections == sections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, cover, sections);

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  factory _HomeModel(
      {final String? title,
      final String? cover,
      final SectionsModel? sections}) = _$HomeModelImpl;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  String? get title;
  @override
  String? get cover;
  @override
  SectionsModel? get sections;

  /// Create a copy of HomeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SectionsModel _$SectionsModelFromJson(Map<String, dynamic> json) {
  return _SectionsModel.fromJson(json);
}

/// @nodoc
mixin _$SectionsModel {
  SliderModel? get slider => throw _privateConstructorUsedError;
  List<ProductModels>? get deals => throw _privateConstructorUsedError;
  List<ProductModels>? get featuredproducts =>
      throw _privateConstructorUsedError;
  Image4Col? get image4col => throw _privateConstructorUsedError;
  List<BrandsModel>? get brands => throw _privateConstructorUsedError;

  /// Serializes this SectionsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionsModelCopyWith<SectionsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionsModelCopyWith<$Res> {
  factory $SectionsModelCopyWith(
          SectionsModel value, $Res Function(SectionsModel) then) =
      _$SectionsModelCopyWithImpl<$Res, SectionsModel>;
  @useResult
  $Res call(
      {SliderModel? slider,
      List<ProductModels>? deals,
      List<ProductModels>? featuredproducts,
      Image4Col? image4col,
      List<BrandsModel>? brands});

  $SliderModelCopyWith<$Res>? get slider;
  $Image4ColCopyWith<$Res>? get image4col;
}

/// @nodoc
class _$SectionsModelCopyWithImpl<$Res, $Val extends SectionsModel>
    implements $SectionsModelCopyWith<$Res> {
  _$SectionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slider = freezed,
    Object? deals = freezed,
    Object? featuredproducts = freezed,
    Object? image4col = freezed,
    Object? brands = freezed,
  }) {
    return _then(_value.copyWith(
      slider: freezed == slider
          ? _value.slider
          : slider // ignore: cast_nullable_to_non_nullable
              as SliderModel?,
      deals: freezed == deals
          ? _value.deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<ProductModels>?,
      featuredproducts: freezed == featuredproducts
          ? _value.featuredproducts
          : featuredproducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModels>?,
      image4col: freezed == image4col
          ? _value.image4col
          : image4col // ignore: cast_nullable_to_non_nullable
              as Image4Col?,
      brands: freezed == brands
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandsModel>?,
    ) as $Val);
  }

  /// Create a copy of SectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SliderModelCopyWith<$Res>? get slider {
    if (_value.slider == null) {
      return null;
    }

    return $SliderModelCopyWith<$Res>(_value.slider!, (value) {
      return _then(_value.copyWith(slider: value) as $Val);
    });
  }

  /// Create a copy of SectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Image4ColCopyWith<$Res>? get image4col {
    if (_value.image4col == null) {
      return null;
    }

    return $Image4ColCopyWith<$Res>(_value.image4col!, (value) {
      return _then(_value.copyWith(image4col: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SectionsModelImplCopyWith<$Res>
    implements $SectionsModelCopyWith<$Res> {
  factory _$$SectionsModelImplCopyWith(
          _$SectionsModelImpl value, $Res Function(_$SectionsModelImpl) then) =
      __$$SectionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SliderModel? slider,
      List<ProductModels>? deals,
      List<ProductModels>? featuredproducts,
      Image4Col? image4col,
      List<BrandsModel>? brands});

  @override
  $SliderModelCopyWith<$Res>? get slider;
  @override
  $Image4ColCopyWith<$Res>? get image4col;
}

/// @nodoc
class __$$SectionsModelImplCopyWithImpl<$Res>
    extends _$SectionsModelCopyWithImpl<$Res, _$SectionsModelImpl>
    implements _$$SectionsModelImplCopyWith<$Res> {
  __$$SectionsModelImplCopyWithImpl(
      _$SectionsModelImpl _value, $Res Function(_$SectionsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slider = freezed,
    Object? deals = freezed,
    Object? featuredproducts = freezed,
    Object? image4col = freezed,
    Object? brands = freezed,
  }) {
    return _then(_$SectionsModelImpl(
      slider: freezed == slider
          ? _value.slider
          : slider // ignore: cast_nullable_to_non_nullable
              as SliderModel?,
      deals: freezed == deals
          ? _value._deals
          : deals // ignore: cast_nullable_to_non_nullable
              as List<ProductModels>?,
      featuredproducts: freezed == featuredproducts
          ? _value._featuredproducts
          : featuredproducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModels>?,
      image4col: freezed == image4col
          ? _value.image4col
          : image4col // ignore: cast_nullable_to_non_nullable
              as Image4Col?,
      brands: freezed == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionsModelImpl implements _SectionsModel {
  _$SectionsModelImpl(
      {this.slider,
      final List<ProductModels>? deals,
      final List<ProductModels>? featuredproducts,
      this.image4col,
      final List<BrandsModel>? brands})
      : _deals = deals,
        _featuredproducts = featuredproducts,
        _brands = brands;

  factory _$SectionsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionsModelImplFromJson(json);

  @override
  final SliderModel? slider;
  final List<ProductModels>? _deals;
  @override
  List<ProductModels>? get deals {
    final value = _deals;
    if (value == null) return null;
    if (_deals is EqualUnmodifiableListView) return _deals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductModels>? _featuredproducts;
  @override
  List<ProductModels>? get featuredproducts {
    final value = _featuredproducts;
    if (value == null) return null;
    if (_featuredproducts is EqualUnmodifiableListView)
      return _featuredproducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Image4Col? image4col;
  final List<BrandsModel>? _brands;
  @override
  List<BrandsModel>? get brands {
    final value = _brands;
    if (value == null) return null;
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SectionsModel(slider: $slider, deals: $deals, featuredproducts: $featuredproducts, image4col: $image4col, brands: $brands)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionsModelImpl &&
            (identical(other.slider, slider) || other.slider == slider) &&
            const DeepCollectionEquality().equals(other._deals, _deals) &&
            const DeepCollectionEquality()
                .equals(other._featuredproducts, _featuredproducts) &&
            (identical(other.image4col, image4col) ||
                other.image4col == image4col) &&
            const DeepCollectionEquality().equals(other._brands, _brands));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      slider,
      const DeepCollectionEquality().hash(_deals),
      const DeepCollectionEquality().hash(_featuredproducts),
      image4col,
      const DeepCollectionEquality().hash(_brands));

  /// Create a copy of SectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionsModelImplCopyWith<_$SectionsModelImpl> get copyWith =>
      __$$SectionsModelImplCopyWithImpl<_$SectionsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionsModelImplToJson(
      this,
    );
  }
}

abstract class _SectionsModel implements SectionsModel {
  factory _SectionsModel(
      {final SliderModel? slider,
      final List<ProductModels>? deals,
      final List<ProductModels>? featuredproducts,
      final Image4Col? image4col,
      final List<BrandsModel>? brands}) = _$SectionsModelImpl;

  factory _SectionsModel.fromJson(Map<String, dynamic> json) =
      _$SectionsModelImpl.fromJson;

  @override
  SliderModel? get slider;
  @override
  List<ProductModels>? get deals;
  @override
  List<ProductModels>? get featuredproducts;
  @override
  Image4Col? get image4col;
  @override
  List<BrandsModel>? get brands;

  /// Create a copy of SectionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionsModelImplCopyWith<_$SectionsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) {
  return _ImageModel.fromJson(json);
}

/// @nodoc
mixin _$ImageModel {
  String? get path => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  @JsonKey(name: "link_type")
  String? get linkType => throw _privateConstructorUsedError;
  @JsonKey(name: "link_slug")
  String? get linkSlug => throw _privateConstructorUsedError;

  /// Serializes this ImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageModelCopyWith<ImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageModelCopyWith<$Res> {
  factory $ImageModelCopyWith(
          ImageModel value, $Res Function(ImageModel) then) =
      _$ImageModelCopyWithImpl<$Res, ImageModel>;
  @useResult
  $Res call(
      {String? path,
      String? link,
      @JsonKey(name: "link_type") String? linkType,
      @JsonKey(name: "link_slug") String? linkSlug});
}

/// @nodoc
class _$ImageModelCopyWithImpl<$Res, $Val extends ImageModel>
    implements $ImageModelCopyWith<$Res> {
  _$ImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? link = freezed,
    Object? linkType = freezed,
    Object? linkSlug = freezed,
  }) {
    return _then(_value.copyWith(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      linkType: freezed == linkType
          ? _value.linkType
          : linkType // ignore: cast_nullable_to_non_nullable
              as String?,
      linkSlug: freezed == linkSlug
          ? _value.linkSlug
          : linkSlug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageModelImplCopyWith<$Res>
    implements $ImageModelCopyWith<$Res> {
  factory _$$ImageModelImplCopyWith(
          _$ImageModelImpl value, $Res Function(_$ImageModelImpl) then) =
      __$$ImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? path,
      String? link,
      @JsonKey(name: "link_type") String? linkType,
      @JsonKey(name: "link_slug") String? linkSlug});
}

/// @nodoc
class __$$ImageModelImplCopyWithImpl<$Res>
    extends _$ImageModelCopyWithImpl<$Res, _$ImageModelImpl>
    implements _$$ImageModelImplCopyWith<$Res> {
  __$$ImageModelImplCopyWithImpl(
      _$ImageModelImpl _value, $Res Function(_$ImageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = freezed,
    Object? link = freezed,
    Object? linkType = freezed,
    Object? linkSlug = freezed,
  }) {
    return _then(_$ImageModelImpl(
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      linkType: freezed == linkType
          ? _value.linkType
          : linkType // ignore: cast_nullable_to_non_nullable
              as String?,
      linkSlug: freezed == linkSlug
          ? _value.linkSlug
          : linkSlug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageModelImpl implements _ImageModel {
  _$ImageModelImpl(
      {this.path,
      this.link,
      @JsonKey(name: "link_type") this.linkType,
      @JsonKey(name: "link_slug") this.linkSlug});

  factory _$ImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageModelImplFromJson(json);

  @override
  final String? path;
  @override
  final String? link;
  @override
  @JsonKey(name: "link_type")
  final String? linkType;
  @override
  @JsonKey(name: "link_slug")
  final String? linkSlug;

  @override
  String toString() {
    return 'ImageModel(path: $path, link: $link, linkType: $linkType, linkSlug: $linkSlug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageModelImpl &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.linkType, linkType) ||
                other.linkType == linkType) &&
            (identical(other.linkSlug, linkSlug) ||
                other.linkSlug == linkSlug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, path, link, linkType, linkSlug);

  /// Create a copy of ImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      __$$ImageModelImplCopyWithImpl<_$ImageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageModelImplToJson(
      this,
    );
  }
}

abstract class _ImageModel implements ImageModel {
  factory _ImageModel(
      {final String? path,
      final String? link,
      @JsonKey(name: "link_type") final String? linkType,
      @JsonKey(name: "link_slug") final String? linkSlug}) = _$ImageModelImpl;

  factory _ImageModel.fromJson(Map<String, dynamic> json) =
      _$ImageModelImpl.fromJson;

  @override
  String? get path;
  @override
  String? get link;
  @override
  @JsonKey(name: "link_type")
  String? get linkType;
  @override
  @JsonKey(name: "link_slug")
  String? get linkSlug;

  /// Create a copy of ImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageModelImplCopyWith<_$ImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SliderModel _$SliderModelFromJson(Map<String, dynamic> json) {
  return _SliderModel.fromJson(json);
}

/// @nodoc
mixin _$SliderModel {
  List<ImageModel>? get images => throw _privateConstructorUsedError;
  List<ImageModel>? get video => throw _privateConstructorUsedError;

  /// Serializes this SliderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SliderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SliderModelCopyWith<SliderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderModelCopyWith<$Res> {
  factory $SliderModelCopyWith(
          SliderModel value, $Res Function(SliderModel) then) =
      _$SliderModelCopyWithImpl<$Res, SliderModel>;
  @useResult
  $Res call({List<ImageModel>? images, List<ImageModel>? video});
}

/// @nodoc
class _$SliderModelCopyWithImpl<$Res, $Val extends SliderModel>
    implements $SliderModelCopyWith<$Res> {
  _$SliderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SliderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = freezed,
    Object? video = freezed,
  }) {
    return _then(_value.copyWith(
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SliderModelImplCopyWith<$Res>
    implements $SliderModelCopyWith<$Res> {
  factory _$$SliderModelImplCopyWith(
          _$SliderModelImpl value, $Res Function(_$SliderModelImpl) then) =
      __$$SliderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImageModel>? images, List<ImageModel>? video});
}

/// @nodoc
class __$$SliderModelImplCopyWithImpl<$Res>
    extends _$SliderModelCopyWithImpl<$Res, _$SliderModelImpl>
    implements _$$SliderModelImplCopyWith<$Res> {
  __$$SliderModelImplCopyWithImpl(
      _$SliderModelImpl _value, $Res Function(_$SliderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SliderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = freezed,
    Object? video = freezed,
  }) {
    return _then(_$SliderModelImpl(
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
      video: freezed == video
          ? _value._video
          : video // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SliderModelImpl implements _SliderModel {
  _$SliderModelImpl(
      {final List<ImageModel>? images, final List<ImageModel>? video})
      : _images = images,
        _video = video;

  factory _$SliderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderModelImplFromJson(json);

  final List<ImageModel>? _images;
  @override
  List<ImageModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImageModel>? _video;
  @override
  List<ImageModel>? get video {
    final value = _video;
    if (value == null) return null;
    if (_video is EqualUnmodifiableListView) return _video;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SliderModel(images: $images, video: $video)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderModelImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._video, _video));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_video));

  /// Create a copy of SliderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderModelImplCopyWith<_$SliderModelImpl> get copyWith =>
      __$$SliderModelImplCopyWithImpl<_$SliderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderModelImplToJson(
      this,
    );
  }
}

abstract class _SliderModel implements SliderModel {
  factory _SliderModel(
      {final List<ImageModel>? images,
      final List<ImageModel>? video}) = _$SliderModelImpl;

  factory _SliderModel.fromJson(Map<String, dynamic> json) =
      _$SliderModelImpl.fromJson;

  @override
  List<ImageModel>? get images;
  @override
  List<ImageModel>? get video;

  /// Create a copy of SliderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SliderModelImplCopyWith<_$SliderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image4Col _$Image4ColFromJson(Map<String, dynamic> json) {
  return _Image4Col.fromJson(json);
}

/// @nodoc
mixin _$Image4Col {
  List<ImageModel>? get images => throw _privateConstructorUsedError;

  /// Serializes this Image4Col to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Image4Col
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Image4ColCopyWith<Image4Col> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Image4ColCopyWith<$Res> {
  factory $Image4ColCopyWith(Image4Col value, $Res Function(Image4Col) then) =
      _$Image4ColCopyWithImpl<$Res, Image4Col>;
  @useResult
  $Res call({List<ImageModel>? images});
}

/// @nodoc
class _$Image4ColCopyWithImpl<$Res, $Val extends Image4Col>
    implements $Image4ColCopyWith<$Res> {
  _$Image4ColCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Image4Col
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Image4ColImplCopyWith<$Res>
    implements $Image4ColCopyWith<$Res> {
  factory _$$Image4ColImplCopyWith(
          _$Image4ColImpl value, $Res Function(_$Image4ColImpl) then) =
      __$$Image4ColImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImageModel>? images});
}

/// @nodoc
class __$$Image4ColImplCopyWithImpl<$Res>
    extends _$Image4ColCopyWithImpl<$Res, _$Image4ColImpl>
    implements _$$Image4ColImplCopyWith<$Res> {
  __$$Image4ColImplCopyWithImpl(
      _$Image4ColImpl _value, $Res Function(_$Image4ColImpl) _then)
      : super(_value, _then);

  /// Create a copy of Image4Col
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = freezed,
  }) {
    return _then(_$Image4ColImpl(
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Image4ColImpl implements _Image4Col {
  _$Image4ColImpl({final List<ImageModel>? images}) : _images = images;

  factory _$Image4ColImpl.fromJson(Map<String, dynamic> json) =>
      _$$Image4ColImplFromJson(json);

  final List<ImageModel>? _images;
  @override
  List<ImageModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Image4Col(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Image4ColImpl &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  /// Create a copy of Image4Col
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Image4ColImplCopyWith<_$Image4ColImpl> get copyWith =>
      __$$Image4ColImplCopyWithImpl<_$Image4ColImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Image4ColImplToJson(
      this,
    );
  }
}

abstract class _Image4Col implements Image4Col {
  factory _Image4Col({final List<ImageModel>? images}) = _$Image4ColImpl;

  factory _Image4Col.fromJson(Map<String, dynamic> json) =
      _$Image4ColImpl.fromJson;

  @override
  List<ImageModel>? get images;

  /// Create a copy of Image4Col
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Image4ColImplCopyWith<_$Image4ColImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandsModel _$BrandsModelFromJson(Map<String, dynamic> json) {
  return _BrandsModel.fromJson(json);
}

/// @nodoc
mixin _$BrandsModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this BrandsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandsModelCopyWith<BrandsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsModelCopyWith<$Res> {
  factory $BrandsModelCopyWith(
          BrandsModel value, $Res Function(BrandsModel) then) =
      _$BrandsModelCopyWithImpl<$Res, BrandsModel>;
  @useResult
  $Res call({int? id, String? name, String? logo, String? url});
}

/// @nodoc
class _$BrandsModelCopyWithImpl<$Res, $Val extends BrandsModel>
    implements $BrandsModelCopyWith<$Res> {
  _$BrandsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? url = freezed,
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
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandsModelImplCopyWith<$Res>
    implements $BrandsModelCopyWith<$Res> {
  factory _$$BrandsModelImplCopyWith(
          _$BrandsModelImpl value, $Res Function(_$BrandsModelImpl) then) =
      __$$BrandsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? logo, String? url});
}

/// @nodoc
class __$$BrandsModelImplCopyWithImpl<$Res>
    extends _$BrandsModelCopyWithImpl<$Res, _$BrandsModelImpl>
    implements _$$BrandsModelImplCopyWith<$Res> {
  __$$BrandsModelImplCopyWithImpl(
      _$BrandsModelImpl _value, $Res Function(_$BrandsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? url = freezed,
  }) {
    return _then(_$BrandsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandsModelImpl implements _BrandsModel {
  _$BrandsModelImpl({this.id, this.name, this.logo, this.url});

  factory _$BrandsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandsModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? logo;
  @override
  final String? url;

  @override
  String toString() {
    return 'BrandsModel(id: $id, name: $name, logo: $logo, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, logo, url);

  /// Create a copy of BrandsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandsModelImplCopyWith<_$BrandsModelImpl> get copyWith =>
      __$$BrandsModelImplCopyWithImpl<_$BrandsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandsModelImplToJson(
      this,
    );
  }
}

abstract class _BrandsModel implements BrandsModel {
  factory _BrandsModel(
      {final int? id,
      final String? name,
      final String? logo,
      final String? url}) = _$BrandsModelImpl;

  factory _BrandsModel.fromJson(Map<String, dynamic> json) =
      _$BrandsModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get logo;
  @override
  String? get url;

  /// Create a copy of BrandsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandsModelImplCopyWith<_$BrandsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

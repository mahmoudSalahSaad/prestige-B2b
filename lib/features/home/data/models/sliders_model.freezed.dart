// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sliders_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SlidersModel _$SlidersModelFromJson(Map<String, dynamic> json) {
  return _SlidersModel.fromJson(json);
}

/// @nodoc
mixin _$SlidersModel {
  int? get id => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  /// Serializes this SlidersModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SlidersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlidersModelCopyWith<SlidersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlidersModelCopyWith<$Res> {
  factory $SlidersModelCopyWith(
          SlidersModel value, $Res Function(SlidersModel) then) =
      _$SlidersModelCopyWithImpl<$Res, SlidersModel>;
  @useResult
  $Res call({int? id, List<String>? images, String? title, String? slug});
}

/// @nodoc
class _$SlidersModelCopyWithImpl<$Res, $Val extends SlidersModel>
    implements $SlidersModelCopyWith<$Res> {
  _$SlidersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlidersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? title = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SlidersModelImplCopyWith<$Res>
    implements $SlidersModelCopyWith<$Res> {
  factory _$$SlidersModelImplCopyWith(
          _$SlidersModelImpl value, $Res Function(_$SlidersModelImpl) then) =
      __$$SlidersModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, List<String>? images, String? title, String? slug});
}

/// @nodoc
class __$$SlidersModelImplCopyWithImpl<$Res>
    extends _$SlidersModelCopyWithImpl<$Res, _$SlidersModelImpl>
    implements _$$SlidersModelImplCopyWith<$Res> {
  __$$SlidersModelImplCopyWithImpl(
      _$SlidersModelImpl _value, $Res Function(_$SlidersModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlidersModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? images = freezed,
    Object? title = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$SlidersModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SlidersModelImpl implements _SlidersModel {
  _$SlidersModelImpl(
      {this.id, final List<String>? images, this.title, this.slug})
      : _images = images;

  factory _$SlidersModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SlidersModelImplFromJson(json);

  @override
  final int? id;
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
  final String? title;
  @override
  final String? slug;

  @override
  String toString() {
    return 'SlidersModel(id: $id, images: $images, title: $title, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlidersModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_images), title, slug);

  /// Create a copy of SlidersModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlidersModelImplCopyWith<_$SlidersModelImpl> get copyWith =>
      __$$SlidersModelImplCopyWithImpl<_$SlidersModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SlidersModelImplToJson(
      this,
    );
  }
}

abstract class _SlidersModel implements SlidersModel {
  factory _SlidersModel(
      {final int? id,
      final List<String>? images,
      final String? title,
      final String? slug}) = _$SlidersModelImpl;

  factory _SlidersModel.fromJson(Map<String, dynamic> json) =
      _$SlidersModelImpl.fromJson;

  @override
  int? get id;
  @override
  List<String>? get images;
  @override
  String? get title;
  @override
  String? get slug;

  /// Create a copy of SlidersModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlidersModelImplCopyWith<_$SlidersModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

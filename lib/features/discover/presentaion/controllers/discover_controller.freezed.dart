// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiscoverState {
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  CategoryModel? get selectedCategory => throw _privateConstructorUsedError;
  CategoryModel? get selectedSubCategory => throw _privateConstructorUsedError;
  ItemsModel? get items => throw _privateConstructorUsedError;

  /// Create a copy of DiscoverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscoverStateCopyWith<DiscoverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStateCopyWith<$Res> {
  factory $DiscoverStateCopyWith(
          DiscoverState value, $Res Function(DiscoverState) then) =
      _$DiscoverStateCopyWithImpl<$Res, DiscoverState>;
  @useResult
  $Res call(
      {List<CategoryModel> categories,
      CategoryModel? selectedCategory,
      CategoryModel? selectedSubCategory,
      ItemsModel? items});

  $CategoryModelCopyWith<$Res>? get selectedCategory;
  $CategoryModelCopyWith<$Res>? get selectedSubCategory;
  $ItemsModelCopyWith<$Res>? get items;
}

/// @nodoc
class _$DiscoverStateCopyWithImpl<$Res, $Val extends DiscoverState>
    implements $DiscoverStateCopyWith<$Res> {
  _$DiscoverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscoverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? selectedCategory = freezed,
    Object? selectedSubCategory = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      selectedSubCategory: freezed == selectedSubCategory
          ? _value.selectedSubCategory
          : selectedSubCategory // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as ItemsModel?,
    ) as $Val);
  }

  /// Create a copy of DiscoverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get selectedCategory {
    if (_value.selectedCategory == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.selectedCategory!, (value) {
      return _then(_value.copyWith(selectedCategory: value) as $Val);
    });
  }

  /// Create a copy of DiscoverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get selectedSubCategory {
    if (_value.selectedSubCategory == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.selectedSubCategory!, (value) {
      return _then(_value.copyWith(selectedSubCategory: value) as $Val);
    });
  }

  /// Create a copy of DiscoverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemsModelCopyWith<$Res>? get items {
    if (_value.items == null) {
      return null;
    }

    return $ItemsModelCopyWith<$Res>(_value.items!, (value) {
      return _then(_value.copyWith(items: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DiscoverStateImplCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$DiscoverStateImplCopyWith(
          _$DiscoverStateImpl value, $Res Function(_$DiscoverStateImpl) then) =
      __$$DiscoverStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CategoryModel> categories,
      CategoryModel? selectedCategory,
      CategoryModel? selectedSubCategory,
      ItemsModel? items});

  @override
  $CategoryModelCopyWith<$Res>? get selectedCategory;
  @override
  $CategoryModelCopyWith<$Res>? get selectedSubCategory;
  @override
  $ItemsModelCopyWith<$Res>? get items;
}

/// @nodoc
class __$$DiscoverStateImplCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$DiscoverStateImpl>
    implements _$$DiscoverStateImplCopyWith<$Res> {
  __$$DiscoverStateImplCopyWithImpl(
      _$DiscoverStateImpl _value, $Res Function(_$DiscoverStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscoverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? selectedCategory = freezed,
    Object? selectedSubCategory = freezed,
    Object? items = freezed,
  }) {
    return _then(_$DiscoverStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      selectedSubCategory: freezed == selectedSubCategory
          ? _value.selectedSubCategory
          : selectedSubCategory // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as ItemsModel?,
    ));
  }
}

/// @nodoc

class _$DiscoverStateImpl implements _DiscoverState {
  _$DiscoverStateImpl(
      {final List<CategoryModel> categories = const [],
      this.selectedCategory,
      this.selectedSubCategory,
      this.items})
      : _categories = categories;

  final List<CategoryModel> _categories;
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final CategoryModel? selectedCategory;
  @override
  final CategoryModel? selectedSubCategory;
  @override
  final ItemsModel? items;

  @override
  String toString() {
    return 'DiscoverState(categories: $categories, selectedCategory: $selectedCategory, selectedSubCategory: $selectedSubCategory, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            (identical(other.selectedSubCategory, selectedSubCategory) ||
                other.selectedSubCategory == selectedSubCategory) &&
            (identical(other.items, items) || other.items == items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      selectedCategory,
      selectedSubCategory,
      items);

  /// Create a copy of DiscoverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverStateImplCopyWith<_$DiscoverStateImpl> get copyWith =>
      __$$DiscoverStateImplCopyWithImpl<_$DiscoverStateImpl>(this, _$identity);
}

abstract class _DiscoverState implements DiscoverState {
  factory _DiscoverState(
      {final List<CategoryModel> categories,
      final CategoryModel? selectedCategory,
      final CategoryModel? selectedSubCategory,
      final ItemsModel? items}) = _$DiscoverStateImpl;

  @override
  List<CategoryModel> get categories;
  @override
  CategoryModel? get selectedCategory;
  @override
  CategoryModel? get selectedSubCategory;
  @override
  ItemsModel? get items;

  /// Create a copy of DiscoverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscoverStateImplCopyWith<_$DiscoverStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

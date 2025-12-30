// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_products_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiscoverProductsState {
  List<ProductModels>? get products => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int? get perPage => throw _privateConstructorUsedError;
  String? get direction =>
      throw _privateConstructorUsedError; // 'asc' or 'desc'
  String? get search => throw _privateConstructorUsedError;
  int? get selectedCategoryId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  /// Create a copy of DiscoverProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscoverProductsStateCopyWith<DiscoverProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverProductsStateCopyWith<$Res> {
  factory $DiscoverProductsStateCopyWith(DiscoverProductsState value,
          $Res Function(DiscoverProductsState) then) =
      _$DiscoverProductsStateCopyWithImpl<$Res, DiscoverProductsState>;
  @useResult
  $Res call(
      {List<ProductModels>? products,
      int page,
      int? perPage,
      String? direction,
      String? search,
      int? selectedCategoryId,
      bool isLoading,
      bool hasMore});
}

/// @nodoc
class _$DiscoverProductsStateCopyWithImpl<$Res,
        $Val extends DiscoverProductsState>
    implements $DiscoverProductsStateCopyWith<$Res> {
  _$DiscoverProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscoverProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? page = null,
    Object? perPage = freezed,
    Object? direction = freezed,
    Object? search = freezed,
    Object? selectedCategoryId = freezed,
    Object? isLoading = null,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModels>?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategoryId: freezed == selectedCategoryId
          ? _value.selectedCategoryId
          : selectedCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscoverProductsStateImplCopyWith<$Res>
    implements $DiscoverProductsStateCopyWith<$Res> {
  factory _$$DiscoverProductsStateImplCopyWith(
          _$DiscoverProductsStateImpl value,
          $Res Function(_$DiscoverProductsStateImpl) then) =
      __$$DiscoverProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductModels>? products,
      int page,
      int? perPage,
      String? direction,
      String? search,
      int? selectedCategoryId,
      bool isLoading,
      bool hasMore});
}

/// @nodoc
class __$$DiscoverProductsStateImplCopyWithImpl<$Res>
    extends _$DiscoverProductsStateCopyWithImpl<$Res,
        _$DiscoverProductsStateImpl>
    implements _$$DiscoverProductsStateImplCopyWith<$Res> {
  __$$DiscoverProductsStateImplCopyWithImpl(_$DiscoverProductsStateImpl _value,
      $Res Function(_$DiscoverProductsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscoverProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? page = null,
    Object? perPage = freezed,
    Object? direction = freezed,
    Object? search = freezed,
    Object? selectedCategoryId = freezed,
    Object? isLoading = null,
    Object? hasMore = null,
  }) {
    return _then(_$DiscoverProductsStateImpl(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModels>?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as String?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCategoryId: freezed == selectedCategoryId
          ? _value.selectedCategoryId
          : selectedCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DiscoverProductsStateImpl implements _DiscoverProductsState {
  _$DiscoverProductsStateImpl(
      {final List<ProductModels>? products = const [],
      this.page = 1,
      this.perPage = 20,
      this.direction,
      this.search,
      this.selectedCategoryId,
      this.isLoading = false,
      this.hasMore = true})
      : _products = products;

  final List<ProductModels>? _products;
  @override
  @JsonKey()
  List<ProductModels>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int? perPage;
  @override
  final String? direction;
// 'asc' or 'desc'
  @override
  final String? search;
  @override
  final int? selectedCategoryId;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'DiscoverProductsState(products: $products, page: $page, perPage: $perPage, direction: $direction, search: $search, selectedCategoryId: $selectedCategoryId, isLoading: $isLoading, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscoverProductsStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.search, search) || other.search == search) &&
            (identical(other.selectedCategoryId, selectedCategoryId) ||
                other.selectedCategoryId == selectedCategoryId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      page,
      perPage,
      direction,
      search,
      selectedCategoryId,
      isLoading,
      hasMore);

  /// Create a copy of DiscoverProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscoverProductsStateImplCopyWith<_$DiscoverProductsStateImpl>
      get copyWith => __$$DiscoverProductsStateImplCopyWithImpl<
          _$DiscoverProductsStateImpl>(this, _$identity);
}

abstract class _DiscoverProductsState implements DiscoverProductsState {
  factory _DiscoverProductsState(
      {final List<ProductModels>? products,
      final int page,
      final int? perPage,
      final String? direction,
      final String? search,
      final int? selectedCategoryId,
      final bool isLoading,
      final bool hasMore}) = _$DiscoverProductsStateImpl;

  @override
  List<ProductModels>? get products;
  @override
  int get page;
  @override
  int? get perPage;
  @override
  String? get direction; // 'asc' or 'desc'
  @override
  String? get search;
  @override
  int? get selectedCategoryId;
  @override
  bool get isLoading;
  @override
  bool get hasMore;

  /// Create a copy of DiscoverProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscoverProductsStateImplCopyWith<_$DiscoverProductsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

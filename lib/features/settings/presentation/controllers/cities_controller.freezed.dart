// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cities_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CitiesState {
  List<CityModel>? get cities => throw _privateConstructorUsedError;
  CityModel? get selectedCity => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  bool get hasMoreData => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;

  /// Create a copy of CitiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CitiesStateCopyWith<CitiesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesStateCopyWith<$Res> {
  factory $CitiesStateCopyWith(
          CitiesState value, $Res Function(CitiesState) then) =
      _$CitiesStateCopyWithImpl<$Res, CitiesState>;
  @useResult
  $Res call(
      {List<CityModel>? cities,
      CityModel? selectedCity,
      int currentPage,
      int pageSize,
      bool hasMoreData,
      bool isLoadingMore});

  $CityModelCopyWith<$Res>? get selectedCity;
}

/// @nodoc
class _$CitiesStateCopyWithImpl<$Res, $Val extends CitiesState>
    implements $CitiesStateCopyWith<$Res> {
  _$CitiesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CitiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = freezed,
    Object? selectedCity = freezed,
    Object? currentPage = null,
    Object? pageSize = null,
    Object? hasMoreData = null,
    Object? isLoadingMore = null,
  }) {
    return _then(_value.copyWith(
      cities: freezed == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityModel>?,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      hasMoreData: null == hasMoreData
          ? _value.hasMoreData
          : hasMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of CitiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get selectedCity {
    if (_value.selectedCity == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_value.selectedCity!, (value) {
      return _then(_value.copyWith(selectedCity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitiesStateImplCopyWith<$Res>
    implements $CitiesStateCopyWith<$Res> {
  factory _$$CitiesStateImplCopyWith(
          _$CitiesStateImpl value, $Res Function(_$CitiesStateImpl) then) =
      __$$CitiesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CityModel>? cities,
      CityModel? selectedCity,
      int currentPage,
      int pageSize,
      bool hasMoreData,
      bool isLoadingMore});

  @override
  $CityModelCopyWith<$Res>? get selectedCity;
}

/// @nodoc
class __$$CitiesStateImplCopyWithImpl<$Res>
    extends _$CitiesStateCopyWithImpl<$Res, _$CitiesStateImpl>
    implements _$$CitiesStateImplCopyWith<$Res> {
  __$$CitiesStateImplCopyWithImpl(
      _$CitiesStateImpl _value, $Res Function(_$CitiesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CitiesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = freezed,
    Object? selectedCity = freezed,
    Object? currentPage = null,
    Object? pageSize = null,
    Object? hasMoreData = null,
    Object? isLoadingMore = null,
  }) {
    return _then(_$CitiesStateImpl(
      cities: freezed == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<CityModel>?,
      selectedCity: freezed == selectedCity
          ? _value.selectedCity
          : selectedCity // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      hasMoreData: null == hasMoreData
          ? _value.hasMoreData
          : hasMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CitiesStateImpl implements _CitiesState {
  _$CitiesStateImpl(
      {final List<CityModel>? cities = const [],
      this.selectedCity,
      this.currentPage = 1,
      this.pageSize = 10,
      this.hasMoreData = false,
      this.isLoadingMore = false})
      : _cities = cities;

  final List<CityModel>? _cities;
  @override
  @JsonKey()
  List<CityModel>? get cities {
    final value = _cities;
    if (value == null) return null;
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CityModel? selectedCity;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey()
  final bool hasMoreData;
  @override
  @JsonKey()
  final bool isLoadingMore;

  @override
  String toString() {
    return 'CitiesState(cities: $cities, selectedCity: $selectedCity, currentPage: $currentPage, pageSize: $pageSize, hasMoreData: $hasMoreData, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitiesStateImpl &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            (identical(other.selectedCity, selectedCity) ||
                other.selectedCity == selectedCity) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.hasMoreData, hasMoreData) ||
                other.hasMoreData == hasMoreData) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cities),
      selectedCity,
      currentPage,
      pageSize,
      hasMoreData,
      isLoadingMore);

  /// Create a copy of CitiesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CitiesStateImplCopyWith<_$CitiesStateImpl> get copyWith =>
      __$$CitiesStateImplCopyWithImpl<_$CitiesStateImpl>(this, _$identity);
}

abstract class _CitiesState implements CitiesState {
  factory _CitiesState(
      {final List<CityModel>? cities,
      final CityModel? selectedCity,
      final int currentPage,
      final int pageSize,
      final bool hasMoreData,
      final bool isLoadingMore}) = _$CitiesStateImpl;

  @override
  List<CityModel>? get cities;
  @override
  CityModel? get selectedCity;
  @override
  int get currentPage;
  @override
  int get pageSize;
  @override
  bool get hasMoreData;
  @override
  bool get isLoadingMore;

  /// Create a copy of CitiesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CitiesStateImplCopyWith<_$CitiesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

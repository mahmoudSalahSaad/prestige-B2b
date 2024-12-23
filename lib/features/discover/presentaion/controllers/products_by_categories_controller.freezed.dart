// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_by_categories_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsByCategoriesState {
  ItemsModel? get items => throw _privateConstructorUsedError;

  /// Create a copy of ProductsByCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsByCategoriesStateCopyWith<ProductsByCategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsByCategoriesStateCopyWith<$Res> {
  factory $ProductsByCategoriesStateCopyWith(ProductsByCategoriesState value,
          $Res Function(ProductsByCategoriesState) then) =
      _$ProductsByCategoriesStateCopyWithImpl<$Res, ProductsByCategoriesState>;
  @useResult
  $Res call({ItemsModel? items});

  $ItemsModelCopyWith<$Res>? get items;
}

/// @nodoc
class _$ProductsByCategoriesStateCopyWithImpl<$Res,
        $Val extends ProductsByCategoriesState>
    implements $ProductsByCategoriesStateCopyWith<$Res> {
  _$ProductsByCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsByCategoriesState
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
              as ItemsModel?,
    ) as $Val);
  }

  /// Create a copy of ProductsByCategoriesState
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
abstract class _$$ProductsByCategoriesStateImplCopyWith<$Res>
    implements $ProductsByCategoriesStateCopyWith<$Res> {
  factory _$$ProductsByCategoriesStateImplCopyWith(
          _$ProductsByCategoriesStateImpl value,
          $Res Function(_$ProductsByCategoriesStateImpl) then) =
      __$$ProductsByCategoriesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ItemsModel? items});

  @override
  $ItemsModelCopyWith<$Res>? get items;
}

/// @nodoc
class __$$ProductsByCategoriesStateImplCopyWithImpl<$Res>
    extends _$ProductsByCategoriesStateCopyWithImpl<$Res,
        _$ProductsByCategoriesStateImpl>
    implements _$$ProductsByCategoriesStateImplCopyWith<$Res> {
  __$$ProductsByCategoriesStateImplCopyWithImpl(
      _$ProductsByCategoriesStateImpl _value,
      $Res Function(_$ProductsByCategoriesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsByCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$ProductsByCategoriesStateImpl(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as ItemsModel?,
    ));
  }
}

/// @nodoc

class _$ProductsByCategoriesStateImpl implements _ProductsByCategoriesState {
  _$ProductsByCategoriesStateImpl({this.items});

  @override
  final ItemsModel? items;

  @override
  String toString() {
    return 'ProductsByCategoriesState(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsByCategoriesStateImpl &&
            (identical(other.items, items) || other.items == items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, items);

  /// Create a copy of ProductsByCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsByCategoriesStateImplCopyWith<_$ProductsByCategoriesStateImpl>
      get copyWith => __$$ProductsByCategoriesStateImplCopyWithImpl<
          _$ProductsByCategoriesStateImpl>(this, _$identity);
}

abstract class _ProductsByCategoriesState implements ProductsByCategoriesState {
  factory _ProductsByCategoriesState({final ItemsModel? items}) =
      _$ProductsByCategoriesStateImpl;

  @override
  ItemsModel? get items;

  /// Create a copy of ProductsByCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsByCategoriesStateImplCopyWith<_$ProductsByCategoriesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

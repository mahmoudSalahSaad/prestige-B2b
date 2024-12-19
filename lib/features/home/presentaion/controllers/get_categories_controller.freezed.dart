// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_categories_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetCategoriesState {
  List<CategoryModel> get categories => throw _privateConstructorUsedError;

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetCategoriesStateCopyWith<GetCategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCategoriesStateCopyWith<$Res> {
  factory $GetCategoriesStateCopyWith(
          GetCategoriesState value, $Res Function(GetCategoriesState) then) =
      _$GetCategoriesStateCopyWithImpl<$Res, GetCategoriesState>;
  @useResult
  $Res call({List<CategoryModel> categories});
}

/// @nodoc
class _$GetCategoriesStateCopyWithImpl<$Res, $Val extends GetCategoriesState>
    implements $GetCategoriesStateCopyWith<$Res> {
  _$GetCategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCategoriesStateImplCopyWith<$Res>
    implements $GetCategoriesStateCopyWith<$Res> {
  factory _$$GetCategoriesStateImplCopyWith(_$GetCategoriesStateImpl value,
          $Res Function(_$GetCategoriesStateImpl) then) =
      __$$GetCategoriesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryModel> categories});
}

/// @nodoc
class __$$GetCategoriesStateImplCopyWithImpl<$Res>
    extends _$GetCategoriesStateCopyWithImpl<$Res, _$GetCategoriesStateImpl>
    implements _$$GetCategoriesStateImplCopyWith<$Res> {
  __$$GetCategoriesStateImplCopyWithImpl(_$GetCategoriesStateImpl _value,
      $Res Function(_$GetCategoriesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$GetCategoriesStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

/// @nodoc

class _$GetCategoriesStateImpl implements _GetCategoriesState {
  _$GetCategoriesStateImpl({final List<CategoryModel> categories = const []})
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
  String toString() {
    return 'GetCategoriesState(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoriesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoriesStateImplCopyWith<_$GetCategoriesStateImpl> get copyWith =>
      __$$GetCategoriesStateImplCopyWithImpl<_$GetCategoriesStateImpl>(
          this, _$identity);
}

abstract class _GetCategoriesState implements GetCategoriesState {
  factory _GetCategoriesState({final List<CategoryModel> categories}) =
      _$GetCategoriesStateImpl;

  @override
  List<CategoryModel> get categories;

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCategoriesStateImplCopyWith<_$GetCategoriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

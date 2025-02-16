// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_methods_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShippingMethodsState {
  List<ShippingMethodModel> get shippingMethods =>
      throw _privateConstructorUsedError; // List<ShippingMethodModel>
  ShippingMethodModel? get selectedShippingMethod =>
      throw _privateConstructorUsedError;

  /// Create a copy of ShippingMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingMethodsStateCopyWith<ShippingMethodsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingMethodsStateCopyWith<$Res> {
  factory $ShippingMethodsStateCopyWith(ShippingMethodsState value,
          $Res Function(ShippingMethodsState) then) =
      _$ShippingMethodsStateCopyWithImpl<$Res, ShippingMethodsState>;
  @useResult
  $Res call(
      {List<ShippingMethodModel> shippingMethods,
      ShippingMethodModel? selectedShippingMethod});

  $ShippingMethodModelCopyWith<$Res>? get selectedShippingMethod;
}

/// @nodoc
class _$ShippingMethodsStateCopyWithImpl<$Res,
        $Val extends ShippingMethodsState>
    implements $ShippingMethodsStateCopyWith<$Res> {
  _$ShippingMethodsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingMethods = null,
    Object? selectedShippingMethod = freezed,
  }) {
    return _then(_value.copyWith(
      shippingMethods: null == shippingMethods
          ? _value.shippingMethods
          : shippingMethods // ignore: cast_nullable_to_non_nullable
              as List<ShippingMethodModel>,
      selectedShippingMethod: freezed == selectedShippingMethod
          ? _value.selectedShippingMethod
          : selectedShippingMethod // ignore: cast_nullable_to_non_nullable
              as ShippingMethodModel?,
    ) as $Val);
  }

  /// Create a copy of ShippingMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShippingMethodModelCopyWith<$Res>? get selectedShippingMethod {
    if (_value.selectedShippingMethod == null) {
      return null;
    }

    return $ShippingMethodModelCopyWith<$Res>(_value.selectedShippingMethod!,
        (value) {
      return _then(_value.copyWith(selectedShippingMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShippingMethodsStateImplCopyWith<$Res>
    implements $ShippingMethodsStateCopyWith<$Res> {
  factory _$$ShippingMethodsStateImplCopyWith(_$ShippingMethodsStateImpl value,
          $Res Function(_$ShippingMethodsStateImpl) then) =
      __$$ShippingMethodsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ShippingMethodModel> shippingMethods,
      ShippingMethodModel? selectedShippingMethod});

  @override
  $ShippingMethodModelCopyWith<$Res>? get selectedShippingMethod;
}

/// @nodoc
class __$$ShippingMethodsStateImplCopyWithImpl<$Res>
    extends _$ShippingMethodsStateCopyWithImpl<$Res, _$ShippingMethodsStateImpl>
    implements _$$ShippingMethodsStateImplCopyWith<$Res> {
  __$$ShippingMethodsStateImplCopyWithImpl(_$ShippingMethodsStateImpl _value,
      $Res Function(_$ShippingMethodsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShippingMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shippingMethods = null,
    Object? selectedShippingMethod = freezed,
  }) {
    return _then(_$ShippingMethodsStateImpl(
      shippingMethods: null == shippingMethods
          ? _value._shippingMethods
          : shippingMethods // ignore: cast_nullable_to_non_nullable
              as List<ShippingMethodModel>,
      selectedShippingMethod: freezed == selectedShippingMethod
          ? _value.selectedShippingMethod
          : selectedShippingMethod // ignore: cast_nullable_to_non_nullable
              as ShippingMethodModel?,
    ));
  }
}

/// @nodoc

class _$ShippingMethodsStateImpl implements _ShippingMethodsState {
  _$ShippingMethodsStateImpl(
      {final List<ShippingMethodModel> shippingMethods = const [],
      this.selectedShippingMethod})
      : _shippingMethods = shippingMethods;

  final List<ShippingMethodModel> _shippingMethods;
  @override
  @JsonKey()
  List<ShippingMethodModel> get shippingMethods {
    if (_shippingMethods is EqualUnmodifiableListView) return _shippingMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shippingMethods);
  }

// List<ShippingMethodModel>
  @override
  final ShippingMethodModel? selectedShippingMethod;

  @override
  String toString() {
    return 'ShippingMethodsState(shippingMethods: $shippingMethods, selectedShippingMethod: $selectedShippingMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingMethodsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._shippingMethods, _shippingMethods) &&
            (identical(other.selectedShippingMethod, selectedShippingMethod) ||
                other.selectedShippingMethod == selectedShippingMethod));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_shippingMethods),
      selectedShippingMethod);

  /// Create a copy of ShippingMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingMethodsStateImplCopyWith<_$ShippingMethodsStateImpl>
      get copyWith =>
          __$$ShippingMethodsStateImplCopyWithImpl<_$ShippingMethodsStateImpl>(
              this, _$identity);
}

abstract class _ShippingMethodsState implements ShippingMethodsState {
  factory _ShippingMethodsState(
          {final List<ShippingMethodModel> shippingMethods,
          final ShippingMethodModel? selectedShippingMethod}) =
      _$ShippingMethodsStateImpl;

  @override
  List<ShippingMethodModel> get shippingMethods; // List<ShippingMethodModel>
  @override
  ShippingMethodModel? get selectedShippingMethod;

  /// Create a copy of ShippingMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingMethodsStateImplCopyWith<_$ShippingMethodsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

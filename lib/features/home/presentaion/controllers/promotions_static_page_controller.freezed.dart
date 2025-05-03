// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotions_static_page_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PromotionsStaticPageState {
  PromotionsModel? get promtions => throw _privateConstructorUsedError;

  /// Create a copy of PromotionsStaticPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromotionsStaticPageStateCopyWith<PromotionsStaticPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionsStaticPageStateCopyWith<$Res> {
  factory $PromotionsStaticPageStateCopyWith(PromotionsStaticPageState value,
          $Res Function(PromotionsStaticPageState) then) =
      _$PromotionsStaticPageStateCopyWithImpl<$Res, PromotionsStaticPageState>;
  @useResult
  $Res call({PromotionsModel? promtions});

  $PromotionsModelCopyWith<$Res>? get promtions;
}

/// @nodoc
class _$PromotionsStaticPageStateCopyWithImpl<$Res,
        $Val extends PromotionsStaticPageState>
    implements $PromotionsStaticPageStateCopyWith<$Res> {
  _$PromotionsStaticPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromotionsStaticPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promtions = freezed,
  }) {
    return _then(_value.copyWith(
      promtions: freezed == promtions
          ? _value.promtions
          : promtions // ignore: cast_nullable_to_non_nullable
              as PromotionsModel?,
    ) as $Val);
  }

  /// Create a copy of PromotionsStaticPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PromotionsModelCopyWith<$Res>? get promtions {
    if (_value.promtions == null) {
      return null;
    }

    return $PromotionsModelCopyWith<$Res>(_value.promtions!, (value) {
      return _then(_value.copyWith(promtions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PromotionsStaticPageStateImplCopyWith<$Res>
    implements $PromotionsStaticPageStateCopyWith<$Res> {
  factory _$$PromotionsStaticPageStateImplCopyWith(
          _$PromotionsStaticPageStateImpl value,
          $Res Function(_$PromotionsStaticPageStateImpl) then) =
      __$$PromotionsStaticPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PromotionsModel? promtions});

  @override
  $PromotionsModelCopyWith<$Res>? get promtions;
}

/// @nodoc
class __$$PromotionsStaticPageStateImplCopyWithImpl<$Res>
    extends _$PromotionsStaticPageStateCopyWithImpl<$Res,
        _$PromotionsStaticPageStateImpl>
    implements _$$PromotionsStaticPageStateImplCopyWith<$Res> {
  __$$PromotionsStaticPageStateImplCopyWithImpl(
      _$PromotionsStaticPageStateImpl _value,
      $Res Function(_$PromotionsStaticPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromotionsStaticPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promtions = freezed,
  }) {
    return _then(_$PromotionsStaticPageStateImpl(
      promtions: freezed == promtions
          ? _value.promtions
          : promtions // ignore: cast_nullable_to_non_nullable
              as PromotionsModel?,
    ));
  }
}

/// @nodoc

class _$PromotionsStaticPageStateImpl implements _PromotionsStaticPageState {
  _$PromotionsStaticPageStateImpl({this.promtions});

  @override
  final PromotionsModel? promtions;

  @override
  String toString() {
    return 'PromotionsStaticPageState(promtions: $promtions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionsStaticPageStateImpl &&
            (identical(other.promtions, promtions) ||
                other.promtions == promtions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, promtions);

  /// Create a copy of PromotionsStaticPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromotionsStaticPageStateImplCopyWith<_$PromotionsStaticPageStateImpl>
      get copyWith => __$$PromotionsStaticPageStateImplCopyWithImpl<
          _$PromotionsStaticPageStateImpl>(this, _$identity);
}

abstract class _PromotionsStaticPageState implements PromotionsStaticPageState {
  factory _PromotionsStaticPageState({final PromotionsModel? promtions}) =
      _$PromotionsStaticPageStateImpl;

  @override
  PromotionsModel? get promtions;

  /// Create a copy of PromotionsStaticPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromotionsStaticPageStateImplCopyWith<_$PromotionsStaticPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

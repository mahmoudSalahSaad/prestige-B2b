// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pormotion_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PormotionState {
  List<PormotionModel>? get pormotions => throw _privateConstructorUsedError;

  /// Create a copy of PormotionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PormotionStateCopyWith<PormotionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PormotionStateCopyWith<$Res> {
  factory $PormotionStateCopyWith(
          PormotionState value, $Res Function(PormotionState) then) =
      _$PormotionStateCopyWithImpl<$Res, PormotionState>;
  @useResult
  $Res call({List<PormotionModel>? pormotions});
}

/// @nodoc
class _$PormotionStateCopyWithImpl<$Res, $Val extends PormotionState>
    implements $PormotionStateCopyWith<$Res> {
  _$PormotionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PormotionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pormotions = freezed,
  }) {
    return _then(_value.copyWith(
      pormotions: freezed == pormotions
          ? _value.pormotions
          : pormotions // ignore: cast_nullable_to_non_nullable
              as List<PormotionModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PormotionStateImplCopyWith<$Res>
    implements $PormotionStateCopyWith<$Res> {
  factory _$$PormotionStateImplCopyWith(_$PormotionStateImpl value,
          $Res Function(_$PormotionStateImpl) then) =
      __$$PormotionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PormotionModel>? pormotions});
}

/// @nodoc
class __$$PormotionStateImplCopyWithImpl<$Res>
    extends _$PormotionStateCopyWithImpl<$Res, _$PormotionStateImpl>
    implements _$$PormotionStateImplCopyWith<$Res> {
  __$$PormotionStateImplCopyWithImpl(
      _$PormotionStateImpl _value, $Res Function(_$PormotionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PormotionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pormotions = freezed,
  }) {
    return _then(_$PormotionStateImpl(
      pormotions: freezed == pormotions
          ? _value._pormotions
          : pormotions // ignore: cast_nullable_to_non_nullable
              as List<PormotionModel>?,
    ));
  }
}

/// @nodoc

class _$PormotionStateImpl implements _PormotionState {
  _$PormotionStateImpl({final List<PormotionModel>? pormotions = const []})
      : _pormotions = pormotions;

  final List<PormotionModel>? _pormotions;
  @override
  @JsonKey()
  List<PormotionModel>? get pormotions {
    final value = _pormotions;
    if (value == null) return null;
    if (_pormotions is EqualUnmodifiableListView) return _pormotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PormotionState(pormotions: $pormotions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PormotionStateImpl &&
            const DeepCollectionEquality()
                .equals(other._pormotions, _pormotions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pormotions));

  /// Create a copy of PormotionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PormotionStateImplCopyWith<_$PormotionStateImpl> get copyWith =>
      __$$PormotionStateImplCopyWithImpl<_$PormotionStateImpl>(
          this, _$identity);
}

abstract class _PormotionState implements PormotionState {
  factory _PormotionState({final List<PormotionModel>? pormotions}) =
      _$PormotionStateImpl;

  @override
  List<PormotionModel>? get pormotions;

  /// Create a copy of PormotionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PormotionStateImplCopyWith<_$PormotionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sliders_controllers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SlidersState {
  List<SlidersModel> get sliders => throw _privateConstructorUsedError;

  /// Create a copy of SlidersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SlidersStateCopyWith<SlidersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlidersStateCopyWith<$Res> {
  factory $SlidersStateCopyWith(
          SlidersState value, $Res Function(SlidersState) then) =
      _$SlidersStateCopyWithImpl<$Res, SlidersState>;
  @useResult
  $Res call({List<SlidersModel> sliders});
}

/// @nodoc
class _$SlidersStateCopyWithImpl<$Res, $Val extends SlidersState>
    implements $SlidersStateCopyWith<$Res> {
  _$SlidersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlidersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sliders = null,
  }) {
    return _then(_value.copyWith(
      sliders: null == sliders
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<SlidersModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SlidersStateImplCopyWith<$Res>
    implements $SlidersStateCopyWith<$Res> {
  factory _$$SlidersStateImplCopyWith(
          _$SlidersStateImpl value, $Res Function(_$SlidersStateImpl) then) =
      __$$SlidersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SlidersModel> sliders});
}

/// @nodoc
class __$$SlidersStateImplCopyWithImpl<$Res>
    extends _$SlidersStateCopyWithImpl<$Res, _$SlidersStateImpl>
    implements _$$SlidersStateImplCopyWith<$Res> {
  __$$SlidersStateImplCopyWithImpl(
      _$SlidersStateImpl _value, $Res Function(_$SlidersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlidersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sliders = null,
  }) {
    return _then(_$SlidersStateImpl(
      sliders: null == sliders
          ? _value._sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<SlidersModel>,
    ));
  }
}

/// @nodoc

class _$SlidersStateImpl implements _SlidersState {
  _$SlidersStateImpl({final List<SlidersModel> sliders = const []})
      : _sliders = sliders;

  final List<SlidersModel> _sliders;
  @override
  @JsonKey()
  List<SlidersModel> get sliders {
    if (_sliders is EqualUnmodifiableListView) return _sliders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sliders);
  }

  @override
  String toString() {
    return 'SlidersState(sliders: $sliders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlidersStateImpl &&
            const DeepCollectionEquality().equals(other._sliders, _sliders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sliders));

  /// Create a copy of SlidersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlidersStateImplCopyWith<_$SlidersStateImpl> get copyWith =>
      __$$SlidersStateImplCopyWithImpl<_$SlidersStateImpl>(this, _$identity);
}

abstract class _SlidersState implements SlidersState {
  factory _SlidersState({final List<SlidersModel> sliders}) =
      _$SlidersStateImpl;

  @override
  List<SlidersModel> get sliders;

  /// Create a copy of SlidersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlidersStateImplCopyWith<_$SlidersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

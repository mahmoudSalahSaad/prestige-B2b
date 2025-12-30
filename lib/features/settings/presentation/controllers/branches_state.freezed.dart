// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branches_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BranchesState {
  List<String> get branches => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of BranchesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BranchesStateCopyWith<BranchesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchesStateCopyWith<$Res> {
  factory $BranchesStateCopyWith(
          BranchesState value, $Res Function(BranchesState) then) =
      _$BranchesStateCopyWithImpl<$Res, BranchesState>;
  @useResult
  $Res call(
      {List<String> branches,
      bool isLoading,
      bool hasError,
      String? errorMessage});
}

/// @nodoc
class _$BranchesStateCopyWithImpl<$Res, $Val extends BranchesState>
    implements $BranchesStateCopyWith<$Res> {
  _$BranchesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BranchesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branches = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      branches: null == branches
          ? _value.branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BranchesStateImplCopyWith<$Res>
    implements $BranchesStateCopyWith<$Res> {
  factory _$$BranchesStateImplCopyWith(
          _$BranchesStateImpl value, $Res Function(_$BranchesStateImpl) then) =
      __$$BranchesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> branches,
      bool isLoading,
      bool hasError,
      String? errorMessage});
}

/// @nodoc
class __$$BranchesStateImplCopyWithImpl<$Res>
    extends _$BranchesStateCopyWithImpl<$Res, _$BranchesStateImpl>
    implements _$$BranchesStateImplCopyWith<$Res> {
  __$$BranchesStateImplCopyWithImpl(
      _$BranchesStateImpl _value, $Res Function(_$BranchesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BranchesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branches = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$BranchesStateImpl(
      branches: null == branches
          ? _value._branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BranchesStateImpl implements _BranchesState {
  const _$BranchesStateImpl(
      {final List<String> branches = const [],
      this.isLoading = false,
      this.hasError = false,
      this.errorMessage})
      : _branches = branches;

  final List<String> _branches;
  @override
  @JsonKey()
  List<String> get branches {
    if (_branches is EqualUnmodifiableListView) return _branches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branches);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasError;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'BranchesState(branches: $branches, isLoading: $isLoading, hasError: $hasError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchesStateImpl &&
            const DeepCollectionEquality().equals(other._branches, _branches) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_branches),
      isLoading,
      hasError,
      errorMessage);

  /// Create a copy of BranchesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BranchesStateImplCopyWith<_$BranchesStateImpl> get copyWith =>
      __$$BranchesStateImplCopyWithImpl<_$BranchesStateImpl>(this, _$identity);
}

abstract class _BranchesState implements BranchesState {
  const factory _BranchesState(
      {final List<String> branches,
      final bool isLoading,
      final bool hasError,
      final String? errorMessage}) = _$BranchesStateImpl;

  @override
  List<String> get branches;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String? get errorMessage;

  /// Create a copy of BranchesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BranchesStateImplCopyWith<_$BranchesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

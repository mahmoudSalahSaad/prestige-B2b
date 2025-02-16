// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shipping_method_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShippingMethodModel _$ShippingMethodModelFromJson(Map<String, dynamic> json) {
  return _ShippingMethodModel.fromJson(json);
}

/// @nodoc
mixin _$ShippingMethodModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get carrier => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get cost => throw _privateConstructorUsedError;

  /// Serializes this ShippingMethodModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShippingMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShippingMethodModelCopyWith<ShippingMethodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShippingMethodModelCopyWith<$Res> {
  factory $ShippingMethodModelCopyWith(
          ShippingMethodModel value, $Res Function(ShippingMethodModel) then) =
      _$ShippingMethodModelCopyWithImpl<$Res, ShippingMethodModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? carrier,
      String? description,
      double? cost});
}

/// @nodoc
class _$ShippingMethodModelCopyWithImpl<$Res, $Val extends ShippingMethodModel>
    implements $ShippingMethodModelCopyWith<$Res> {
  _$ShippingMethodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShippingMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? carrier = freezed,
    Object? description = freezed,
    Object? cost = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      carrier: freezed == carrier
          ? _value.carrier
          : carrier // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShippingMethodModelImplCopyWith<$Res>
    implements $ShippingMethodModelCopyWith<$Res> {
  factory _$$ShippingMethodModelImplCopyWith(_$ShippingMethodModelImpl value,
          $Res Function(_$ShippingMethodModelImpl) then) =
      __$$ShippingMethodModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? carrier,
      String? description,
      double? cost});
}

/// @nodoc
class __$$ShippingMethodModelImplCopyWithImpl<$Res>
    extends _$ShippingMethodModelCopyWithImpl<$Res, _$ShippingMethodModelImpl>
    implements _$$ShippingMethodModelImplCopyWith<$Res> {
  __$$ShippingMethodModelImplCopyWithImpl(_$ShippingMethodModelImpl _value,
      $Res Function(_$ShippingMethodModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShippingMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? carrier = freezed,
    Object? description = freezed,
    Object? cost = freezed,
  }) {
    return _then(_$ShippingMethodModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      carrier: freezed == carrier
          ? _value.carrier
          : carrier // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShippingMethodModelImpl implements _ShippingMethodModel {
  _$ShippingMethodModelImpl(
      {this.id, this.name, this.carrier, this.description, this.cost});

  factory _$ShippingMethodModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShippingMethodModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? carrier;
  @override
  final String? description;
  @override
  final double? cost;

  @override
  String toString() {
    return 'ShippingMethodModel(id: $id, name: $name, carrier: $carrier, description: $description, cost: $cost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShippingMethodModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.carrier, carrier) || other.carrier == carrier) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, carrier, description, cost);

  /// Create a copy of ShippingMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShippingMethodModelImplCopyWith<_$ShippingMethodModelImpl> get copyWith =>
      __$$ShippingMethodModelImplCopyWithImpl<_$ShippingMethodModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShippingMethodModelImplToJson(
      this,
    );
  }
}

abstract class _ShippingMethodModel implements ShippingMethodModel {
  factory _ShippingMethodModel(
      {final int? id,
      final String? name,
      final String? carrier,
      final String? description,
      final double? cost}) = _$ShippingMethodModelImpl;

  factory _ShippingMethodModel.fromJson(Map<String, dynamic> json) =
      _$ShippingMethodModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get carrier;
  @override
  String? get description;
  @override
  double? get cost;

  /// Create a copy of ShippingMethodModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShippingMethodModelImplCopyWith<_$ShippingMethodModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

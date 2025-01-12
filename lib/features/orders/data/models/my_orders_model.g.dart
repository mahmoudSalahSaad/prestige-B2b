// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyOrdersModelImpl _$$MyOrdersModelImplFromJson(Map<String, dynamic> json) =>
    _$MyOrdersModelImpl(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MyOrdersModelImplToJson(_$MyOrdersModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

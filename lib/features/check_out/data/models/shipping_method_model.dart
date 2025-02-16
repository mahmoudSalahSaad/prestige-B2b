import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_method_model.freezed.dart';
part 'shipping_method_model.g.dart';

@freezed
class ShippingMethodModel with _$ShippingMethodModel {

  factory ShippingMethodModel({
    final int? id , 
    final String? name , 
    final String? carrier , 
    final String? description  , 
    final double? cost
  }) = _ShippingMethodModel;

  factory ShippingMethodModel.fromJson(Map<String, dynamic> json) => _$ShippingMethodModelFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/features/check_out/data/models/order_model.dart';

part 'my_orders_model.freezed.dart';
part 'my_orders_model.g.dart';

@freezed
class MyOrdersModel with _$MyOrdersModel {
  factory MyOrdersModel({final List<OrderModel>? items}) = _MyOrdersModel;

  factory MyOrdersModel.fromJson(Map<String, dynamic> json) =>
      _$MyOrdersModelFromJson(json);
}

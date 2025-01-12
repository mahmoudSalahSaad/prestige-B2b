part of 'my_orders_controller.dart';


@freezed
abstract class MyOrdersState with _$MyOrdersState {
  factory MyOrdersState({final MyOrdersModel? orders}) = _MyOrdersState;
}

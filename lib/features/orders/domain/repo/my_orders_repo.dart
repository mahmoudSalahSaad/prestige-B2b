import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/orders/data/models/my_orders_model.dart';

abstract class MyOrdersRepo {
  Future<Either<ErrorModel, MyOrdersModel>> getMyOrders(
      {required NoParameters parameters});
}

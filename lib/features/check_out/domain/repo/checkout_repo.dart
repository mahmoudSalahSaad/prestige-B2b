import 'package:dartz/dartz.dart';
import 'package:shop/core/base/base_usecase.dart';
import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:shop/features/check_out/data/models/order_model.dart';
import 'package:shop/features/check_out/data/models/shipping_method_model.dart';

abstract class CheckoutRepo {
  Future<Either<ErrorModel, OrderModel>> placeOrder(
      {required NoParameters parameters});

  Future<Either<ErrorModel, List<ShippingMethodModel>>> getShippingMethods(
      {required NoParameters parameters});
}

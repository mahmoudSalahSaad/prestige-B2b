import 'package:shop/data/datasource/remote/exception/error_widget.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class BaseUseCase<T, Parameters> {
  Future<Either<ErrorModel, T>> call(Parameters parameters);
  Future<Either<ErrorModel, T>> callTest(Parameters parameters);
}

class NoParameters extends Equatable {
  const NoParameters();
  @override
  List<Object> get props => [];
}

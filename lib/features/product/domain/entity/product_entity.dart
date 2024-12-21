import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String productSlug;

  const ProductEntity({
    required this.productSlug,
  });
  @override
  List<Object> get props => [
        productSlug,
      ];
}

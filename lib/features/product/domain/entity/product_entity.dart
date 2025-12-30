import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String? productSlug;
  final int? groupId;
  final int? page;
  final int? perPage;
  final String? direction; // 'asc' or 'desc'
  final String? search;
  final int? categoryId;

  const ProductEntity({
    this.productSlug,
    this.groupId,
    this.page,
    this.perPage,
    this.direction,
    this.search,
    this.categoryId,
  });

  @override
  List<Object?> get props => [
        productSlug,
        groupId,
        page,
        perPage,
        direction,
        search,
        categoryId,
      ];
}

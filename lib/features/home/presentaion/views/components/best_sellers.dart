import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/product/product_card.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/features/home/data/models/items_model.dart';
import 'package:shop/models/product_model.dart';

class BestSellers extends ConsumerWidget {
  const BestSellers({
    super.key,
    this.deals,
    this.title,
  });
  final List<ProductModels>? deals;
  final String? title;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return (deals ?? []).isEmpty
        ? const SizedBox()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: defaultPadding / 2),
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Text(
                  title ?? "Deals",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              // While loading use 👇
              // const ProductsSkelton(),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // Find demoPopularProducts on models/ProductModel.dart
                  itemCount: deals?.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                      left: defaultPadding,
                      right: index == demoPopularProducts.length - 1
                          ? defaultPadding
                          : 0,
                    ),
                    child: ProductCard(
                      image: deals?[index].thumbnail ?? "",
                      brandName: deals?[index].slug ?? "",
                      title: deals?[index].name ?? "",
                      price: deals?[index].price?.beforeDiscount ?? 0,
                      priceBeforeDiscount:
                          deals?[index].price?.beforeDiscount ?? 0,
                      hasDiscount: deals?[index].price?.hasDiscount ?? false,
                      priceAfetDiscount:
                          deals?[index].price?.afterDiscount.toString() ?? "",
                      press: () {
                        // Navigator.pushNamed(context, productDetailsScreenRoute,
                        // arguments: index.isEven);
                        NavigationService.push(Routes.productDetails,
                            arguments: {"productSlug": deals?[index].slug});
                      },
                    ),
                  ),
                ),
              )
            ],
          );
  }
}

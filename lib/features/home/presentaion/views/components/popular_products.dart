import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/product/product_card.dart';
import 'package:shop/core/components/skleton/product/products_skelton.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/features/home/presentaion/controllers/get_products_controller.dart';

class PopularProducts extends ConsumerWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: defaultPadding / 2),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            "Popular products",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        // While loading use 👇
        // const ProductsSkelton(),

        ref.watch(getProductsControllerProvider).when(
            data: (data) {
              return SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  // Find demoPopularProducts on models/ProductModel.dart
                  itemCount: data.products.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                      left: defaultPadding,
                      right: index == data.products.length - 1
                          ? defaultPadding
                          : 0,
                    ),
                    child: ProductCard(
                      image: data.products[index].thumbnail ?? "",
                      brandName: data.products[index].slug ?? "",
                      title: data.products[index].name ?? "",
                      price: data.products[index].price!.beforeDiscount ?? 0,
                      priceAfetDiscount:
                          data.products[index].price!.afterDiscount.toString(),
                      dicountpercent: 0,
                      press: () {
                        NavigationService.push(Routes.productDetails,
                            arguments: {
                              "productSlug": data.products[index].slug
                            });
                        // Navigator.pushNamed(context, productDetailsScreenRoute,
                        // arguments: index.isEven);
                      },
                    ),
                  ),
                ),
              );
            },
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => const ProductsSkelton())
      ],
    );
  }
}

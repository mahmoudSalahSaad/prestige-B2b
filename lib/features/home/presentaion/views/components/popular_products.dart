import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        // While loading use 👇
        // const ProductsSkelton(),

        ref.watch(getProductsControllerProvider).when(
            data: (data) {
              return SizedBox(
                width: double.infinity,
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(16),

                  // Find demoPopularProducts on models/ProductModel.dart
                  itemCount: data.products.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ProductCard(
                      image: data.products[index].thumbnail ?? "",
                      brandName: data.products[index].slug ?? "",
                      title: data.products[index].name ?? "",
                      price: data.products[index].price!.beforeDiscount ?? 0,
                      priceBeforeDiscount:
                          data.products[index].price!.beforeDiscount,
                      hasDiscount:
                          data.products[index].price!.hasDiscount ?? false,
                      variations: data.products[index].variations,
                      priceAfetDiscount:
                          data.products[index].price!.afterDiscount.toString(),
                      dicountpercent: 0,
                      productId: data.products[index].id,
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
                  // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //   crossAxisCount: 3,
                  //   childAspectRatio: 0.6,
                  //   crossAxisSpacing: 10,
                  //   mainAxisSpacing: 10,
                  // ),
                ),
              );
            },
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => const ProductsSkelton())
      ],
    );
  }
}

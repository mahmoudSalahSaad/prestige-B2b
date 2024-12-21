import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/product/product_card.dart';
import 'package:shop/core/components/skleton/product/products_skelton.dart';
import 'package:shop/features/home/presentaion/controllers/get_products_controller.dart';
import 'package:shop/models/product_model.dart';

class BestSellers extends ConsumerWidget {
  const BestSellers({
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
            "Best sellers",
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
                  itemCount: demoPopularProducts.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.only(
                      left: defaultPadding,
                      right: index == demoPopularProducts.length - 1
                          ? defaultPadding
                          : 0,
                    ),
                    child: ProductCard(
                      image: demoPopularProducts[index].image,
                      brandName: demoPopularProducts[index].brandName,
                      title: demoPopularProducts[index].title,
                      price: demoPopularProducts[index].price.toString(),
                      priceAfetDiscount: demoPopularProducts[index]
                          .priceAfetDiscount
                          .toString(),
                      dicountpercent: demoPopularProducts[index].dicountpercent,
                      press: () {
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

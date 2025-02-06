import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/constants.dart';
import 'package:shop/features/discover/presentaion/controllers/discover_controller.dart';
import 'package:shop/features/discover/presentaion/views/components/expansion_category.dart';
import 'package:shop/features/discover/presentaion/views/product_by_category_screen.dart';
import 'package:shop/models/category_model.dart';
import 'package:shop/screens/search/views/components/search_form.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DiscoverScreen extends ConsumerWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: SearchForm(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding / 2),
              child: Text(
                "Categories",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            // While loading use 👇
            // const Expanded(
            //   child: DiscoverCategoriesSkelton(),
            // ),
            Expanded(
              child: ref.watch(discoverControllerProvider).when(
                    data: (data) => ListView.builder(
                      itemCount: data.categories.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          if (data.categories[index].children!.isEmpty) {
                            // ref
                            //     .read(productsByCategoriesControllerProvider(
                            //             data.categories[index].slug!)
                            //         .notifier)
                            //     .getProducts(data.categories[index].slug!);
                            // NavigationService.push(Routes.productsByCategory,
                            //     arguments: {
                            //       'category_name': data.categories[index].slug!
                            //     });

                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => ProductByCategoryScreen(
                                    title : data.categories[index].name! , 
                                    categoryName:
                                        data.categories[index].slug!)));
                          }
                        },
                        child: ExpansionCategory(
                          svgSrc: data.categories[index].thumbnail!,
                          title: data.categories[index].name ?? "",
                          subCategory: data.categories[index].children!,
                          slug: data.categories[index].slug!,
                        ),
                      ),
                    ),
                    error: (error, stackTrace) => Text("$error"),
                    loading: () => Skeletonizer(
                      enabled: true,
                      child: Column(
                        children: List.generate(
                          demoCategories.length,
                          (index) => ExpansionCategory(
                            svgSrc: demoCategories[index].svgSrc!,
                            slug: "",
                            title: demoCategories[index].name,
                            subCategory: const [],
                          ),
                        ),
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/components/network_image_with_loader.dart';
import 'package:shop/features/discover/data/models/category_model.dart';
import 'package:shop/features/discover/presentaion/views/product_by_category_screen.dart';

import '../../../../../constants.dart';

class ExpansionCategory extends ConsumerWidget {
  const ExpansionCategory({
    super.key,
    required this.title,
    required this.slug,
    required this.subCategory,
    required this.svgSrc,
  });

  final String title, svgSrc, slug;
  final List<CategoryModel> subCategory;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        if (subCategory.isEmpty) {
          // ref
          //     .read(productsByCategoriesControllerProvider(slug).notifier)
          //     .getProducts(slug);
          // NavigationService.push(Routes.productsByCategory,
          //     arguments: {'category_name': slug});

          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => ProductByCategoryScreen(
                    categoryName: slug,
                    title: title,
                  )));
        }
      },
      child: ExpansionTile(
        iconColor: Theme.of(context).textTheme.bodyLarge!.color,
        collapsedIconColor: Theme.of(context).textTheme.bodyMedium!.color,
        leading: SizedBox(width: 24, child: NetworkImageWithLoader(svgSrc)),
        title: Text(
          title,
          style: const TextStyle(fontSize: 14),
        ),
        textColor: Theme.of(context).textTheme.bodyLarge!.color,
        childrenPadding: const EdgeInsets.only(left: defaultPadding * 3.5),
        enabled: subCategory.isNotEmpty ? true : false,
        children: List.generate(
          subCategory.length,
          (index) => Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => ProductByCategoryScreen(
                            categoryName: slug,
                            title: title,
                          )));
                },
                title: Text(
                  subCategory[index].name ?? "",
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              if (index < subCategory.length - 1) const Divider(height: 1),
            ],
          ),
        ),
      ),
    );
  }
}

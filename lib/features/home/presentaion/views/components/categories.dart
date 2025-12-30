import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/network_image_with_loader.dart';
import 'package:shop/features/discover/presentaion/controllers/discover_controller.dart';

// For preview
class CategoryModel {
  final String name;
  final String? svgSrc, route;

  CategoryModel({
    required this.name,
    this.svgSrc,
    this.route,
  });
}

List<CategoryModel> demoCategories = [
  CategoryModel(name: "All Categories"),
  CategoryModel(name: "On Sale", svgSrc: "assets/icons/Sale.svg", route: ""),
  CategoryModel(name: "Man's", svgSrc: "assets/icons/Man.svg"),
  CategoryModel(name: "Woman’s", svgSrc: "assets/icons/Woman.svg"),
  CategoryModel(name: "Kids", svgSrc: "assets/icons/Child.svg", route: "kids"),
];
// End For Preview

class Categories extends ConsumerWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(discoverControllerProvider).when(
        data: (data) => SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  data.categories.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(
                        left: index == 0 ? defaultPadding : defaultPadding / 2,
                        right: index == data.categories.length - 1
                            ? defaultPadding
                            : 0),
                    child: CategoryBtn(
                      category: data.categories[index].name ?? "",
                      svgSrc: data.categories[index].thumbnail ?? "",
                      isActive: data.categories[index].id ==
                          data.selectedCategory?.id,
                      press: () {
                        ref
                            .read(discoverControllerProvider.notifier)
                            .selectCategory(data.categories[index]);
                      },
                    ),
                  ),
                ),
              ),
            ),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    demoCategories.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                          left:
                              index == 0 ? defaultPadding : defaultPadding / 2,
                          right: index == demoCategories.length - 1
                              ? defaultPadding
                              : 0),
                      child: CategoryBtn(
                        category: demoCategories[index].name,
                        svgSrc: demoCategories[index].svgSrc,
                        isActive: index == 0,
                        press: () {
                          if (demoCategories[index].route != null) {
                            // Navigator.pushNamed(context, demoCategories[index].route!);
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}

class CategoryBtn extends StatelessWidget {
  const CategoryBtn({
    super.key,
    required this.category,
    this.svgSrc,
    required this.isActive,
    required this.press,
  });

  final String category;
  final String? svgSrc;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: const BorderRadius.all(Radius.circular(50)),
      child: Container(
        width: 80,
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Circular container with category image
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isActive ? primaryColor : Colors.grey[100],
                border: Border.all(
                  color: isActive ? primaryColor : Colors.grey[300]!,
                  width: 2,
                ),
                boxShadow: isActive
                    ? [
                        BoxShadow(
                          color: primaryColor.withOpacity(0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ]
                    : null,
              ),
              child: svgSrc != null
                  ? ClipOval(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: NetworkImageWithLoader(
                          svgSrc!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  : Icon(
                      Icons.category,
                      color: isActive ? Colors.white : Colors.grey[600],
                      size: 32,
                    ),
            ),
            const SizedBox(height: 8),
            // Category name
            Text(
              category,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 11,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                color: isActive
                    ? primaryColor
                    : Theme.of(context).textTheme.bodyLarge!.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

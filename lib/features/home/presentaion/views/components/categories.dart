import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/network_image_with_loader.dart';
import 'package:shop/features/home/presentaion/controllers/get_categories_controller.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
    return ref.watch(getCategoriesControllerProvider).when(
        data: (data) => SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    data.categories.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                          left:
                              index == 0 ? defaultPadding : defaultPadding / 2,
                          right: index == data.categories.length - 1
                              ? defaultPadding
                              : 0),
                      child: CategoryBtn(
                        category: data.categories[index].name ?? "",
                        svgSrc: data.categories[index].thumbnail ?? "",
                        isActive: index == 0,
                        press: () {
                          ref
                              .read(getCategoriesControllerProvider.notifier)
                              .selectCategory(data.categories[index]);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => Skeletonizer(
            enabled: true,
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
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: Container(
        height: 36,
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
          color: isActive ? primaryColor : Colors.transparent,
          border: Border.all(
              color:
                  isActive ? Colors.transparent : Theme.of(context).hintColor),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
          children: [
            if (svgSrc != null) NetworkImageWithLoader(svgSrc!),
            if (svgSrc != null) const SizedBox(width: defaultPadding / 2),
            Text(
              category,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: isActive
                    ? Colors.white
                    : Theme.of(context).textTheme.bodyLarge!.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

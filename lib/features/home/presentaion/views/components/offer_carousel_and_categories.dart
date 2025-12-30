import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/constants.dart';
import 'package:shop/features/discover/presentaion/controllers/discover_controller.dart';
import 'package:shop/generated/l10n.dart';

import 'categories.dart';

class OffersCarouselAndCategories extends ConsumerWidget {
  const OffersCarouselAndCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // While loading use 👇
        // const OffersSkelton(),
        // if (ref
        //     .watch(slidersControllerProvider)
        //     .requireValue
        //     .sliders
        //     .isNotEmpty)
        //   const OffersCarousel(),
        // const SizedBox(height: defaultPadding / 2),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            S.of(context).categories,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        // While loading use 👇
        // const CategoriesSkelton(),
        const Categories(),

        if ((ref
                    .watch(discoverControllerProvider)
                    .requireValue
                    .selectedCategory !=
                null) &&
            (ref
                        .watch(discoverControllerProvider)
                        .requireValue
                        .selectedCategory
                        ?.children ??
                    [])
                .isNotEmpty)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  ref
                      .watch(discoverControllerProvider)
                      .requireValue
                      .selectedCategory!
                      .children!
                      .length, (subs) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CategoryBtn(
                    category: ref
                            .watch(discoverControllerProvider)
                            .requireValue
                            .selectedCategory!
                            .children![subs]
                            .name ??
                        "",
                    svgSrc: ref
                            .watch(discoverControllerProvider)
                            .requireValue
                            .selectedCategory!
                            .children![subs]
                            .thumbnail ??
                        "",
                    isActive: ref
                            .watch(discoverControllerProvider)
                            .requireValue
                            .selectedCategory!
                            .children![subs]
                            .id ==
                        ref
                            .watch(discoverControllerProvider)
                            .requireValue
                            .selectedSubCategory
                            ?.id,
                    press: () {
                      ref
                          .read(discoverControllerProvider.notifier)
                          .selectSubCategory(ref
                              .watch(discoverControllerProvider)
                              .requireValue
                              .selectedCategory!
                              .children![subs]);
                    },
                  ),
                );
              }),
            ),
          )
      ],
    );
  }
}

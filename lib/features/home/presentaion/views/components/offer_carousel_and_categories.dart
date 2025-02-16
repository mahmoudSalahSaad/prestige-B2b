import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/constants.dart';

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
            "Categories",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        // While loading use 👇
        // const CategoriesSkelton(),
        const Categories(),
      ],
    );
  }
}

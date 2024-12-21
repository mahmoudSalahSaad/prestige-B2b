import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/Banner/S/banner_s_style_1.dart';
import 'package:shop/core/components/Banner/S/banner_s_style_5.dart';

import 'components/best_sellers.dart';
import 'components/flash_sale.dart';
import 'components/most_popular.dart';
import 'components/offer_carousel_and_categories.dart';
import 'components/popular_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override

  /// The root of the HomeScreen widget tree.
  ///
  /// This widget is the root of the HomeScreen widget tree.
  ///
  /// It contains a [CustomScrollView] with 6 [SliverToBoxAdapter]s. Each
  /// [SliverToBoxAdapter] contains a different component:
  ///
  /// 1. [OffersCarouselAndCategories]
  /// 2. [PopularProducts]
  /// 3. [FlashSale]
  /// 4. A [Column] of 2 [BannerSStyle1]s
  /// 5. [BestSellers]
  /// 6. [MostPopular]
  /// 7. A [Column] of 2 [BannerSStyle5]s
  /// 8. [BestSellers] again
  ///
  /// The whole thing is wrapped in a [SafeArea].
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: OffersCarouselAndCategories()),
            const SliverToBoxAdapter(child: PopularProducts()),
            SliverPadding(
              padding:
                  const EdgeInsets.symmetric(vertical: defaultPadding * 1.5),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    // While loading use 👇
                    // const BannerMSkelton(),‚
                    BannerSStyle1(
                      title: "New \narrival",
                      subtitle: "SPECIAL OFFER",
                      discountParcent: 50,
                      press: () {
                        // Navigator.pushNamed(context, onSaleScreenRoute);
                      },
                    ),
                    const SizedBox(height: defaultPadding / 4),
                    // We have 4 banner styles, all in the pro version
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

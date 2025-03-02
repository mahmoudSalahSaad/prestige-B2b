import 'package:flutter/material.dart';
import 'package:shop/core/components/Banner/S/banner_s_style_1.dart';
import 'package:shop/core/components/Banner/S/banner_s_style_5.dart';
import 'package:shop/features/home/presentaion/views/components/offers_carousel.dart';

import 'components/best_sellers.dart';
import 'components/flash_sale.dart';
import 'components/offer_carousel_and_categories.dart';
import 'components/popular_products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: OffersCarousel()),
            SliverToBoxAdapter(child: BestSellers()),
            SliverToBoxAdapter(child: OffersCarouselAndCategories()),
            SliverToBoxAdapter(child: PopularProducts()),
          ],
        ),
      ),
    );
  }
}

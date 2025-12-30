import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/Banner/S/banner_s_style_1.dart';
import 'package:shop/core/components/skleton/banner/banner_m_skelton.dart';
import 'package:shop/core/components/skleton/product/products_skelton.dart';
import 'package:shop/core/resources/values_manager.dart';
import 'package:shop/features/discover/presentaion/views/product_by_category_screen.dart';
import 'package:shop/features/home/presentaion/controllers/home_controller.dart';
import 'package:shop/features/home/presentaion/views/components/categories.dart';
import 'package:shop/features/home/presentaion/views/components/featured_products.dart';
import 'package:shop/features/home/presentaion/views/components/offers_carousel.dart';
import 'package:shop/features/product/presentation/views/product_details_screen.dart';
import 'package:shop/generated/l10n.dart';

import 'components/best_sellers.dart';
import 'components/flash_sale.dart';
import 'components/offer_carousel_and_categories.dart';
import 'components/popular_products.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
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
      body: LiquidPullToRefresh(
        backgroundColor: Colors.white,
        color: primaryColor.withOpacity(0.5),
        height: 50,
        onRefresh: () async {
          await ref.read(homeControllerProvider.notifier).getHomeStaticPage();
        },
        child: SafeArea(
          child: ref.watch(homeControllerProvider).when(
              data: (data1) {
                return CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                        child: OffersCarousel(
                      slider: data1.homeModel?.sections?.slider,
                    )),
                    SliverToBoxAdapter(
                        child: BestSellers(
                      deals: data1.homeModel?.sections?.deals,
                    )),
                    const SliverToBoxAdapter(
                        child: OffersCarouselAndCategories()),
                    const SliverToBoxAdapter(child: PopularProducts()),
                    SliverToBoxAdapter(
                        child: FeaturedProducts(
                      title: S.of(context).featured_products,
                      deals: data1.homeModel?.sections?.featuredproducts,
                    )),
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 10,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: List.generate(
                            data1.homeModel?.sections?.image4col?.images
                                    ?.length ??
                                0,
                            (index) => InkWell(
                              onTap: () {
                                final imageModel = data1
                                    .homeModel?.sections?.image4col?.images
                                    ?.elementAt(index);
                                final linkType = imageModel?.linkType;
                                final slug = imageModel?.linkSlug ??
                                    imageModel?.link ??
                                    "";

                                if (linkType == "product" && slug.isNotEmpty) {
                                  // Navigate to product details
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => ProductDetailsScreen(
                                        productSlug: slug,
                                      ),
                                    ),
                                  );
                                } else if (linkType == "category" &&
                                    slug.isNotEmpty) {
                                  // Navigate to category screen
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (_) => ProductByCategoryScreen(
                                        categoryName: slug,
                                        title: slug,
                                      ),
                                    ),
                                  );
                                } else {
                                  // Default behavior: show full screen image
                                  _showFullScreenImage(
                                    context,
                                    imageModel?.path ?? "",
                                  );
                                }
                              },
                              child: Container(
                                height: (data1.homeModel?.sections?.image4col
                                            ?.images
                                            ?.elementAt(index)
                                            .height ??
                                        0)
                                    .toDouble(),
                                width: deviceWidth,
                                margin: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset: const Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  child: Image.network(
                                    data1.homeModel?.sections?.image4col?.images
                                            ?.elementAt(index)
                                            .path ??
                                        "",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
              error: (error, statickTrace) => Text("$error"),
              loading: () => CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: BannerMSkelton(),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const ProductsSkelton(),
                            const SizedBox(
                              height: 10,
                            ),
                            Shimmer.fromColors(
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
                                              left: index == 0
                                                  ? defaultPadding
                                                  : defaultPadding / 2,
                                              right: index ==
                                                      demoCategories.length - 1
                                                  ? defaultPadding
                                                  : 0),
                                          child: CategoryBtn(
                                            category:
                                                demoCategories[index].name,
                                            svgSrc:
                                                demoCategories[index].svgSrc,
                                            isActive: index == 0,
                                            press: () {
                                              if (demoCategories[index].route !=
                                                  null) {
                                                // Navigator.pushNamed(context, demoCategories[index].route!);
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                            const ProductsSkelton(),
                          ],
                        ),
                      )
                    ],
                  )),
        ),
      ),
    );
  }

  void _showFullScreenImage(BuildContext context, String imageUrl) {
    Navigator.of(context).push(
      PageRouteBuilder(
        opaque: false,
        pageBuilder: (context, animation, secondaryAnimation) {
          return FullScreenImageOverlay(imageUrl: imageUrl);
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 300),
      ),
    );
  }
}

class FullScreenImageOverlay extends StatelessWidget {
  final String imageUrl;

  const FullScreenImageOverlay({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Full screen image
          Center(
            child: InteractiveViewer(
              minScale: 0.5,
              maxScale: 3.0,
              child: Image.network(
                imageUrl,
                fit: BoxFit.contain,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                      color: Colors.white,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(
                      Icons.error,
                      color: Colors.white,
                      size: 50,
                    ),
                  );
                },
              ),
            ),
          ),
          // Close button
          Positioned(
            top: MediaQuery.of(context).padding.top + 16,
            right: 16,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

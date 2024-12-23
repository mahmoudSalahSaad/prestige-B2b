import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/product/product_card.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/features/discover/presentaion/controllers/discover_controller.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductByCategoryScreen extends ConsumerWidget {
  const ProductByCategoryScreen({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        // pinned: true,
        // floating: true,
        // snap: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: const SizedBox(),
        leadingWidth: 0,
        centerTitle: false,
        title: SvgPicture.asset(
          "assets/logo/Shoplon.svg",
          colorFilter: ColorFilter.mode(
              Theme.of(context).iconTheme.color!, BlendMode.srcIn),
          height: 20,
          width: 100,
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, searchScreenRoute);
            },
            icon: SvgPicture.asset(
              "assets/icons/Search.svg",
              height: 24,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).textTheme.bodyLarge!.color!,
                  BlendMode.srcIn),
            ),
          ),
          IconButton(
            onPressed: () {
              // Navigator.pushNamed(context, notificationsScreenRoute);
            },
            icon: SvgPicture.asset(
              "assets/icons/Notification.svg",
              height: 24,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).textTheme.bodyLarge!.color!,
                  BlendMode.srcIn),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          // While loading use 👇
          //  BookMarksSlelton(),
          SliverPadding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding),
              sliver: ref.watch(discoverControllerProvider).when(
                  data: (data) => SliverGrid(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200.0,
                          mainAxisSpacing: defaultPadding,
                          crossAxisSpacing: defaultPadding,
                          childAspectRatio: 0.66,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return ProductCard(
                              image: data.items!.items![index].thumbnail ?? "",
                              brandName: data.items!.items![index].slug ?? "",
                              title: data.items!.items![index].name ?? "",
                              price: data.items!.items![index].price
                                      ?.beforeDiscount ??
                                  0,
                              priceAfetDiscount: data
                                      .items!.items![index].price?.afterDiscount
                                      .toString() ??
                                  "0",
                              dicountpercent: 0,
                              press: () {
                                // Navigator.pushNamed(context, productDetailsScreenRoute);
                                NavigationService.push(Routes.productDetails,
                                    arguments: {
                                      'productSlug':
                                          data.items!.items![index].slug
                                    });
                              },
                            );
                          },
                          childCount: data.items!.items!.length,
                        ),
                      ),
                  error: (error, stackTrace) => SliverToBoxAdapter(
                        child: Text(error.toString()),
                      ),
                  loading: () => SliverToBoxAdapter(
                        child: Skeletonizer(
                          enabled: true,
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200.0,
                              mainAxisSpacing: defaultPadding,
                              crossAxisSpacing: defaultPadding,
                              childAspectRatio: 0.66,
                            ),
                            itemCount: 10,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return ProductCard(
                                image: "https://i.imgur.com/h2LqppX.png",
                                brandName: "Loading....",
                                title: "Loading....",
                                price: 0,
                                priceAfetDiscount: "0000000",
                                dicountpercent: 0,
                                press: () {
                                  // Navigator.pushNamed(context, productDetailsScreenRoute);
                                },
                              );
                            },
                          ),
                        ),
                      ))),
        ],
      ),
    );
  }
}

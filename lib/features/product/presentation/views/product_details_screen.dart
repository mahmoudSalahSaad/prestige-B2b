import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/buy_full_ui_kit.dart';
import 'package:shop/core/components/cart_button.dart';
import 'package:shop/core/components/custom_modal_bottom_sheet.dart';
import 'package:shop/core/components/product/product_card.dart';
import 'package:shop/core/resources/values_manager.dart';
import 'package:shop/features/product/presentation/controllers/products_details_controller.dart';
import 'package:shop/features/product/presentation/views/components/notify_me_card.dart';
import 'package:shop/features/product/presentation/views/components/product_quantity.dart';
import 'package:shop/features/product/presentation/views/components/unit_price.dart';
import 'package:shop/features/product/presentation/views/product_buy_now_screen.dart';
import 'package:shop/features/product/presentation/views/product_returns_screen.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'components/product_images.dart';
import 'components/product_info.dart';
import 'components/product_list_tile.dart';

class ProductDetailsScreen extends ConsumerWidget {
  const ProductDetailsScreen(
      {super.key, this.isProductAvailable = false, this.productSlug});

  final bool isProductAvailable;
  final String? productSlug;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("productSlug====>$productSlug");
    return ref
        .watch(productsDetailsControllerProvider(productSlug ?? "product-1"))
        .when(
            data: (data) {
              return Scaffold(
                bottomNavigationBar: data.productDetails?.product?.isActive == 1
                    ? CartButton(
                        price: data.productDetails?.product?.price
                                ?.beforeDiscount ??
                            0,
                        press: () {
                          customModalBottomSheet(
                            context,
                            height: MediaQuery.of(context).size.height * 0.92,
                            child: const ProductBuyNowScreen(),
                          );
                        },
                      )
                    :

                    /// If profuct is not available then show [NotifyMeCard]
                    NotifyMeCard(
                        isNotify: false,
                        onChanged: (value) {},
                      ),
                body: SafeArea(
                  child: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        backgroundColor: Colors.white,
                        floating: true,
                        pinned: true,
                        actions: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/Bookmark.svg",
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color),
                          ),
                        ],
                      ),
                      ProductImages(
                        images: data.productDetails?.product?.images ?? [],
                      ),
                      ProductInfo(
                        brand: "${data.productDetails?.product?.brand?.name}",
                        title: "${data.productDetails?.product?.name}",
                        isAvailable: isProductAvailable,
                        description:
                            "${data.productDetails?.product?.description}",
                      ),
                      ProductListTile(
                        svgSrc: "assets/icons/Product.svg",
                        title: "Product Details",
                        isShowBottomBorder: true,
                        press: () {
                          customModalBottomSheet(
                            context,
                            height: MediaQuery.of(context).size.height * 0.92,
                            child: SizedBox(
                              width: deviceWidth,
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                        "${data.productDetails?.product?.description}"),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.all(defaultPadding),
                        sliver: SliverToBoxAdapter(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: UnitPrice(
                                  price: (data.productDetails?.product?.price
                                              ?.beforeDiscount ??
                                          0) *
                                      (data.productDetails?.product?.quantity ??
                                          0),
                                  priceAfterDiscount: (data.productDetails
                                              ?.product?.price?.afterDiscount ??
                                          0) *
                                      (data.productDetails?.product?.quantity ??
                                          0),
                                ),
                              ),
                              ProductQuantity(
                                numOfItem:
                                    data.productDetails?.product?.quantity ?? 0,
                                onIncrement: () {
                                  ref
                                      .read(ProductsDetailsControllerProvider(
                                              productSlug ?? "product-1")
                                          .notifier)
                                      .onIncrement();
                                },
                                onDecrement: () {
                                  ref
                                      .read(ProductsDetailsControllerProvider(
                                              productSlug ?? "product-1")
                                          .notifier)
                                      .onDecrement();
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.all(defaultPadding),
                        sliver: SliverToBoxAdapter(
                          child: Text(
                            "You may also like",
                            style: Theme.of(context).textTheme.titleSmall!,
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 220,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) => Padding(
                              padding: EdgeInsets.only(
                                  left: defaultPadding,
                                  right: index == 4 ? defaultPadding : 0),
                              child: ProductCard(
                                image: productDemoImg2,
                                title: "Sleeveless Tiered Dobby Swing Dress",
                                brandName: "LIPSY LONDON",
                                price: 24.65,
                                priceAfetDiscount:
                                    index.isEven ? 20.99.toString() : null,
                                dicountpercent: index.isEven ? 25 : null,
                                press: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(height: defaultPadding),
                      )
                    ],
                  ),
                ),
              );
            },
            error: (error, StackTrace) => Text(error.toString()),
            loading: () => Skeletonizer(
                enabled: true,
                child: Scaffold(
                  bottomNavigationBar: isProductAvailable
                      ? CartButton(
                          price: 0,
                          press: () {
                            customModalBottomSheet(
                              context,
                              height: MediaQuery.of(context).size.height * 0.92,
                              child: const ProductBuyNowScreen(),
                            );
                          },
                        )
                      :

                      /// If profuct is not available then show [NotifyMeCard]
                      NotifyMeCard(
                          isNotify: false,
                          onChanged: (value) {},
                        ),
                  body: SafeArea(
                    child: CustomScrollView(
                      slivers: [
                        SliverAppBar(
                          backgroundColor: Colors.white,
                          floating: true,
                          pinned: true,
                          actions: [
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "assets/icons/Bookmark.svg",
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                            ),
                          ],
                        ),
                        const ProductImages(
                          images: [
                            productDemoImg1,
                            productDemoImg2,
                            productDemoImg3
                          ],
                        ),
                        ProductInfo(
                          brand: "LIPSY LONDON",
                          title: "Sleeveless Ruffle",
                          isAvailable: isProductAvailable,
                          description:
                              "A cool gray cap in soft corduroy. Watch me.' By buying cotton products from Lindex, you’re supporting more responsibly...",
                        ),
                        ProductListTile(
                          svgSrc: "assets/icons/Product.svg",
                          title: "Product Details",
                          press: () {
                            customModalBottomSheet(
                              context,
                              height: MediaQuery.of(context).size.height * 0.92,
                              child: const BuyFullKit(images: [
                                "assets/screens/Product detail.png"
                              ]),
                            );
                          },
                        ),
                        ProductListTile(
                          svgSrc: "assets/icons/Delivery.svg",
                          title: "Shipping Information",
                          press: () {
                            customModalBottomSheet(
                              context,
                              height: MediaQuery.of(context).size.height * 0.92,
                              child: const BuyFullKit(
                                images: [
                                  "assets/screens/Shipping information.png"
                                ],
                              ),
                            );
                          },
                        ),
                        ProductListTile(
                          svgSrc: "assets/icons/Return.svg",
                          title: "Returns",
                          isShowBottomBorder: true,
                          press: () {
                            customModalBottomSheet(
                              context,
                              height: MediaQuery.of(context).size.height * 0.92,
                              child: const ProductReturnsScreen(),
                            );
                          },
                        ),
                        ProductListTile(
                          svgSrc: "assets/icons/Chat.svg",
                          title: "Reviews",
                          isShowBottomBorder: true,
                          press: () {
                            // Navigator.pushNamed(context, productReviewsScreenRoute);
                          },
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.all(defaultPadding),
                          sliver: SliverToBoxAdapter(
                            child: Text(
                              "You may also like",
                              style: Theme.of(context).textTheme.titleSmall!,
                            ),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: SizedBox(
                            height: 220,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) => Padding(
                                padding: EdgeInsets.only(
                                    left: defaultPadding,
                                    right: index == 4 ? defaultPadding : 0),
                                child: ProductCard(
                                  image: productDemoImg2,
                                  title: "Sleeveless Tiered Dobby Swing Dress",
                                  brandName: "LIPSY LONDON",
                                  price: 24.65,
                                  priceAfetDiscount:
                                      index.isEven ? 20.99.toString() : null,
                                  dicountpercent: index.isEven ? 25 : null,
                                  press: () {},
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SliverToBoxAdapter(
                          child: SizedBox(height: defaultPadding),
                        )
                      ],
                    ),
                  ),
                )));
  }
}

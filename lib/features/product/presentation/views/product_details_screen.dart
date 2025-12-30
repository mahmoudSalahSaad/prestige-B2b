import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/buy_full_ui_kit.dart';
import 'package:shop/core/components/cart_button.dart';
import 'package:shop/core/components/custom_modal_bottom_sheet.dart';
import 'package:shop/core/components/product/product_card.dart';
import 'package:shop/core/resources/values_manager.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/utils/alerts.dart';
import 'package:shop/features/cart/domain/entities/cart_entity.dart';
import 'package:shop/features/cart/presentation/controllers/cart_controller.dart';
import 'package:shop/features/product/presentation/controllers/products_details_controller.dart';
import 'package:shop/features/product/presentation/views/components/notify_me_card.dart';
import 'package:shop/features/product/presentation/views/components/product_quantity.dart';
import 'package:shop/features/product/presentation/views/components/unit_price.dart';
import 'package:shop/features/product/presentation/views/product_buy_now_screen.dart';
import 'package:shop/features/product/presentation/views/product_returns_screen.dart';
import 'package:shop/generated/l10n.dart';

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
                        press: ref.watch(cartControllerProvider).isLoading
                            ? () {}
                            : () async {
                                if (data.productDetails!.product!.variations
                                    .isNotEmpty) {
                                  if (data.variationID != null) {
                                    await ref
                                        .read(cartControllerProvider.notifier)
                                        .addToCart(CartEntity(
                                            quantity: data.productDetails
                                                    ?.product?.quantity ??
                                                0,
                                            productID: data.productDetails
                                                    ?.product?.id ??
                                                0,
                                            variationID: data.variationID,
                                            priceID: data.priceId,
                                            unitID: data.unitId))
                                        .then((value) {
                                      Alerts.showSnackBar(
                                          S.of(context).product_added_to_cart,
                                          alertsType: AlertsType.success);
                                    });
                                  } else {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text(S
                                              .of(context)
                                              .please_select_variation),
                                          content: null,
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(S.of(context).cancel),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }
                                } else {
                                  await ref
                                      .read(cartControllerProvider.notifier)
                                      .addToCart(CartEntity(
                                          quantity: data.productDetails?.product
                                                  ?.quantity ??
                                              0,
                                          productID: data.productDetails
                                                  ?.product?.id ??
                                              0,
                                          variationID: data.variationID))
                                      .then((value) {
                                    Alerts.showSnackBar(
                                        S.of(context).product_added_to_cart,
                                        alertsType: AlertsType.success);
                                  });
                                }
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
                      const SliverAppBar(
                        backgroundColor: Colors.white,
                        floating: true,
                        pinned: true,
                        actions: [],
                      ),
                      ProductImages(
                        images: data.productDetails?.product?.images ?? [],
                      ),
                      ProductInfo(
                        brand: "",
                        title: "${data.productDetails?.product?.name}",
                        isAvailable: isProductAvailable,
                        description:
                            "${data.productDetails?.product?.description}",
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (data.productDetails?.product?.variations
                                      .isNotEmpty ??
                                  false)
                                Text(
                                  S.of(context).select,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                              if (data.productDetails?.product?.variations
                                      .isNotEmpty ??
                                  false)
                                const SizedBox(
                                  height: 10,
                                ),
                              if (data.productDetails?.product?.variations
                                      .isNotEmpty ??
                                  false)
                                SizedBox(
                                  width: deviceWidth,
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                        children: List.generate(
                                            data.productDetails?.product
                                                    ?.variations.length ??
                                                0,
                                            (index) => InkWell(
                                                  onTap: () {
                                                    ref
                                                        .read(productsDetailsControllerProvider(
                                                                productSlug ??
                                                                    "product-1")
                                                            .notifier)
                                                        .selectVariation(data
                                                            .productDetails!
                                                            .product!
                                                            .variations[index]);
                                                  },
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: index == 0
                                                            ? 0
                                                            : defaultPadding /
                                                                2),
                                                    child: Container(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8),
                                                      decoration: BoxDecoration(
                                                        color: Colors
                                                            .grey.shade200,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12),
                                                        border: Border.all(
                                                          color: ref
                                                                      .watch(productsDetailsControllerProvider(
                                                                          productSlug ??
                                                                              "product-1"))
                                                                      .requireValue
                                                                      .variationID ==
                                                                  data
                                                                      .productDetails
                                                                      ?.product
                                                                      ?.variations[
                                                                          index]
                                                                      .id
                                                              ? primaryColor
                                                              : Theme.of(
                                                                      context)
                                                                  .hintColor
                                                                  .withOpacity(
                                                                      0.5),
                                                        ),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                            "${data.productDetails?.product?.variations[index].options}"),
                                                      ),
                                                    ),
                                                  ),
                                                ))),
                                  ),
                                )
                            ],
                          ),
                        ),
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
                                              ?.hasDiscount ??
                                          false)
                                      ? (data.productDetails?.product?.price
                                                  ?.beforeDiscount ??
                                              0) *
                                          (data.productDetails?.product
                                                  ?.quantity ??
                                              0)
                                      : 0,
                                  priceAfterDiscount: (data.productDetails
                                              ?.product?.price?.hasDiscount ??
                                          false)
                                      ? (data.productDetails?.product?.price
                                                  ?.afterDiscount ??
                                              0) *
                                          (data.productDetails?.product
                                                  ?.quantity ??
                                              0)
                                      : (data.productDetails?.product?.price
                                                  ?.beforeDiscount ??
                                              0) *
                                          (data.productDetails?.product
                                                  ?.quantity ??
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
                                onQuantityChanged: (quantity) {
                                  ref
                                      .read(ProductsDetailsControllerProvider(
                                              productSlug ?? "product-1")
                                          .notifier)
                                      .onQuantityChanged(quantity);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.all(defaultPadding),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if ((data.productDetails?.promotions?.length ??
                                      0) >
                                  0)
                                Text(
                                  S.of(context).pormotions,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                width: deviceWidth,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount:
                                      data.productDetails?.promotions?.length ??
                                          0,
                                  itemBuilder: (context, index) =>
                                      Card.outlined(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      side:
                                          const BorderSide(color: primaryColor),
                                    ),
                                    elevation: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            S.of(context).buy_x_get_y(
                                                  data
                                                          .productDetails
                                                          ?.promotions?[index]
                                                          .xYOffer
                                                          ?.buyQuantity ??
                                                      0,
                                                  data
                                                          .productDetails
                                                          ?.promotions?[index]
                                                          .xYOffer
                                                          ?.getQuantity ??
                                                      0,
                                                  data
                                                          .productDetails
                                                          ?.promotions?[index]
                                                          .xYOffer
                                                          ?.getProduct
                                                          ?.name ??
                                                      '',
                                                ),
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall,
                                          ),
                                          if (data
                                                  .productDetails
                                                  ?.promotions?[index]
                                                  .description !=
                                              null)
                                            Text(
                                              "${data.productDetails?.promotions?[index].description}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                            ),
                                          if (data
                                                  .productDetails
                                                  ?.promotions?[index]
                                                  .minAmount !=
                                              null)
                                            Text(
                                              "Min amount: ${data.productDetails?.promotions?[index].minAmount}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                            ),
                                          if (data
                                                  .productDetails
                                                  ?.promotions?[index]
                                                  .minItems !=
                                              null)
                                            Text(
                                              "Min Items: ${data.productDetails?.promotions?[index].minItems}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium,
                                            ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SliverPadding(
                        padding: const EdgeInsets.all(defaultPadding),
                        sliver: SliverToBoxAdapter(
                          child: (data.productDetails?.related?.length ?? 0) > 0
                              ? Text(
                                  S.of(context).you_may_also_like,
                                  style:
                                      Theme.of(context).textTheme.titleSmall!,
                                )
                              : const SizedBox(),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: 220,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                data.productDetails?.related?.length ?? 0,
                            itemBuilder: (context, index) => Padding(
                              padding: EdgeInsets.only(
                                  left: defaultPadding,
                                  right: index ==
                                          (data.productDetails?.related
                                                      ?.length ??
                                                  0) -
                                              1
                                      ? defaultPadding
                                      : 0),
                              child: InkWell(
                                onTap: () {
                                  NavigationService.push(Routes.productDetails,
                                      arguments: {
                                        "productSlug": data.productDetails
                                            ?.related?[index].slug
                                      });
                                },
                                child: ProductCard(
                                  image: data.productDetails?.related?[index]
                                          .thumbnail ??
                                      "",
                                  title: data.productDetails?.related?[index]
                                          .name ??
                                      "",
                                  brandName: data.productDetails
                                          ?.related?[index].shortDescription ??
                                      "",
                                  price: data.productDetails?.related?[index]
                                          .price?.beforeDiscount ??
                                      0,
                                  variations: data.productDetails
                                      ?.related?[index].variations,
                                  priceBeforeDiscount: data
                                          .productDetails
                                          ?.related?[index]
                                          .price
                                          ?.beforeDiscount ??
                                      0,
                                  priceAfetDiscount: data.productDetails
                                      ?.related?[index].price?.afterDiscount
                                      .toString(),
                                  dicountpercent: null,
                                  press: () {
                                    NavigationService.push(
                                        Routes.productDetails,
                                        arguments: {
                                          "productSlug": data.productDetails
                                              ?.related?[index].slug
                                        });
                                  },
                                  hasDiscount: data
                                          .productDetails
                                          ?.related?[index]
                                          .price
                                          ?.hasDiscount ??
                                      false,
                                ),
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
            loading: () => Shimmer.fromColors(
                baseColor: Colors.grey[300]!,
                highlightColor: Colors.grey[100]!,
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
                          title: S.of(context).product_details,
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
                          title: S.of(context).shipping_information,
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
                          title: S.of(context).returns,
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
                          title: S.of(context).reviews,
                          isShowBottomBorder: true,
                          press: () {
                            // Navigator.pushNamed(context, productReviewsScreenRoute);
                          },
                        ),
                        SliverPadding(
                          padding: const EdgeInsets.all(defaultPadding),
                          sliver: SliverToBoxAdapter(
                            child: Text(
                              S.of(context).you_may_also_like,
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
                                  hasDiscount: false,
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

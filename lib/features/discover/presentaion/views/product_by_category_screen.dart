import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/product/product_card.dart';
import 'package:shop/features/discover/presentaion/controllers/products_by_categories_controller.dart';
import 'package:shop/features/product/presentation/views/product_details_screen.dart';

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

        leadingWidth: 32,
        centerTitle: false,
        title: Text(
          "PRESTIGE",
          style: Theme.of(context).textTheme.titleLarge,
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
              sliver: ref
                  .watch(productsByCategoriesControllerProvider(categoryName))
                  .when(
                      data: (data) {
                        print("sjhbdjbdvs==>${data.items}");
                        return SliverGrid(
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
                                image:
                                    data.items?.items?[index].thumbnail ?? "",
                                brandName: data.items?.items?[index].slug ?? "",
                                title: data.items?.items?[index].name ?? "",
                                price: data.items?.items?[index].price
                                        ?.beforeDiscount ??
                                    0,
                                priceAfetDiscount: data.items?.items?[index]
                                        .price?.afterDiscount
                                        .toString() ??
                                    "0",
                                dicountpercent: 0,
                                press: () {
                                  // Navigator.pushNamed(context, productDetailsScreenRoute);

                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => ProductDetailsScreen(
                                            productSlug:
                                                data.items?.items?[index].slug,
                                          )));
                                },
                              );
                            },
                            childCount: data.items?.items?.length ?? 0,
                          ),
                        );
                      },
                      error: (error, stackTrace) => SliverToBoxAdapter(
                            child: Text(error.toString()),
                          ),
                      loading: () => const SliverToBoxAdapter(
                            child: SizedBox(),
                          ))),
        ],
      ),
    );
  }
}
/* Skeletonizer(
                                enabled: true,
                                child: Column(
                                  children: [
                                    GridView.builder(
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2),
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          return ProductCard(
                                            image:
                                                'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANgAAACUCAMAAADGZBfIAAAAb1BMVEUAAACirKkWFhYYGBgEBAQqLCsODg7f7egrKytSU1RVW1hVWlppb2+0ubcSEhJXWVgeISA+Q0EjJSR+hIK/w8KPlZM2ODcxMjGtsbA7Pj2ZoJ52eHeGiokbHBtGR0dMTU3t+fViZWTM1dLY393FzMrra56nAAAClElEQVR4nO3ZbW+rIAAFYERkdbMqKlqrrcP6/3/jRdHevixLlrEQmvN8qdEv5wREqoQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwEtiacpcZ/gTPCq46wx/gu521HUGmzhfxync7UJzVNcnd3ms4SE1t9a1WC7ayGUiSzilZgZeiwlRhy4T2cLTcJmMW7FIiJ3bRLakdFnnwygKCSNUtPWLrI6M0pSsxQhrhMhdJ7IlpfP6YYrlrWj0KaZPFN4XnIdMz8EooiSthTBrCRfx2fs1JA0pJ7zQO4+iFWapb4YsjgvHuX6NpXRdL3KzchRDnGWD91Pxlq7FTucsy+LGdRQ72P+fZq7V8puzL0LfXcL7u+sZ0wtI4+8T+ts5dlfLr9mo0/LcKL5KzlfMt2KElG9X6vFapJJN7Vsvevzcen32jxfr5Nrs7Nndxshw2K8O7ePVU6x3HUbh2VT8QVq/im2WTbzKb9MzwtvQ1z5XOr4KJnlfI+5U7SqQFXOb6DiNl4ncbam6vuvUye9BK6dxvBwexqdI+rLsYjeJrIiry3ipMj02qttGLB70Ud2Vupqv87EILuNYlfOD6jxNHWGN3iJmx+PSJ56rKerldFR6tEwLcqgOGakP+ol27mW5nMpV15dPTzgvnPpg3Uwl1b7n5CMIPghPpFzvrlZlqbt0v2FiM3LaV/Pu4z0I3vW/zF7225t7z7ZTT/qq6shWjCgpE9eJ7Bj0gM0DtxRjhEnZC9eZrJDVNMy/H2bEiAhk5zaRHcm+Oi4HWzFSXtcPr3X7ynxcWVbF5Z2HlJnbTFbkiTLbwrWYFmfev9teLfuLdSr6uNf4XlSWr/CF9gvFC74lBQAAAAAAAAAAAAAAAAAAAAAAAAAAAPiZf8d2HeY2LqARAAAAAElFTkSuQmCC',
                                            brandName: "asd.m,.am",
                                            title: "sda,mdas",
                                            price: 000,
                                            press: () {},
                                          );
                                        })
                                  ],
                                )) */

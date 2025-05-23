import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/Banner/M/banner_m_style_1.dart';
import 'package:shop/core/components/Banner/M/banner_m_style_2.dart';
import 'package:shop/core/components/Banner/M/banner_m_style_3.dart';
import 'package:shop/core/components/Banner/M/banner_m_style_4.dart';
import 'package:shop/core/components/dot_indicators.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/features/home/data/models/home_model.dart';

class OffersCarousel extends ConsumerStatefulWidget {
  const OffersCarousel({
    super.key,
    this.slider,
  });

  final SliderModel? slider;

  @override
  ConsumerState<OffersCarousel> createState() => _OffersCarouselState();
}

class _OffersCarouselState extends ConsumerState<OffersCarousel> {
  int _selectedIndex = 0;
  late PageController _pageController;

  // Offers List
  List offers = [
    BannerMStyle1(
      text: "New items with \nFree shipping",
      press: () {},
    ),
    BannerMStyle2(
      title: "Black \nfriday",
      subtitle: "Collection",
      press: () {},
    ),
    BannerMStyle3(
      title: "Grab \nyours now",
      discountParcent: 50,
      press: () {},
    ),
    BannerMStyle4(
      // image: , user your image
      title: "SUMMER \nSALE",
      subtitle: "SPECIAL OFFER",
      discountParcent: 80,
      press: () {},
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    // _timer = Timer.periodic(const Duration(seconds: 4), (Timer timer) {
    //   if (_selectedIndex < offers.length - 1) {
    //     _selectedIndex++;
    //   } else {
    //     _selectedIndex = 0;
    //   }

    //   _pageController.animateToPage(
    //     _selectedIndex,
    //     duration: const Duration(milliseconds: 350),
    //     curve: Curves.easeOutCubic,
    //   );
    // });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.87,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: widget.slider?.images?.length,
            onPageChanged: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                print("sadsasd");

                if (widget.slider?.images?[index].linkType == "product") {
                  NavigationService.push(Routes.productDetails, arguments: {
                    "slug": widget.slider?.images?[index].linkSlug
                  });
                } else if (widget.slider?.images?[index].linkType ==
                    "category") {
                  NavigationService.push(Routes.productsByCategory, arguments: {
                    "category_name": widget.slider?.images?[index].linkSlug
                  });
                }
              },
              child: BannerMStyle2(
                press: () {
                  print("sadsasd");
                  print(
                      "saddsadlnsakmads===>${widget.slider?.images?[index].linkType}");
                  if (widget.slider?.images?[index].linkType == "product") {
                    NavigationService.push(Routes.productDetails, arguments: {
                      "slug": widget.slider?.images?[index].linkSlug
                    });
                  } else if (widget.slider?.images?[index].linkType ==
                      "category") {
                    NavigationService.push(Routes.productsByCategory,
                        arguments: {
                          "category_name":
                              widget.slider?.images?[index].linkSlug,
                          "title": widget.slider?.images?[index].linkSlug
                        });
                  }
                },
                image: widget.slider?.images?[index].path,
                title: '',
              ),
            ),
          ),
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: SizedBox(
                height: 16,
                child: Row(
                  children: List.generate(
                    widget.slider?.images?.length ?? 0,
                    (index) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(left: defaultPadding / 4),
                        child: DotIndicator(
                          isActive: index == _selectedIndex,
                          activeColor: Colors.white70,
                          inActiveColor: Colors.white54,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

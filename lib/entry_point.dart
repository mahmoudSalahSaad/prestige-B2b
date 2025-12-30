import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/constants.dart';
import 'package:shop/features/cart/data/models/cart_model.dart';
import 'package:shop/features/cart/presentation/controllers/cart_controller.dart';
import 'package:shop/features/cart/presentation/pages/my_cart_screen.dart';
import 'package:shop/features/discover/presentaion/views/discover_screen.dart';
import 'package:shop/features/home/presentaion/views/home_screen.dart';
import 'package:shop/features/home/presentaion/views/pormotions_screen.dart';
import 'package:shop/features/profile/profile_screen.dart';
import 'package:shop/generated/l10n.dart';

class EntryPoint extends ConsumerStatefulWidget {
  const EntryPoint({super.key});

  @override
  ConsumerState<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends ConsumerState<EntryPoint> {
  final List _pages = const [
    HomeScreen(),
    DiscoverScreen(),

    // EmptyCartScreen(), // if Cart is empty
    MyCartScreen(),
    PormotionsScreen(),

    ProfileScreen(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    SvgPicture svgIcon(String src, {Color? color}) {
      return SvgPicture.asset(
        src,
        height: 24,
        colorFilter: ColorFilter.mode(
            color ??
                Theme.of(context).iconTheme.color!.withOpacity(
                    Theme.of(context).brightness == Brightness.dark ? 0.3 : 1),
            BlendMode.srcIn),
      );
    }

    return Scaffold(
      appBar: AppBar(
        // pinned: true,
        // floating: true,
        // snap: true,
        backgroundColor: Theme.of(context).primaryColor,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: const SizedBox(),
        scrolledUnderElevation: 0,
        elevation: 0,
        leadingWidth: 0,
        centerTitle: false,
        title: Row(
          children: [
            Image.asset("assets/logo/presige-logo-neg.png",
                height: 50, width: 120),
          ],
        ),
        actions: const [],
      ),
      // body: _pages[_currentIndex],
      body: PageTransitionSwitcher(
        duration: defaultDuration,
        transitionBuilder: (child, animation, secondAnimation) {
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondAnimation,
            child: child,
          );
        },
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: defaultPadding / 2),
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : const Color(0xFF101015),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            if (index != _currentIndex) {
              setState(() {
                _currentIndex = index;
              });
            }
          },
          backgroundColor: Theme.of(context).brightness == Brightness.light
              ? Colors.white
              : const Color(0xFF101015),
          type: BottomNavigationBarType.fixed,
          // selectedLabelStyle: TextStyle(color: primaryColor),
          selectedFontSize: 12,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.transparent,

          items: [
            BottomNavigationBarItem(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  svgIcon("assets/icons/Stores.svg"),
                  Text(S.of(context).home_nav),
                ],
              ),
              activeIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  svgIcon("assets/icons/Stores.svg", color: primaryColor),
                  Text(
                    S.of(context).home_nav,
                    style: const TextStyle(fontSize: 12, color: primaryColor),
                  ),
                ],
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  svgIcon("assets/icons/Category.svg"),
                  Text(S.of(context).shop_nav),
                ],
              ),
              activeIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  svgIcon("assets/icons/Category.svg", color: primaryColor),
                  Text(S.of(context).shop_nav, style: const TextStyle(fontSize: 12 , color: primaryColor),),
                ],
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      svgIcon("assets/icons/Bag.svg"),
                      Text(S.of(context).cart_nav),
                    ],
                  ),
                  if (((ref
                                      .watch(cartControllerProvider)
                                      .requireValue
                                      .cartModel ??
                                  CartModel())
                              .items ??
                          [])
                      .isNotEmpty)
                    Container(
                      padding: const EdgeInsets.all(4),
                      margin: const EdgeInsets.only(bottom: 10, right: 16),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    )
                ],
              ),
              activeIcon: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      svgIcon("assets/icons/Bag.svg", color: primaryColor),
                      Text(S.of(context).cart_nav, style: const TextStyle(fontSize: 12 , color: primaryColor),),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.only(bottom: 10, right: 16),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  svgIcon("assets/icons/Discount.svg"),
                  Text(S.of(context).promotions_nav),
                ],
              ),
              activeIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  svgIcon("assets/icons/Discount.svg", color: primaryColor),
                  Text(S.of(context).promotions_nav, style: const TextStyle(fontSize: 12 , color: primaryColor),),
                ],
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  svgIcon("assets/icons/Profile.svg"),
                  Text(S.of(context).profile_nav, ),
                ],
              ),
              activeIcon: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  svgIcon("assets/icons/Profile.svg", color: primaryColor),
                  Text(S.of(context).profile_nav, style: const TextStyle(fontSize: 12 , color: primaryColor),),
                ],
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}

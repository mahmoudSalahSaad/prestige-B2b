import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/services/local/cache_consumer.dart';
import 'package:shop/features/auth/presentation/controller/login_controller.dart';
import 'package:shop/generated/l10n.dart';

import 'components/language_selection_bottom_sheet.dart';
import 'components/profile_card.dart';
import 'components/profile_menu_item_list_tile.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginControllerProvider).requireValue;
    return Scaffold(
      body: ListView(
        children: [
          ProfileCard(
            name: "${state.userModel?.user?.name}",
            email: "${state.userModel?.user?.email}",
            imageSrc: "https://i.imgur.com/IXnwbLk.png",
            // proLableText: "Sliver",
            // isPro: true, if the user is pro
            press: () {
              // Navigator.pushNamed(context, userInfoScreenRoute);
              NavigationService.push(Routes.updateProfileScreen);
            },
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(
          //       horizontal: defaultPadding, vertical: defaultPadding * 1.5),
          //   child: GestureDetector(
          //     onTap: () {},
          //     child: const AspectRatio(
          //       aspectRatio: 1.8,
          //       child:
          //           NetworkImageWithLoader("https://i.imgur.com/dz0BBom.png"),
          //     ),
          //   ),
          // ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text(
              S.of(context).account,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ProfileMenuListTile(
            text: S.of(context).orders,
            svgSrc: "assets/icons/Order.svg",
            press: () {
              // Navigator.pushNamed(context, ordersScreenRoute);

              NavigationService.push(Routes.myOrdersScreen);
            },
          ),
          // ProfileMenuListTile(
          //   text: "Returns",
          //   svgSrc: "assets/icons/Return.svg",
          //   press: () {},
          // ),
          // ProfileMenuListTile(
          //   text: "Wishlist",
          //   svgSrc: "assets/icons/Wishlist.svg",
          //   press: () {},
          // ),
          ProfileMenuListTile(
            text: S.of(context).addresses,
            svgSrc: "assets/icons/Address.svg",
            press: () {
              // Navigator.pushNamed(context, addressesScreenRoute);
              NavigationService.push(Routes.addressScreen);
            },
          ),
          // ProfileMenuListTile(
          //   text: "Payment",
          //   svgSrc: "assets/icons/card.svg",
          //   press: () {
          //     // Navigator.pushNamed(context, emptyPaymentScreenRoute);
          //   },
          // ),
          // ProfileMenuListTile(
          //   text: "Wallet",
          //   svgSrc: "assets/icons/Wallet.svg",
          //   press: () {
          //     // Navigator.pushNamed(context, walletScreenRoute);
          //   },
          // ),
          // const SizedBox(height: defaultPadding),
          // Padding(
          //   padding: const EdgeInsets.symmetric(
          //       horizontal: defaultPadding, vertical: defaultPadding / 2),
          //   child: Text(
          //     "Personalization",
          //     style: Theme.of(context).textTheme.titleSmall,
          //   ),
          // ),
          // DividerListTileWithTrilingText(
          //   svgSrc: "assets/icons/Notification.svg",
          //   title: "Notification",
          //   trilingText: "Off",
          //   press: () {
          //     // Navigator.pushNamed(context, enableNotificationScreenRoute);
          //   },
          // ),
          // // ProfileMenuListTile(
          // //   text: "Preferences",
          // //   svgSrc: "assets/icons/Preferences.svg",
          // //   press: () {
          // //     // Navigator.pushNamed(context, preferencesScreenRoute);
          // //   },
          // // ),
          // const SizedBox(height: defaultPadding),
          // Padding(
          //   padding: const EdgeInsets.symmetric(
          //       horizontal: defaultPadding, vertical: defaultPadding / 2),
          //   child: Text(
          //     "Settings",
          //     style: Theme.of(context).textTheme.titleSmall,
          //   ),
          // ),
          ProfileMenuListTile(
            text: S.of(context).language,
            svgSrc: "assets/icons/Language.svg",
            press: () {
              LanguageSelectionBottomSheet.show(context);
            },
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: Text(
              S.of(context).help_support,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),

          ProfileMenuListTile(
            text: S.of(context).privacy_policy,
            svgSrc: "assets/icons/FAQ.svg",
            press: () {
              NavigationService.push(Routes.privacyPolicyScreen);
            },
            isShowDivider: false,
          ),
          const SizedBox(height: defaultPadding),

          // Log Out
          ListTile(
            onTap: () {
              AppPrefs appPrefs = getIt();
              appPrefs.clear();
              appPrefs.deleteSecuredData();
              NavigationService.pushNamedAndRemoveUntil(Routes.login);
            },
            minLeadingWidth: 24,
            leading: SvgPicture.asset(
              "assets/icons/Logout.svg",
              height: 24,
              width: 24,
              colorFilter: const ColorFilter.mode(
                errorColor,
                BlendMode.srcIn,
              ),
            ),
            title: Text(
              S.of(context).log_out,
              style:
                  const TextStyle(color: errorColor, fontSize: 14, height: 1),
            ),
          )
        ],
      ),
    );
  }
}

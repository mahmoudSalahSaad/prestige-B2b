import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/core/services/local/cache_consumer.dart';
import 'package:shop/core/services/local/storage_keys.dart';
import 'package:shop/features/auth/data/model/user_model.dart';
import 'package:shop/features/auth/presentation/controller/login_controller.dart';
import 'package:shop/features/cart/presentation/controllers/cart_controller.dart';
import 'package:shop/features/discover/presentaion/controllers/discover_controller.dart';
import 'package:shop/features/home/presentaion/controllers/get_products_controller.dart';
import 'package:shop/features/settings/presentation/controllers/branches_controller.dart';
import 'package:shop/features/settings/presentation/controllers/countries_controller.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () async {
      await ref.watch(countriesControllerProvider.notifier).getCountries();
      await ref.watch(branchesControllerProvider.notifier).getBranches();

      ref.watch(getProductsControllerProvider);
      AppPrefs appPrefs = getIt();

      String? user = await appPrefs.getSecuredData(PrefKeys.user);

      if (user != null && user.isNotEmpty) {
        ref.watch(discoverControllerProvider);
        ref.watch(cartControllerProvider);
        User userModel = User.fromJson(json.decode(user));

        Future.delayed(Duration.zero, () {
          ref
              .read(loginControllerProvider.notifier)
              .saveUserModel(UserModel(user: userModel));
        });

        setState(() {});
        NavigationService.pushNamedAndRemoveUntil(Routes.entryPoint);
      } else {
        NavigationService.pushNamedAndRemoveUntil(Routes.login);
      }
    });
  }

  @override
/*************  ✨ Codeium Command ⭐  *************/
  /// Returns a [Scaffold] widget with an empty [Container] as its body.
  ///
  /// This is a placeholder screen that is displayed for 3 seconds at app
  /// startup, while the app is loading the main content.
  /// ****  c07403d6-5460-4402-8306-da5baf1539b9  ******
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Image.asset("assets/logo/presige-logo.png", width: 250, height: 250,),
        ),
      ),
    );
  }
}

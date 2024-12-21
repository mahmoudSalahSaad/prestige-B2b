import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/features/home/presentaion/controllers/get_categories_controller.dart';
import 'package:shop/features/home/presentaion/controllers/get_products_controller.dart';
import 'package:shop/features/home/presentaion/controllers/sliders_controllers.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () async {
      ref.watch(slidersControllerProvider.notifier);
      ref.watch(getCategoriesControllerProvider.notifier);
      ref.watch(getProductsControllerProvider.notifier);
      NavigationService.push(Routes.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}

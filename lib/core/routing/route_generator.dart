import 'package:flutter/material.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/entry_point.dart';
import 'package:shop/features/auth/presentation/views/login_screen.dart';
import 'package:shop/features/auth/presentation/views/signup_screen.dart';
import 'package:shop/features/discover/presentaion/views/product_by_category_screen.dart';
import 'package:shop/features/product/presentation/views/product_details_screen.dart';
import 'package:shop/features/splash/persentation/views/splash_screen.dart';

// import 'package:shafi/features/auth_feature/screen/login_screen.dart';
// import 'package:shafi/features/home_screen/persentation/screens/choose_project_screen.dart';
// import 'package:shafi/features/home_screen/persentation/screens/home_screen.dart';
// import 'package:shafi/features/home_screen/persentation/screens/leave_pick_image_screen.dart';
// import 'package:shafi/features/home_screen/persentation/screens/pic_image_screen.dart';
// import 'package:flutter/material.dart';

// import '../../features/splash_screen/splac_screen.dart';
import 'platform_page_route.dart';
import 'undefined_route_screen.dart';

class RouteGenerator {
  static Route generateBaseRoute(RouteSettings settings) {
    return getRoute(settings);
  }

  static Route getRoute(RouteSettings settings) {
    if (settings.name == Routes.init) {
      return platformPageRoute(const SplashScreen());
    }
    if (settings.name == Routes.login) {
      return platformPageRoute(const LoginScreen());
    }
    if (settings.name == Routes.register) {
      return platformPageRoute(const SignUpScreen());
    }

    if (settings.name == Routes.entryPoint) {
      return platformPageRoute(const EntryPoint());
    }
    if (settings.name == Routes.productDetails) {
      final args = settings.arguments as Map<String, dynamic>;

      return platformPageRoute(ProductDetailsScreen(
        productSlug: args['productSlug'],
      ));
    }
    if (settings.name == Routes.productsByCategory) {
      final args = settings.arguments as Map<String, dynamic>;

      return platformPageRoute(ProductByCategoryScreen(
        categoryName: args['category_name'],
      ));
    }

    // if (settings.name == Routes.startWorkScreen) {
    //   return platformPageRoute(const StartWorkScreen());
    // } else if (settings.name == Routes.chooseProjectScreen) {
    //   return platformPageRoute(const ChooseProjectScreen());
    // } else if (settings.name == Routes.pickImageScreen) {
    //   return platformPageRoute(const PickImageScreen());
    // } else if (settings.name == Routes.leavePickImageScreen) {
    //   return platformPageRoute(const LeavePickImageScreen());
    // } else {
    //   return platformPageRoute(UndefinedRouteScreen(settings.name));
    // }

    return platformPageRoute(UndefinedRouteScreen(settings.name));
  }
}

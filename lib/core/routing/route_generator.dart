import 'package:flutter/material.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/entry_point.dart';
import 'package:shop/features/Address/data/models/address_model.dart';
import 'package:shop/features/Address/presentation/pages/address_screen.dart';
import 'package:shop/features/Address/presentation/pages/create_new_address.dart';
import 'package:shop/features/Address/presentation/pages/update_address_screen.dart';
import 'package:shop/features/auth/presentation/views/forgot_password_screen.dart';
import 'package:shop/features/auth/presentation/views/login_screen.dart';
import 'package:shop/features/auth/presentation/views/otp_screen.dart';
import 'package:shop/features/auth/presentation/views/reset_password_screen.dart';
import 'package:shop/features/auth/presentation/views/signup_screen.dart';
import 'package:shop/features/check_out/presentation/pages/check_out_screen.dart';
import 'package:shop/features/check_out/presentation/pages/shipping_methods_screen.dart';
import 'package:shop/features/discover/presentaion/views/product_by_category_screen.dart';
import 'package:shop/features/orders/presentation/pages/my_orders_screen.dart';
import 'package:shop/features/privacy/presentation/pages/privacy_screen.dart';
import 'package:shop/features/product/presentation/views/product_details_screen.dart';
import 'package:shop/features/profile/chnage_password_screen.dart';
import 'package:shop/features/profile/update_porfile_screen.dart';
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

    if (settings.name == Routes.forgetPassword) {
      return platformPageRoute(const ForgotPasswordScreen());
    }
    if (settings.name == Routes.otpPassword) {
      return platformPageRoute(const OtpScreen());
    }
    if (settings.name == Routes.resetPassword) {
      return platformPageRoute(const ResetPasswordScreen());
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
        title: args['title'],
      ));
    }

    if (settings.name == Routes.checkoutScreen) {
      return platformPageRoute(const CheckOutScreen());
    }
    if (settings.name == Routes.createNewAddressScreen) {
      return platformPageRoute(const CreateNewAddressScreen());
    }
    if (settings.name == Routes.updateAddressScreen) {
      final args = settings.arguments as Map<String, dynamic>;
      return platformPageRoute(UpdateAddressScreen(
        addressModel: args['addressModel'] as AddressModel,
      ));
    }

    if (settings.name == Routes.addressScreen) {
      return platformPageRoute(const AddressScreen());
    }
    if (settings.name == Routes.updateProfileScreen) {
      return platformPageRoute(const UpdatePorfileScreen());
    }
    if (settings.name == Routes.chnagePasswordScreen) {
      return platformPageRoute(const ChnagePasswordScreen());
    }
    if (settings.name == Routes.myOrdersScreen) {
      return platformPageRoute(const MyOrdersScreen());
    }
    if (settings.name == Routes.shippingMethodsScreen) {
      return platformPageRoute(const ShippingMethodsScreen());
    }
    if (settings.name == Routes.privacyPolicyScreen) {
      return platformPageRoute(const PrivacyScreen());
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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/resources/theme/theme.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/route_generator.dart';
import 'package:shop/core/routing/routes.dart';

import 'base_injection.dart' as injection;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // for the responsive service to work (I don't know the reason until now)
  await Future.delayed(const Duration(milliseconds: 300));

  // initialize Firebase
  // await Firebase.initializeApp();

  await injection.init();
  runApp(const MyApp());
}

// Thanks for using our template. You are using the free version of the template.
// 🔗 Full template: https://theflutterway.gumroad.com/l/fluttershop

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Shop Demo',
        theme: lightTheme,
        // Dark theme is inclided in the Full template

        navigatorKey: NavigationService.navigationKey,
        onGenerateRoute: RouteGenerator.generateBaseRoute,
        initialRoute: Routes.init,
        builder: (context, child) => Directionality(
          textDirection: TextDirection.ltr,
          child: child ?? const SizedBox(),
        ),
      ),
    );
  }
}

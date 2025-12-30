import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/controller/language_controller.dart';
import 'package:shop/core/resources/theme/theme.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/route_generator.dart';
import 'package:shop/core/routing/routes.dart';

import 'base_injection.dart' as injection;
import 'generated/l10n.dart';

/* 
  vendora@b2b.com
  87654321  
 */


//#114166 blue
//#858789 grey
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // for the responsive service to work (I don't know the reason until now)
  await Future.delayed(const Duration(milliseconds: 300));

  // initialize Firebase
  // await Firebase.initializeApp();

  await injection.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final languageState = ref.watch(languageControllerProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prestie',
      theme: lightTheme,
      // Dark theme is inclided in the Full template

      navigatorKey: NavigationService.navigationKey,
      onGenerateRoute: RouteGenerator.generateBaseRoute,
      initialRoute: Routes.init,
      locale: languageState.locale,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback: (locale, supportedLocales) {
        // Use the language controller's locale if available
        final controllerLocale = languageState.locale;
        if (supportedLocales
            .any((l) => l.languageCode == controllerLocale.languageCode)) {
          return controllerLocale;
        }

        // Fallback to device locale if supported
        if (locale != null) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale.languageCode) {
              return supportedLocale;
            }
          }
        }
        return supportedLocales.first;
      },
      builder: (context, child) {
        final locale = languageState.locale;
        return Directionality(
          textDirection: locale.languageCode == 'ar'
              ? TextDirection.rtl
              : TextDirection.ltr,
          child: child ?? const SizedBox(),
        );
      },
    );
  }
}

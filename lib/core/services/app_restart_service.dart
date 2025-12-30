import 'package:flutter/material.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';

/// Service to handle app restart functionality
class AppRestartService {
  static final AppRestartService _instance = AppRestartService._internal();
  factory AppRestartService() => _instance;
  AppRestartService._internal();

  /// Restarts the app by navigating to the splash screen
  /// and clearing the navigation stack
  static Future<void> restartApp() async {
    try {
      // Get the current navigation context
      final BuildContext? context =
          NavigationService.navigationKey.currentContext;

      if (context != null) {
        // Navigate to splash screen and clear all previous routes
        Navigator.of(context).pushNamedAndRemoveUntil(
          Routes.init,
          (route) => false,
        );
      } else {
        // Fallback: Use NavigationService if context is not available
        NavigationService.pushNamedAndRemoveUntil(Routes.init);
      }
    } catch (e) {
      debugPrint('Error restarting app: $e');
    }
  }

  /// Restarts the app with a delay to allow for any ongoing operations
  static Future<void> restartAppWithDelay(
      {Duration delay = const Duration(milliseconds: 300)}) async {
    await Future.delayed(delay);
    await restartApp();
  }

  /// Shows a dialog asking user to restart the app for language changes
  static Future<void> showRestartDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Language Changed'),
          content: const Text(
              'The app will restart to apply the new language settings.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                restartAppWithDelay();
              },
            ),
          ],
        );
      },
    );
  }

  /// Shows a simple loading dialog during restart
  static Future<void> showRestartLoadingDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const AlertDialog(
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 20),
              Text('Restarting app...'),
            ],
          ),
        );
      },
    );
  }
}

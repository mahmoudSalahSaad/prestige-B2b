import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/base_injection.dart';
import 'package:shop/core/services/local/cache_consumer.dart';
import 'package:shop/features/discover/presentaion/controllers/discover_controller.dart';
import 'package:shop/features/home/presentaion/controllers/get_categories_controller.dart';
import 'package:shop/features/home/presentaion/controllers/get_products_controller.dart';
import 'package:shop/features/home/presentaion/controllers/home_controller.dart';

// Language state
class LanguageState {
  final Locale locale;
  final bool isLoading;

  const LanguageState({
    required this.locale,
    this.isLoading = false,
  });

  LanguageState copyWith({
    Locale? locale,
    bool? isLoading,
  }) {
    return LanguageState(
      locale: locale ?? this.locale,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}

// Language controller
class LanguageController extends StateNotifier<LanguageState> {
  late final Ref _ref;

  LanguageController(this._ref)
      : super(const LanguageState(locale: Locale('ar'))) {
    _loadSavedLanguage();
  }

  static const String _languageKey = 'selected_language';

  Future<void> _loadSavedLanguage() async {
    try {
      final appPrefs = getIt<AppPrefs>();
      final savedLanguage = appPrefs.get(_languageKey);

      if (savedLanguage != null && savedLanguage is String) {
        state = state.copyWith(locale: Locale(savedLanguage));
      }
    } catch (e) {
      // If there's an error loading, keep default English
      debugPrint('Error loading saved language: $e');
    }
  }

  /// Refreshes home and categories data after language change
  Future<void> _refreshLanguageRelatedData() async {
    try {
      // Invalidate and refresh home data
      _ref.invalidate(homeControllerProvider);

      // Invalidate and refresh categories data
      _ref.invalidate(getCategoriesControllerProvider);

      // Invalidate and refresh products data
      _ref.invalidate(getProductsControllerProvider);

      // Invalidate and refresh discover data (full categories)
      _ref.invalidate(discoverControllerProvider);

      debugPrint('Language-related data refreshed successfully');
    } catch (e) {
      debugPrint('Error refreshing language-related data: $e');
    }
  }

  Future<void> changeLanguage(Locale locale) async {
    try {
      state = state.copyWith(isLoading: true);

      final appPrefs = getIt<AppPrefs>();
      await appPrefs.save(_languageKey, locale.languageCode);

      state = state.copyWith(
        locale: locale,
        isLoading: false,
      );

      // Refresh home and categories data with new language
      await _refreshLanguageRelatedData();
    } catch (e) {
      state = state.copyWith(isLoading: false);
      debugPrint('Error saving language: $e');
    }
  }

  /// Change language and refresh data immediately
  Future<void> changeLanguageWithDialog(
      Locale locale, BuildContext context) async {
    try {
      state = state.copyWith(isLoading: true);

      final appPrefs = getIt<AppPrefs>();
      await appPrefs.save(_languageKey, locale.languageCode);

      state = state.copyWith(
        locale: locale,
        isLoading: false,
      );

      // Refresh home and categories data with new language
      await _refreshLanguageRelatedData();

      // Show success message instead of restart dialog
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Language changed successfully'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    } catch (e) {
      state = state.copyWith(isLoading: false);
      debugPrint('Error saving language: $e');

      // Show error message
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to change language'),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }

  // Get current language name for display
  String getCurrentLanguageName() {
    switch (state.locale.languageCode) {
      case 'en':
        return 'English';
      case 'ar':
        return 'العربية';
      default:
        return 'English';
    }
  }
}

// Provider
final languageControllerProvider =
    StateNotifierProvider<LanguageController, LanguageState>(
  (ref) => LanguageController(ref),
);

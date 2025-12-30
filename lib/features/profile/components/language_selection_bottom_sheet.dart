import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/controller/language_controller.dart';
import 'package:shop/generated/l10n.dart';

class LanguageSelectionBottomSheet extends ConsumerWidget {
  const LanguageSelectionBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final languageState = ref.watch(languageControllerProvider);
    final languageController = ref.read(languageControllerProvider.notifier);

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Handle bar
          Container(
            margin: const EdgeInsets.only(top: 8),
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          // Header
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Row(
              children: [
                Text(
                  S.of(context).settings,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
          ),

          const Divider(height: 1),

          // Language options
          _LanguageOption(
            title: 'English',
            subtitle: 'English',
            flagAsset: 'assets/flags/us.svg',
            locale: const Locale('en'),
            isSelected: languageState.locale.languageCode == 'en',
            onTap: () async {
              Navigator.pop(context);
              await languageController.changeLanguageWithDialog(
                  const Locale('en'), context);
            },
          ),

          _LanguageOption(
            title: 'العربية',
            subtitle: 'Arabic',
            flagAsset: 'assets/flags/sa.svg',
            locale: const Locale('ar'),
            isSelected: languageState.locale.languageCode == 'ar',
            onTap: () async {
              Navigator.pop(context);
              await languageController.changeLanguageWithDialog(
                  const Locale('ar'), context);
            },
          ),

          const SizedBox(height: defaultPadding),
        ],
      ),
    );
  }

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const LanguageSelectionBottomSheet(),
    );
  }
}

class _LanguageOption extends StatelessWidget {
  final String title;
  final String subtitle;
  final String flagAsset;
  final Locale locale;
  final bool isSelected;
  final VoidCallback onTap;

  const _LanguageOption({
    required this.title,
    required this.subtitle,
    required this.flagAsset,
    required this.locale,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.grey[100],
        child: _buildFlag(),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: Colors.grey[600],
            ),
      ),
      trailing: isSelected
          ? Icon(
              Icons.check_circle,
              color: Theme.of(context).primaryColor,
            )
          : const Icon(
              Icons.radio_button_unchecked,
              color: Colors.grey,
            ),
    );
  }

  Widget _buildFlag() {
    // Try to load the SVG flag, fallback to text if not found
    try {
      return SvgPicture.asset(
        flagAsset,
        width: 24,
        height: 24,
      );
    } catch (e) {
      // Fallback to text if flag image not found
      return Container(
        width: 24,
        height: 24,
        alignment: Alignment.center,
        child: Text(
          locale.languageCode.toUpperCase(),
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }
  }
}

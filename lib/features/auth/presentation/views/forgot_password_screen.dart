import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/features/auth/presentation/controller/forgot_password_controller.dart';
import 'package:shop/generated/l10n.dart';

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();

  // Define the new color scheme
  static const Color primaryBlue = Color(0xFF114166);
  static const Color secondaryGrey = Color(0xFF858789);

  // Jordan phone number validation
  String? validateJordanPhone(String? value) {
    if (value == null || value.isEmpty) {
      return '${S.of(context).phone_number} ${S.of(context).required}';
    }

    

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlue,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF114166), // Primary blue
              Color(0xFF0D2F4A), // Darker blue
              Color(0xFF1A4A6B), // Medium blue
            ],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Status bar area
              Container(
                height: MediaQuery.of(context).padding.top,
                color: Colors.transparent,
              ),
              // Header with title and arrow
              Image.asset('assets/logo/presige-logo-neg.png',
                  height: 150, width: 150),
              const SizedBox(height: 20),
              // Main content area
              Center(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title and description
                        Text(
                          S.of(context).reset_password,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(
                                color: primaryBlue,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          S.of(context).lost_password_description,
                          style: const TextStyle(color: secondaryGrey),
                        ),
                        const SizedBox(height: 24),
                        // Form
                        Form(
                          key: formKey,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[50],
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.grey[200]!),
                            ),
                            child: TextFormField(
                              controller: phoneController,
                              validator: validateJordanPhone,
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.phone,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                              ),
                              decoration: InputDecoration(
                                hintText: S.of(context).phone_number,
                                hintStyle: const TextStyle(
                                  color: secondaryGrey,
                                  fontSize: 16,
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        'assets/flags/world-flag.png',
                                        height: 20,
                                        width: 20,
                                        fit: BoxFit.contain,
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        '+962',
                                        style: TextStyle(
                                          color: secondaryGrey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        // Send button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: ref
                                    .watch(forgotPasswordControllerProvider)
                                    .isLoading
                                ? null
                                : () {
                                    if (formKey.currentState!.validate()) {
                                      ref
                                          .read(forgotPasswordControllerProvider
                                              .notifier)
                                          .forgotPassword(phoneController.text);
                                    }
                                  },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryBlue,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 0,
                            ),
                            child: ref
                                    .watch(forgotPasswordControllerProvider)
                                    .isLoading
                                ? const SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2,
                                    ),
                                  )
                                : Text(
                                    S.of(context).send,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                          ),
                        ),
                        const SizedBox(height: 24),
                        // Return to login link
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              S.of(context).return_to_login,
                              style: const TextStyle(
                                color: secondaryGrey,
                                fontSize: 14,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                NavigationService.goBack();
                              },
                              child: Text(
                                S.of(context).login,
                                style: const TextStyle(
                                  color: primaryBlue,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          ),
          leading: const SizedBox.shrink(),
        ),
      ),
    );
  }
}

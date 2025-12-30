import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/password_text_feild_widget.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';
import 'package:shop/features/auth/presentation/controller/forgot_password_controller.dart';
import 'package:shop/generated/l10n.dart';

class ResetPasswordScreen extends ConsumerStatefulWidget {
  const ResetPasswordScreen({
    super.key,
    this.phoneNumber,
  });

  final String? phoneNumber;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends ConsumerState<ResetPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  final passwordTextEditingController = TextEditingController();
  final confirmPasswordTextEditingController = TextEditingController();
  String? phoneNumber;

  // Define the new color scheme
  static const Color primaryBlue = Color(0xFF114166);
  static const Color secondaryGrey = Color(0xFF858789);

  @override
  void initState() {
    super.initState();
    phoneNumber = widget.phoneNumber;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (phoneNumber == null) {
      final args = ModalRoute.of(context)?.settings.arguments;
      if (args != null && args is Map<String, dynamic>) {
        setState(() {
          phoneNumber = args['phone']?.toString().trim();
        });
      }
    }
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
                          S.of(context).lost_password_title,
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
                          '${S.of(context).lost_password_description}\n\nPhone: ${phoneNumber ?? 'Not provided'}',
                          style: const TextStyle(color: secondaryGrey),
                        ),
                        const SizedBox(height: 24),
                        // Form
                        Form(
                          key: formKey,
                          child: Column(
                            children: [
                              PasswordTextEditingController(
                                controller: passwordTextEditingController,
                                validate: passwordValidator.call,
                                hintText: S.of(context).password,
                                onChanged: (str) {
                                  passwordTextEditingController.text = str;
                                  setState(() {});
                                },
                              ),
                              const SizedBox(height: 16),
                              PasswordTextEditingController(
                                controller:
                                    confirmPasswordTextEditingController,
                                validate: (str) {
                                  if (str ==
                                      passwordTextEditingController.text) {
                                    return null;
                                  } else {
                                    return S.of(context).password_no_match;
                                  }
                                },
                                hintText: S.of(context).confirm_password,
                                onChanged: (str) {
                                  confirmPasswordTextEditingController.text =
                                      str;
                                  setState(() {});
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24),
                        // Submit button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                if (phoneNumber == null ||
                                    phoneNumber!.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                          'Phone number not provided. Please try again.'),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                  return;
                                }

                                ref
                                    .read(forgotPasswordControllerProvider
                                        .notifier)
                                    .resetPassword(AuthEntity(
                                        email: phoneNumber!,
                                        phone: phoneNumber!,
                                        password:
                                            passwordTextEditingController.text,
                                        confirmPassword:
                                            confirmPasswordTextEditingController
                                                .text,
                                        token: ''));
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
                            child: Text(
                              S.of(context).submit,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
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

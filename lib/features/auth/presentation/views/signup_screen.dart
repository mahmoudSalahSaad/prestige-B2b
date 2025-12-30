import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';
import 'package:shop/features/auth/presentation/controller/register_controller.dart';
import 'package:shop/features/auth/presentation/views/components/sign_up_form.dart';
import 'package:shop/generated/l10n.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController branchController = TextEditingController();

  // Define the new color scheme
  static const Color primaryBlue = Color(0xFF114166);
  static const Color secondaryGrey = Color(0xFF858789);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlue,
      resizeToAvoidBottomInset: true,
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
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
                Container(
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
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Form content
                        SignUpForm(
                          formKey: _formKey,
                                emailController: emailController,
                                nameController: nameController,
                                phoneController: phoneController,
                                passwordController: passwordController,
                          confirmPasswordController: confirmPasswordController,
                                branchController: branchController,
                              ),
                        const SizedBox(height: 24),
                        // Register button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: ref.watch(registerControllerProvider).isLoading
                                ? null
                                : _handleRegister,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryBlue,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 0,
                            ),
                            child: ref.watch(registerControllerProvider).isLoading
                                ? const SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2,
                                    ),
                                  )
                                : Text(
                                    S.of(context).register,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Login link
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              S.of(context).do_you_have_account,
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
                                S.of(context).log_in_small,
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
                const SizedBox(height: 20),
              ],
            ),
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


  void _handleRegister() {
    // IMPORTANT: Read password DIRECTLY from controller right before use
    // Don't save form state first as it might trigger validation that clears fields
    
    // Read all values directly from controllers at the moment of registration
    final String email = emailController.text.trim();
    final String password = passwordController.text; // Don't trim password
    final String name = nameController.text.trim();
    final String phone = phoneController.text.trim();
    final String confirmPassword = confirmPasswordController.text; // Don't trim password
    final String branch = branchController.text.trim();
    
    // Debug: Print values directly from controllers
    print("=== REGISTER DEBUG ===");
    print("Email: $email");
    print("Password length: ${password.length}");
    print("Password value: ${password.isNotEmpty ? '***${password.length} chars' : 'EMPTY'}");
    print("Name: $name");
    print("Phone: $phone");
    print("Confirm Password length: ${confirmPassword.length}");
    print("Branch: $branch");
    print("Password controller value: ${passwordController.text.length} chars");
    
    // Manual validation instead of form validation to avoid clearing fields
    bool isStep1Valid = name.isNotEmpty && 
                        phone.isNotEmpty && 
                        password.isNotEmpty && 
                        confirmPassword.isNotEmpty;
    
    // Validate password strength manually
    if (isStep1Valid && password.length < 6) {
      isStep1Valid = false;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Password must be at least 6 characters long'),
          backgroundColor: Colors.red,
        ),
      );
    }
    
    bool isStep2Valid =  branch.isNotEmpty;
    
    // Re-read password to ensure it wasn't cleared
    final String passwordAfterValidation = passwordController.text;
    print("Password after validation: ${passwordAfterValidation.length} chars");

    // Additional validation: Ensure passwords match
    bool passwordsMatch = password.isNotEmpty &&
        confirmPassword.isNotEmpty &&
        password == confirmPassword;

    print("=== VALIDATION CHECK ===");
    print("Step1 valid: $isStep1Valid");
    print("Step2 valid: $isStep2Valid");
    print("Passwords match: $passwordsMatch");

    if (isStep1Valid && isStep2Valid && passwordsMatch) {
      // Use the password value (use the one after validation if it changed)
      final String finalPassword = passwordAfterValidation.isNotEmpty ? passwordAfterValidation : password;
      final String finalConfirmPassword = confirmPasswordController.text.isNotEmpty 
          ? confirmPasswordController.text 
          : confirmPassword;
      
      print("=== SENDING REGISTRATION ===");
      print("Final password length: ${finalPassword.length}");
      print("Final confirm password length: ${finalConfirmPassword.length}");
      
      ref.read(registerControllerProvider.notifier).register(
            parameters: AuthEntity(
              commercialRegister: "",
              email: email,
              password: finalPassword,
              name: name,
              phone: phone,
              confirmPassword: finalConfirmPassword,
              address: "",
              attachment: "",
              cityId: 0,
              countryId: 0,
              groupName: branch,
            ),
          );
    } else {
      // Show appropriate error message
      if (!passwordsMatch) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(S.of(context).password_no_match),
            backgroundColor: Colors.red,
          ),
        );
      } else if (!isStep1Valid || !isStep2Valid) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Please fill all required fields'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}

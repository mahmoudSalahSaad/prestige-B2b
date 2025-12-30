import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/components/custom_text_field_widget.dart';
import 'package:shop/features/auth/presentation/controller/forgot_password_controller.dart';
import 'package:shop/features/auth/presentation/controller/registration_otp_controller.dart';
import 'package:shop/generated/l10n.dart';

class OtpScreen extends ConsumerStatefulWidget {
  const OtpScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<OtpScreen> {
  final formKey = GlobalKey<FormState>();
  final otp = TextEditingController();
  String? phoneNumber;
  bool isRegistration = false;

  // Define the new color scheme
  static const Color primaryBlue = Color(0xFF114166);
  static const Color secondaryGrey = Color(0xFF858789);

  @override
  void initState() {
    super.initState();
    // Get arguments passed from previous screen
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final args =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
      print("OtpScreen: Received arguments: $args");
      if (args != null) {
        setState(() {
          phoneNumber = args['phone'];
          isRegistration = args['isRegistration'] ?? false;
        });
        print("OtpScreen: Phone number set to: $phoneNumber");
        print("OtpScreen: Is registration: $isRegistration");
      } else {
        print("OtpScreen: No arguments received");
      }
    });
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
                          isRegistration
                              ? S.of(context).verify_account
                              : S.of(context).lost_password_title,
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
                          isRegistration
                              ? '${S.of(context).verify_account_description}\n\nPhone: ${phoneNumber ?? 'Not provided'}'
                              : '${S.of(context).lost_password_description}\n\nPhone: ${phoneNumber ?? 'Not provided'}',
                          style: const TextStyle(color: secondaryGrey),
                        ),
                        const SizedBox(height: 24),
                        // Form
                        Form(
                          key: formKey,
                          child: CustomTextFieldWidget(
                            controller: otp,
                            validate: (str) {
                              if (str != null) {
                                if (str.isNotEmpty) {
                                  return null;
                                } else {
                                  return S.of(context).required;
                                }
                              } else {
                                return S.of(context).required;
                              }
                            },
                            hintText: S.of(context).enter_otp,
                            prefixIcon: "assets/icons/Lock.svg",
                          ),
                        ),
                        const SizedBox(height: 24),
                        // Send button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                if (phoneNumber == null ||
                                    phoneNumber!.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(S
                                          .of(context)
                                          .phone_number_not_provided),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                  return;
                                }

                                if (isRegistration) {
                                  // Handle registration OTP verification
                                  ref
                                      .read(registrationOtpControllerProvider
                                          .notifier)
                                      .verifyRegistrationOtp(
                                        phone: phoneNumber!,
                                        otp: otp.text,
                                      );
                                } else {
                                  // Handle forgot password OTP verification
                                  ref
                                      .read(forgotPasswordControllerProvider
                                          .notifier)
                                      .verify(otp.text, phoneNumber);
                                }
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
                              S.of(context).send,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        // Resend option (commented out in original)
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: [
                        //     const Text("60 sec left to try again"),
                        //     TextButton(
                        //       onPressed: () {
                        //         //// Navigator.pushNamed(context, logInScreenRoute);
                        //       },
                        //       child: const Text("Resend"),
                        //     )
                        //   ],
                        // ),
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

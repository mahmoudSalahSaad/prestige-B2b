import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/password_text_feild_widget.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';
import 'package:shop/features/auth/presentation/controller/forgot_password_controller.dart';

class ResetPasswordScreen extends ConsumerStatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends ConsumerState<ResetPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  final passwordTextEditingController = TextEditingController();
  final confirmPasswordTextEditingController = TextEditingController();
  @override

  /// Builds the ResetPasswordScreen widget.
  ///
  /// This widget displays a screen where users can reset their password.
  /// It includes an illustration, a form to enter the OTP (One Time Password),
  /// and buttons to submit the form or resend the OTP. The screen is wrapped
  /// in a [Scaffold] and uses a [SafeArea] to ensure content is displayed
  /// within the visible area of the device screen.

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/Illustration/supermarket-illustration-09.png",
                height: MediaQuery.of(context).size.height * 0.20,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lost your password?",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    const Text(
                      "Please enter your valid data in order to restore your account.",
                    ),
                    const SizedBox(height: defaultPadding),
                    Form(
                        key: formKey,
                        child: Column(
                          children: [
                            PasswordTextEditingController(
                              controller: passwordTextEditingController,
                              validate: passwordValidator.call,
                              hintText: "Password",
                              onChanged: (str) {
                                passwordTextEditingController.text = str;
                                setState(() {});
                              },
                            ),
                            const SizedBox(height: defaultPadding),
                            PasswordTextEditingController(
                              controller: confirmPasswordTextEditingController,
                              validate: (str) {
                                if (str == passwordTextEditingController.text) {
                                  return null;
                                } else {
                                  return "Password does not match";
                                }
                              },
                              hintText: "Confirm Password",
                              onChanged: (str) {
                                confirmPasswordTextEditingController.text = str;
                                setState(() {});
                              },
                            ),
                          ],
                        )),
                    const SizedBox(height: defaultPadding),
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          ref
                              .read(forgotPasswordControllerProvider.notifier)
                              .resetPassword(AuthEntity(
                                  email: "",
                                  password: passwordTextEditingController.text,
                                  confirmPassword:
                                      confirmPasswordTextEditingController
                                          .text));
                        }
                      },
                      child: const Text("Submit"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

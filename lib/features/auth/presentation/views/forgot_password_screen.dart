import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/custom_text_field_widget.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/features/auth/presentation/controller/forgot_password_controller.dart';

class ForgotPasswordScreen extends ConsumerStatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends ConsumerState<ForgotPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  @override
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
                        child: CustomTextFieldWidget(
                          controller: emailController,
                          validate: emaildValidator.call,
                          hintText: "Email address",
                          prefixIcon: "assets/icons/Message.svg",
                        )),
                    const SizedBox(height: defaultPadding),
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          ref
                              .read(forgotPasswordControllerProvider.notifier)
                              .forgotPassword(emailController.text);
                        }
                      },
                      child: const Text("Send"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("return to"),
                        TextButton(
                          onPressed: () {
                            //// Navigator.pushNamed(context, logInScreenRoute);
                            NavigationService.goBack();
                          },
                          child: const Text("Login"),
                        )
                      ],
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

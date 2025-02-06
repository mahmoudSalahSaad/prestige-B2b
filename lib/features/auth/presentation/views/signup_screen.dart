import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/features/auth/doman/entity/auth_entity.dart';
import 'package:shop/features/auth/presentation/controller/register_controller.dart';
import 'package:shop/features/auth/presentation/views/components/sign_up_form.dart';
import 'package:shop/features/settings/presentation/controllers/cities_controller.dart';
import 'package:shop/features/settings/presentation/controllers/countries_controller.dart';

import '../../../../constants.dart';
import '../../../../core/resources/values_manager.dart';

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
  final TextEditingController postalCodeController = TextEditingController();
  final TextEditingController counteryController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  File? file;
  bool pickerValidation = false;

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
                      "Let’s get started!",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    const Text(
                      "Please enter your valid data in order to create an account.",
                    ),
                    InkWell(
                      onTap: () async {
                        FilePickerResult? result =
                            await FilePicker.platform.pickFiles();

                        if (result != null) {
                          file = File(result.files.single.path!);
                          setState(() {
                            pickerValidation = false;
                          });
                        } else {
                          // User canceled the picker
                          setState(() {
                            pickerValidation = true;
                          });
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.all(defaultPadding * 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: file != null
                              ? SvgPicture.asset(
                                  "assets/icons/pdf-svgrepo-com.svg",
                                  height: 54,
                                )
                              : const Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.file_upload_outlined,
                                      color: primaryColor,
                                      size: 54,
                                    ),
                                    Text("Upload your attachment here"),
                                  ],
                                ),
                        ),
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    SignUpForm(
                        formKey: _formKey,
                        emailController: emailController,
                        nameController: nameController,
                        phoneController: phoneController,
                        passwordController: passwordController,
                        confirmPasswordController: confirmPasswordController,
                        postalCodeController: postalCodeController,
                        cityController: cityController,
                        counteryController: counteryController,
                        addressController: addressController),
                    const SizedBox(height: defaultPadding),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: ref.watch(registerControllerProvider).isLoading
                              ? () {}
                              : () {
                                  if (_formKey.currentState!.validate()) {
                                    ref
                                        .read(
                                            registerControllerProvider.notifier)
                                        .register(
                                            parameters: AuthEntity(
                                                email: emailController.text,
                                                password:
                                                    passwordController.text,
                                                name: nameController.text,
                                                phone: phoneController.text,
                                                confirmPassword:
                                                    confirmPasswordController
                                                        .text,
                                                address: addressController.text,
                                                attachment: file?.path ?? "",
                                                cityId: ref
                                                    .watch(
                                                        citiesControllerProvider)
                                                    .requireValue
                                                    .selectedCity!
                                                    .id,
                                                countryId: ref
                                                    .watch(
                                                        countriesControllerProvider)
                                                    .requireValue
                                                    .selectedCountry!
                                                    .id,
                                                postalCode:
                                                    postalCodeController.text));
                                  } else {}
                                },
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child:
                                ref.watch(registerControllerProvider).isLoading
                                    ? const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 10,
                                          width: 10,
                                          child: CircularProgressIndicator(
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: deviceWidth * 0.3),
                                        child: Text(
                                          "Register",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium
                                              ?.copyWith(color: Colors.white),
                                        )),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Do you have an account?"),
                        TextButton(
                          onPressed: () {
                            //// Navigator.pushNamed(context, logInScreenRoute);
                            NavigationService.goBack();
                          },
                          child: const Text("Log in"),
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

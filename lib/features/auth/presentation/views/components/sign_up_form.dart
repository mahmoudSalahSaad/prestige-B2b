import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/core/components/custom_text_field_widget.dart';
import 'package:shop/core/components/password_text_feild_widget.dart';
import 'package:shop/core/resources/values_manager.dart';
import 'package:shop/features/settings/data/models/city_model.dart';
import 'package:shop/features/settings/presentation/controllers/cities_controller.dart';
import 'package:shop/features/settings/presentation/controllers/countries_controller.dart';

import '../../../../../constants.dart';

class SignUpForm extends ConsumerWidget {
  const SignUpForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.nameController,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.phoneController,
    required this.postalCodeController,
    required this.counteryController,
    required this.cityController,
    required this.addressController,
    required this.vatController,
    required this.companyController,
    required this.branchController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController nameController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final TextEditingController phoneController;
  final TextEditingController postalCodeController;
  final TextEditingController counteryController;
  final TextEditingController cityController;
  final TextEditingController addressController;
  final TextEditingController vatController;
  final TextEditingController companyController;
  final TextEditingController branchController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFieldWidget(
            controller: companyController,
            hintText: "Company Name",
            validate: (str) {
              if (str != null) {
                if (str.isNotEmpty) {
                  return null;
                } else {
                  return "required";
                }
              } else {
                return "required";
              }
            },
          ),
          const SizedBox(height: defaultPadding),
          CustomTextFieldWidget(
            controller: branchController,
            hintText: "Group (Wholesale, Merchant, Retails, Van Sales ...)",
            validate: (str) {
              if (str != null) {
                if (str.isNotEmpty) {
                  return null;
                } else {
                  return "required";
                }
              } else {
                return "required";
              }
            },
          ),
          const SizedBox(height: defaultPadding),
          CustomTextFieldWidget(
            controller: nameController,
            validate: (str) {
              if (str != null) {
                if (str.isNotEmpty) {
                  return null;
                } else {
                  return "required";
                }
              } else {
                return "required";
              }
            },
          ),
          const SizedBox(height: defaultPadding),
          CustomTextFieldWidget(
            controller: emailController,
            hintText: "Email address",
            validate: emaildValidator.call,
            prefixIcon: "assets/icons/Message.svg",
          ),
          const SizedBox(height: defaultPadding),
          PasswordTextEditingController(
            controller: passwordController,
            validate: passwordValidator.call,
            hintText: "Password",
            onChanged: (str) {
              passwordController.text = str;
            },
          ),
          const SizedBox(height: defaultPadding),
          PasswordTextEditingController(
            controller: confirmPasswordController,
            validate: (str) {
              if (str != null) {
                print(passwordController.text);
                if (str.isNotEmpty) {
                  if (str == passwordController.text) {
                    return null;
                  } else {
                    return "Password doesn't match";
                  }
                } else {
                  return "required";
                }
              } else {
                return "required";
              }
            },
            hintText: "Confirm Password",
            onChanged: (str) {
              confirmPasswordController.text = str;
            },
          ),
          const SizedBox(height: defaultPadding),
          CustomTextFieldWidget(
            controller: vatController,
            hintText: "VAT Number",
          ),
          const SizedBox(height: defaultPadding),
          CustomTextFieldWidget(
            controller: phoneController,
            hintText: "Phone Number",
            validate: (str) {
              if (str != null) {
                if (str.isNotEmpty) {
                  return null;
                } else {
                  return "required";
                }
              } else {
                return "required";
              }
            },
            prefixIcon: "assets/icons/Call.svg",
          ),
          const SizedBox(height: defaultPadding),
          CustomTextFieldWidget(
            controller: postalCodeController,
            hintText: "Postal Code",
            validate: (str) {
              if (str != null) {
                if (str.isNotEmpty) {
                  return null;
                } else {
                  return "required";
                }
              } else {
                return "required";
              }
            },
            prefixIcon: "assets/icons/Send.svg",
          ),
          const SizedBox(height: defaultPadding),
          CustomTextFieldWidget(
            controller: counteryController,
            readOnly: true,
            hintText: "Select Country",
            validate: (str) {
              if (str != null) {
                if (str.isNotEmpty) {
                  return null;
                } else {
                  return "required";
                }
              } else {
                return "required";
              }
            },
            onTap: () async {
              await showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return Container(
                      width: deviceWidth,
                      padding: const EdgeInsets.all(16),
                      child: SingleChildScrollView(
                        child: Column(
                          children: List.generate(
                              ref
                                      .watch(countriesControllerProvider)
                                      .requireValue
                                      .countries
                                      ?.length ??
                                  0,
                              (index) => Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: CountryItemCard(
                                      country: ref
                                          .read(countriesControllerProvider)
                                          .requireValue
                                          .countries![index],
                                      selectedCountry: ref
                                              .read(countriesControllerProvider)
                                              .requireValue
                                              .selectedCountry ??
                                          CityModel(id: 0),
                                      onTap: () {
                                        ref
                                            .read(countriesControllerProvider
                                                .notifier)
                                            .selectCountry(ref
                                                .read(
                                                    countriesControllerProvider)
                                                .requireValue
                                                .countries![index]);

                                        counteryController.text = ref
                                            .read(countriesControllerProvider)
                                            .requireValue
                                            .countries![index]
                                            .name
                                            .toString();

                                        ref
                                            .read(citiesControllerProvider
                                                .notifier)
                                            .getCities(ref
                                                .read(
                                                    countriesControllerProvider)
                                                .requireValue
                                                .countries![index]
                                                .id!);
                                        Navigator.pop(context);
                                      },
                                    ),
                                  )),
                        ),
                      ),
                    );
                  });
            },
            prefixIcon: "assets/icons/Mylocation.svg",
          ),
          const SizedBox(height: defaultPadding),
          CustomTextFieldWidget(
            controller: cityController,
            onTap: ref.watch(citiesControllerProvider).isLoading
                ? () {}
                : () async {
                    showModalBottomSheet(
                        context: context,
                        builder: (_) {
                          return Container(
                            width: deviceWidth,
                            padding: const EdgeInsets.all(16),
                            child: SingleChildScrollView(
                              child: Column(
                                children: List.generate(
                                    ref
                                            .watch(citiesControllerProvider)
                                            .requireValue
                                            .cities
                                            ?.length ??
                                        0,
                                    (index) => Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: CountryItemCard(
                                            country: ref
                                                .read(citiesControllerProvider)
                                                .requireValue
                                                .cities![index],
                                            selectedCountry: ref
                                                    .read(
                                                        citiesControllerProvider)
                                                    .requireValue
                                                    .selectedCity ??
                                                CityModel(id: 0),
                                            onTap: () {
                                              ref
                                                  .read(citiesControllerProvider
                                                      .notifier)
                                                  .selectCity(ref
                                                      .read(
                                                          citiesControllerProvider)
                                                      .requireValue
                                                      .cities![index]);

                                              cityController.text = ref
                                                  .read(
                                                      citiesControllerProvider)
                                                  .requireValue
                                                  .cities![index]
                                                  .name
                                                  .toString();

                                              Navigator.pop(context);
                                            },
                                          ),
                                        )),
                              ),
                            ),
                          );
                        });
                  },
            hintText: "Select City",
            readOnly: true,
            suffixIcon: ref.watch(citiesControllerProvider).isLoading
                ? const SizedBox(
                    height: 20, width: 20, child: CircularProgressIndicator())
                : null,
            validate: (str) {
              if (str != null) {
                if (str.isNotEmpty) {
                  return null;
                } else {
                  return "required";
                }
              } else {
                return "required";
              }
            },
            prefixIcon: "assets/icons/Mylocation.svg",
          ),
          const SizedBox(height: defaultPadding),
          CustomTextFieldWidget(
            controller: addressController,
            hintText: "Full address",
            maxLines: 6,
            prefixWidget: Padding(
              padding: const EdgeInsets.all(defaultPadding * .75),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Theme.of(context).iconTheme.color?.withOpacity(0.3),
                  ),
                  const SizedBox(
                    height: 120,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CountryItemCard extends StatelessWidget {
  const CountryItemCard({
    super.key,
    required this.country,
    this.onTap,
    required this.selectedCountry,
  });

  final CityModel country;
  final CityModel selectedCountry;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: primaryMaterialColor)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              country.name ?? "Egypt",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Radio(
                value: country.id,
                groupValue: selectedCountry.id,
                onChanged: (val) {
                  onTap;
                })
          ],
        ),
      ),
    );
  }
}

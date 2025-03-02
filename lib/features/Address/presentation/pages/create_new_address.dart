import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/custom_text_field_widget.dart';
import 'package:shop/core/resources/values_manager.dart';
import 'package:shop/features/Address/domain/entities/address_entity.dart';
import 'package:shop/features/Address/presentation/controllers/add_address_controller.dart';
import 'package:shop/features/auth/presentation/views/components/sign_up_form.dart';
import 'package:shop/features/settings/data/models/city_model.dart';
import 'package:shop/features/settings/presentation/controllers/cities_controller.dart';
import 'package:shop/features/settings/presentation/controllers/countries_controller.dart';

class CreateNewAddressScreen extends ConsumerStatefulWidget {
  const CreateNewAddressScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateNewAddressScreenState();
}

class _CreateNewAddressScreenState
    extends ConsumerState<CreateNewAddressScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final lineOneController = TextEditingController();
  final stateController = TextEditingController();
  final postalCodeController = TextEditingController();
  final lineTwoController = TextEditingController();
  final countryIDController = TextEditingController();
  final cityIDController = TextEditingController();
  bool isBillingAddress = false;
  bool isShippingAddress = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create New Address"),
        centerTitle: true,
        forceMaterialTransparency: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          width: deviceWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 240,
                          child: Column(
                            children: [
                              CustomTextFieldWidget(
                                controller: nameController,
                                hintText: "Name",
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
                                prefixIcon: "assets/icons/dot.svg",
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          "assets/Illustration/Illustration-4.png",
                          height: 100,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFieldWidget(
                      controller: lineOneController,
                      hintText: "Line 1",
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
                      maxLines: 1,
                      prefixWidget: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Theme.of(context)
                                  .iconTheme
                                  .color
                                  ?.withOpacity(0.3),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFieldWidget(
                      controller: lineTwoController,
                      hintText: "Line 2(Optional)",
                      maxLines: 1,
                      prefixWidget: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Theme.of(context)
                                  .iconTheme
                                  .color
                                  ?.withOpacity(0.3),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFieldWidget(
                      controller: postalCodeController,
                      hintText: "Postal Code",
                      prefixIcon: "assets/icons/dot.svg",
                      prefixWidget: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Theme.of(context)
                                  .iconTheme
                                  .color
                                  ?.withOpacity(0.3),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFieldWidget(
                      controller: stateController,
                      hintText: "State(Optional)",
                      prefixIcon: "assets/icons/dot.svg",
                      prefixWidget: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Theme.of(context)
                                  .iconTheme
                                  .color
                                  ?.withOpacity(0.3),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFieldWidget(
                      controller: countryIDController,
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
                                                .watch(
                                                    countriesControllerProvider)
                                                .requireValue
                                                .countries
                                                ?.length ??
                                            0,
                                        (index) => Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 10),
                                              child: CountryItemCard(
                                                country: ref
                                                    .read(
                                                        countriesControllerProvider)
                                                    .requireValue
                                                    .countries![index],
                                                selectedCountry: ref
                                                        .read(
                                                            countriesControllerProvider)
                                                        .requireValue
                                                        .selectedCountry ??
                                                    CityModel(id: 0),
                                                onTap: () {
                                                  ref
                                                      .read(
                                                          countriesControllerProvider
                                                              .notifier)
                                                      .selectCountry(ref
                                                          .read(
                                                              countriesControllerProvider)
                                                          .requireValue
                                                          .countries![index]);

                                                  countryIDController.text = ref
                                                      .read(
                                                          countriesControllerProvider)
                                                      .requireValue
                                                      .countries![index]
                                                      .name
                                                      .toString();

                                                  ref
                                                      .read(
                                                          citiesControllerProvider
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
                    const SizedBox(height: 10),
                    CustomTextFieldWidget(
                      controller: cityIDController,
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
                                                      .watch(
                                                          citiesControllerProvider)
                                                      .requireValue
                                                      .cities
                                                      ?.length ??
                                                  0,
                                              (index) => Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 10),
                                                    child: CountryItemCard(
                                                      country: ref
                                                          .read(
                                                              citiesControllerProvider)
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
                                                            .read(
                                                                citiesControllerProvider
                                                                    .notifier)
                                                            .selectCity(ref
                                                                .read(
                                                                    citiesControllerProvider)
                                                                .requireValue
                                                                .cities![index]);

                                                        cityIDController.text = ref
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
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator())
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Billing address",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            Checkbox(
                              value: isBillingAddress,
                              checkColor: primaryColor,
                              activeColor: Colors.white,
                              onChanged: (val) {
                                setState(() {
                                  isBillingAddress = val!;
                                });
                              },
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Shipping address",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            Checkbox(
                              value: isShippingAddress,
                              checkColor: primaryColor,
                              activeColor: Colors.white,
                              onChanged: (val) {
                                setState(() {
                                  isShippingAddress = val!;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    if (isBillingAddress == false && isShippingAddress == false)
                      const Row(
                        children: [
                          Icon(
                            Icons.error_outline,
                            color: Colors.red,
                            size: 18,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Please select at least one address option",
                            style: TextStyle(color: Colors.red),
                          )
                        ],
                      ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: ref.watch(addAddressControllerProvider).isLoading
                          ? () {}
                          : () {
                              if (_formKey.currentState!.validate()) {
                                ref
                                    .read(addAddressControllerProvider.notifier)
                                    .addAddress(
                                        parameters: AddressEntity(
                                            name: nameController.text,
                                            cityId: ref
                                                .read(citiesControllerProvider)
                                                .requireValue
                                                .selectedCity!
                                                .id
                                                .toString(),
                                            countryId: ref
                                                .read(
                                                    countriesControllerProvider)
                                                .requireValue
                                                .selectedCountry!
                                                .id
                                                .toString(),
                                            line: lineOneController.text,
                                            line2: lineTwoController.text,
                                            state: stateController.text,
                                            postalCode:
                                                postalCodeController.text,
                                            isBillingAddress: isBillingAddress,
                                            isShippingAddress:
                                                isShippingAddress));
                              }
                            },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: primaryMaterialColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ref.watch(addAddressControllerProvider).isLoading
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
                                    horizontal: deviceWidth * 0.22),
                                child: Text(
                                  "Create new address",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: Colors.white),
                                )),
                      ),
                    )
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

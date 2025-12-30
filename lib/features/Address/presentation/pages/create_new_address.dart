import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/custom_text_field_widget.dart';
import 'package:shop/core/resources/values_manager.dart';
import 'package:shop/features/Address/domain/entities/address_entity.dart';
import 'package:shop/features/Address/presentation/controllers/add_address_controller.dart';
import 'package:shop/features/settings/data/models/city_model.dart';
import 'package:shop/features/settings/presentation/controllers/cities_controller.dart';
import 'package:shop/features/settings/presentation/controllers/countries_controller.dart';

import '../../../../generated/l10n.dart';

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
  bool isShippingAddress = true;
  bool _hasAutoSelectedCountry = false;
  bool _hasInitialized = false;

  void _autoSelectFirstCountry() {
    if (_hasAutoSelectedCountry) return;

    final countriesState = ref.read(countriesControllerProvider);
    countriesState.whenData((state) {
      if (state.countries != null &&
          state.countries!.isNotEmpty &&
          state.selectedCountry == null) {
        final firstCountry = state.countries!.first;
        ref
            .read(countriesControllerProvider.notifier)
            .selectCountry(firstCountry);
        countryIDController.text = firstCountry.name.toString();
        ref.read(citiesControllerProvider.notifier).getCities(firstCountry.id!);
        _hasAutoSelectedCountry = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final countriesState = ref.watch(countriesControllerProvider);

    // Load countries if not already loaded
    countriesState.whenData((state) {
      if (state.countries == null || state.countries!.isEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref.read(countriesControllerProvider.notifier).getCountries();
        });
      }
    });

    // Check for initial auto-selection (only once)
    if (!_hasInitialized) {
      _hasInitialized = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _autoSelectFirstCountry();
      });
    }

    // Auto-select first country when countries are loaded (listener for state changes)
    ref.listen<AsyncValue>(
      countriesControllerProvider,
      (previous, next) {
        _autoSelectFirstCountry();
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).create_new_address),
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
                    Image.asset(
                      "assets/Illustration/Illustration-4.png",
                      height: 300,
                    ),
                    SizedBox(
                      child: Column(
                        children: [
                          CustomTextFieldWidget(
                            controller: nameController,
                            hintText: S.of(context).address_name,
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
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextFieldWidget(
                      controller: lineOneController,
                      hintText: S.of(context).address_line,
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
                      controller: countryIDController,
                      readOnly: true,
                      hintText: S.of(context).country,
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
                                              ((ref
                                                              .watch(
                                                                  citiesControllerProvider)
                                                              .requireValue
                                                              .cities
                                                              ?.length) ??
                                                          0) >
                                                      20
                                                  ? 20
                                                  : (ref
                                                      .watch(
                                                          citiesControllerProvider)
                                                      .requireValue
                                                      .cities!
                                                      .length),
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
                      hintText: S.of(context).city,
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
                                  S.of(context).create_new_address,
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
            Expanded(
              child: Text(
                country.name ?? S.of(context).egypt,
                style: Theme.of(context).textTheme.bodyLarge,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Radio(
                value: country.id,
                groupValue: selectedCountry.id,
                onChanged: (val) {
                  onTap?.call();
                })
          ],
        ),
      ),
    );
  }
}

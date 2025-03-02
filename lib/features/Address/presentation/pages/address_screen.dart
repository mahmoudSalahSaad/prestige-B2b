import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/resources/values_manager.dart';
import 'package:shop/core/routing/navigation_services.dart';
import 'package:shop/core/routing/routes.dart';
import 'package:shop/features/Address/presentation/controllers/address_controller.dart';
import 'package:shop/features/auth/presentation/controller/login_controller.dart';
import 'package:shop/features/check_out/presentation/pages/check_out_screen.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AddressScreen extends ConsumerWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Address"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        shadowColor: Colors.white,
        primary: true,
        forceMaterialTransparency: true,
        // bottom: const PreferredSize(
        //     preferredSize: Size.fromHeight(54),
        //     child: Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        //       child: SearchForm(),
        //     )),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                NavigationService.push(Routes.createNewAddressScreen);
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: primaryMaterialColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ref.watch(loginControllerProvider).isLoading
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
            ),
            const SizedBox(
              height: 16,
            ),
            ref.watch(addressControllerProvider).when(
                data: (data) {
                  return Column(
                    children: List.generate(
                        data.addresses.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: InkWell(
                                onTap: () {
                                  if (data.addresses[index].isBillingAddress ==
                                          true &&
                                      data.addresses[index].isShippingAddress ==
                                          true) {
                                    ref
                                        .read(
                                            addressControllerProvider.notifier)
                                        .selectBillingAddress(
                                            data.addresses[index]);
                                    ref
                                        .read(
                                            addressControllerProvider.notifier)
                                        .selectShippingAddress(
                                            data.addresses[index]);
                                  } else if (data.addresses[index]
                                              .isBillingAddress ==
                                          true &&
                                      data.addresses[index].isShippingAddress ==
                                          false) {
                                    ref
                                        .read(
                                            addressControllerProvider.notifier)
                                        .selectBillingAddress(
                                            data.addresses[index]);
                                  } else {
                                    ref
                                        .read(
                                            addressControllerProvider.notifier)
                                        .selectShippingAddress(
                                            data.addresses[index]);
                                  }
                                },
                                child: LocationCardWidget(
                                  addressModel: data.addresses[index],
                                ),
                              ),
                            )),
                  );
                },
                error: (error, stactTrace) => Text("$error"),
                loading: () => Skeletonizer(
                      enabled: true,
                      child: Column(
                        children: List.generate(
                            4,
                            (index) => const Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: LocationCardWidget(),
                                )),
                      ),
                    ))
          ],
        ),
      ),
    );
  }
}

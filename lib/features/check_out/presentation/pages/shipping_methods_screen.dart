import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop/constants.dart';
import 'package:shop/features/check_out/data/models/shipping_method_model.dart';
import 'package:shop/features/check_out/presentation/controllers/shipping_methods_controller.dart';
import 'package:shop/generated/l10n.dart';

class ShippingMethodsScreen extends ConsumerWidget {
  const ShippingMethodsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).shipping_methods),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(S.of(context).choose_shipping_method,
                style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: defaultPadding),
            ref.watch(shippingMethodsControllerProvider).when(
                data: (data) {
                  return Column(
                    children: data.shippingMethods.isEmpty
                        ? [
                            Image.asset(
                                "assets/Illustration/EmptyState_lightTheme.png"),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(S.of(context).no_shipping_methods)
                          ]
                        : List.generate(
                            data.shippingMethods.length,
                            (index) => ShippingMethodCardWidget(
                                shippingMethodModel:
                                    data.shippingMethods[index])),
                  );
                },
                error: (error, stackTrace) => Text(error.toString()),
                loading: () => Shimmer.fromColors(
                    baseColor: Colors.grey[300]!,
                    highlightColor: Colors.grey[100]!,
                    child: Column(
                      children: List.generate(
                          10,
                          (index) => ShippingMethodCardWidget(
                                  shippingMethodModel: ShippingMethodModel(
                                carrier: "Loading",
                                name: "ssdasd",
                                cost: 100,
                                description: "sdadsddssad",
                              ))),
                    ))),
          ],
        ),
      ),
    );
  }
}

class ShippingMethodCardWidget extends ConsumerWidget {
  const ShippingMethodCardWidget({
    super.key,
    required this.shippingMethodModel,
  });
  final ShippingMethodModel shippingMethodModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        ref
            .read(shippingMethodsControllerProvider.notifier)
            .selectShippingMethods(parameters: shippingMethodModel);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: ref
                        .watch(shippingMethodsControllerProvider)
                        .requireValue
                        .selectedShippingMethod ==
                    shippingMethodModel
                ? primaryColor
                : Colors.grey,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${shippingMethodModel.name}",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: primaryColor),
                ),
                Text("${shippingMethodModel.cost} JOD")
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            shippingMethodModel.description == null
                ? const SizedBox()
                : Text(
                    "${shippingMethodModel.description}",
                    style: Theme.of(context).textTheme.bodySmall,
                  )
          ],
        ),
      ),
    );
  }
}
